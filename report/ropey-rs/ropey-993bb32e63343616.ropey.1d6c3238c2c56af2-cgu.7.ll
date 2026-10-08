Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.7?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder18get_next_leaf_text.exit18.thread82
  ret void

bb.v:                                             ; preds = %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24, %bb.u
  %i.bx = phi i64 [ %i.bq, %bb.u ], [ %i.ai, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.be, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  %.sroa.31.0.ph = phi i64 [ 0, %bb.u ], [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.bf, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ] ; 2 uses
  %.sroa.20.0.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2wCc12Mnjqg_5ropey.exit24 ], [ %i.bg, %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit ]
  store i64 %.sroa.31.0.ph, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.by = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.by, i64 noundef %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.d, i64 1000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  store i64 1, ptr %i.k, align 8
  store i8 0, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4, i64 1007, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !58
  %i.bz = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !58 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.w, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit19, !prof !6

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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !59
  %i.cd = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !59 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, !prof !6

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
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !101, !noalias !102, !noundef !5 ; 3 uses
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
  %.pre62 = load i64, ptr %i.r, align 8, !alias.scope !103, !noalias !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.ah = phi i64 [ %.pre62, %._crit_edge.loopexit ], [ %i.s, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ai = icmp ugt i64 %i.ah, 4                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre64 = load i64, ptr %i.aj, align 8
  %i.ak = select i1 %i.ai, i64 %.pre64, i64 %i.ah ; 3 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.invoke, label %bb.f, !prof !6

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17: ; preds = %.lr.ph, %bb.an
  %.sroa.0.057 = phi i64 [ %i.w, %.lr.ph ], [ %i.il, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.am = load i64, ptr %i.r, align 8, !alias.scope !105, !noalias !106, !noundef !5 ; 2 uses
  %i.an = icmp ugt i64 %i.am, 4                   ; 3 uses
  %.pre = load i64, ptr %i.ae, align 8
  %i.ao = select i1 %i.an, i64 %.pre, i64 %i.am   ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.invoke, label %bb.ag, !prof !6

bb.f:                                             ; preds = %._crit_edge
  %.sink11.i = select i1 %i.ai, ptr %i.aj, ptr %i.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5
  %.sink12.i12 = select i1 %i.ai, ptr %i.ar, ptr %i.aj
  %i.as = add i64 %i.ak, -1
  store i64 %i.as, ptr %.sink11.i, align 8
  %i.at = getelementptr [8 x i8], ptr %.sink12.i12, i64 %i.ak
  %2 = getelementptr i8, ptr %i.at, i64 -8
  %i.au = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.be = load ptr, ptr %i.n, align 8, !alias.scope !110, !nonnull !5, !noundef !5
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !110
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
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 462
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
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
  %i.bn = load i64, ptr %i.m, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not9 = icmp eq i64 %i.bj, %i.bn
  br i1 %.not9, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bp)
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bs = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bt)
          to label %bb.w unwind label %bb.n

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr %i.k, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bv = load i64, ptr %i.bi, align 8, !noundef !5
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !111
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %bb.w
  %i.by = load i64, ptr %i.i, align 8, !noalias !111, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !111
  %.not.i24 = icmp ugt i64 %i.bw, %i.by
  br i1 %.not.i24, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !111
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %bb.ad unwind label %bb.n

bb.y:                                             ; preds = %.noexc25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111
  store i64 %i.bw, ptr %i.g, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc27 unwind label %bb.n

.noexc27:                                         ; preds = %bb.y
  %i.bz = load i64, ptr %i.b, align 8, !noalias !113, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  %.not.i.i.i = icmp ugt i64 %i.bw, %i.bz
  br i1 %.not.i.i.i, label %bb.z, label %_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i

bb.z:                                             ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx)
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.z
  %i.ca = load i64, ptr %i.d, align 8, !noalias !112, !noundef !5
  store i64 %i.ca, ptr %i.f, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112
  store ptr %i.g, ptr %i.e, align 8, !noalias !112
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.cb, align 8, !noalias !112
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !112
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #20
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %.noexc28
  unreachable

_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i: ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bx, i64 noundef %i.bw)
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13chunk_at_byte.exit.i
  %i.cc = load ptr, ptr %i.c, align 8, !noalias !113, !nonnull !5, !noundef !5 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !113, !noundef !5 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !113, !noundef !5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !113, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !111
  %i.cj = sub i64 %i.bw, %i.cg                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ck = icmp ult i64 %i.cj, %i.ce
  br i1 %i.ck, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.noexc30, %bb.aa
  %.sroa.0.0184.i.i = phi i64 [ %i.co, %bb.aa ], [ %i.cj, %.noexc30 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.0.0184.i.i
end_hunk_0
begin_hunk_1_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.fe = icmp ult i64 %i.ev, 48
  br i1 %i.fe, label %._crit_edge197.i.i, label %.lr.ph196.i.i

.lr.ph196.i.i:                                    ; preds = %.lr.ph196.i.i.prol.loopexit, %.lr.ph196.i.i
  %.sroa.012.0.i194.i.i = phi ptr [ %i.fv, %.lr.ph196.i.i ], [ %.sroa.012.0.i194.i.i.unr, %.lr.ph196.i.i.prol.loopexit ] ; 5 uses
  %i.ff = phi <16 x i8> [ %i.fz, %.lr.ph196.i.i ], [ %.unr, %.lr.ph196.i.i.prol.loopexit ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 16
  %i.fh = load <16 x i8>, ptr %.sroa.012.0.i194.i.i, align 16, !noalias !111
  %i.fi = icmp slt <16 x i8> %i.fh, splat (i8 -64)
  %i.fj = zext <16 x i1> %i.fi to <16 x i8>
  %i.fk = add <16 x i8> %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 32
  %i.fm = load <16 x i8>, ptr %i.fg, align 16, !noalias !111
  %i.fn = icmp slt <16 x i8> %i.fm, splat (i8 -64)
  %i.fo = zext <16 x i1> %i.fn to <16 x i8>
  %i.fp = add <16 x i8> %i.fk, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 48
  %i.fr = load <16 x i8>, ptr %i.fl, align 16, !noalias !111
  %i.fs = icmp slt <16 x i8> %i.fr, splat (i8 -64)
  %i.ft = zext <16 x i1> %i.fs to <16 x i8>
  %i.fu = add <16 x i8> %i.fp, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i194.i.i, i64 64 ; 2 uses
  %i.fw = load <16 x i8>, ptr %i.fq, align 16, !noalias !111
  %i.fx = icmp slt <16 x i8> %i.fw, splat (i8 -64)
  %i.fy = zext <16 x i1> %i.fx to <16 x i8>
  %i.fz = add <16 x i8> %i.fu, %i.fy              ; 2 uses
  %i.ga = icmp eq ptr %i.fv, %i.et
  br i1 %i.ga, label %._crit_edge197.i.i, label %.lr.ph196.i.i

._crit_edge197.i.i:                               ; preds = %.lr.ph196.i.i.prol.loopexit, %.lr.ph196.i.i, %._crit_edge192.i.i
  %.lcssa182.i.i = phi <16 x i8> [ zeroinitializer, %._crit_edge192.i.i ], [ %.lcssa121.unr, %.lr.ph196.i.i.prol.loopexit ], [ %i.fz, %.lr.ph196.i.i ]
  %i.gb = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa182.i.i, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x i64> %i.gb, i64 0
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x i64> %i.gb, i64 1
  %i.gc = icmp samesign eq i64 %i.db, 0
  br i1 %i.gc, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i.preheader

.preheader.i50.i.i.preheader:                     ; preds = %._crit_edge197.i.i
  %min.iters.check102 = icmp ult i64 %i.db, 4
  br i1 %min.iters.check102, label %.preheader.i50.i.i.preheader117, label %vector.ph103

vector.ph103:                                     ; preds = %.preheader.i50.i.i.preheader
  %n.vec104 = and i64 %i.db, -4                   ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %vec.phi107 = phi <2 x i64> [ zeroinitializer, %vector.ph103 ], [ %i.gj, %vector.body105 ]
  %vec.phi108 = phi <2 x i64> [ zeroinitializer, %vector.ph103 ], [ %i.gk, %vector.body105 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index106 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %wide.load109 = load <2 x i8>, ptr %i.gd, align 1, !alias.scope !121, !noalias !111
  %wide.load110 = load <2 x i8>, ptr %i.ge, align 1, !alias.scope !121, !noalias !111
  %i.gf = icmp slt <2 x i8> %wide.load109, splat (i8 -64)
  %i.gg = icmp slt <2 x i8> %wide.load110, splat (i8 -64)
  %i.gh = zext <2 x i1> %i.gf to <2 x i64>
  %i.gi = zext <2 x i1> %i.gg to <2 x i64>
  %i.gj = add <2 x i64> %vec.phi107, %i.gh        ; 2 uses
  %i.gk = add <2 x i64> %vec.phi108, %i.gi        ; 2 uses
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.gl, label %middle.block112, label %vector.body105, !llvm.loop !92

middle.block112:                                  ; preds = %vector.body105
  %bin.rdx113 = add <2 x i64> %i.gk, %i.gj
  %i.gm = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx113) ; 2 uses
  %cmp.n114 = icmp eq i64 %i.db, %n.vec104
  br i1 %cmp.n114, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i.preheader117

.preheader.i50.i.i.preheader117:                  ; preds = %.preheader.i50.i.i.preheader, %middle.block112
  %.sroa.04.0.i.i51.i.i.ph = phi i64 [ 0, %.preheader.i50.i.i.preheader ], [ %n.vec104, %middle.block112 ]
  %.sroa.02.0.i.i52.i.i.ph = phi i64 [ 0, %.preheader.i50.i.i.preheader ], [ %i.gm, %middle.block112 ]
  br label %.preheader.i50.i.i

.preheader.i50.i.i:                               ; preds = %.preheader.i50.i.i.preheader117, %.preheader.i50.i.i
  %.sroa.04.0.i.i51.i.i = phi i64 [ %i.gr, %.preheader.i50.i.i ], [ %.sroa.04.0.i.i51.i.i.ph, %.preheader.i50.i.i.preheader117 ] ; 2 uses
  %.sroa.02.0.i.i52.i.i = phi i64 [ %i.gq, %.preheader.i50.i.i ], [ %.sroa.02.0.i.i52.i.i.ph, %.preheader.i50.i.i.preheader117 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.04.0.i.i51.i.i
  %.val.i.i53.i.i = load i8, ptr %i.gn, align 1, !alias.scope !121, !noalias !111, !noundef !5
  %i.go = icmp slt i8 %.val.i.i53.i.i, -64
  %i.gp = zext i1 %i.go to i64
  %i.gq = add i64 %.sroa.02.0.i.i52.i.i, %i.gp    ; 2 uses
  %i.gr = add nuw i64 %.sroa.04.0.i.i51.i.i, 1    ; 2 uses
  %i.gs = icmp eq i64 %i.gr, %i.db
  br i1 %i.gs, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, label %.preheader.i50.i.i, !llvm.loop !93

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i: ; preds = %.preheader.i50.i.i, %middle.block112, %._crit_edge197.i.i
  %.sroa.0.0.i.i54.i.i = phi i64 [ 0, %._crit_edge197.i.i ], [ %i.gm, %middle.block112 ], [ %i.gq, %.preheader.i50.i.i ] ; 2 uses
  %i.gt = icmp ule i64 %.sroa.0.0.i.i54.i.i, %i.db
  call void @llvm.assume(i1 %i.gt)
  %i.gu = add i64 %.sroa.01.0.i.lcssa.i.i, %.sroa.0.8.vec.extract.i.i.i
  %i.gv = add i64 %i.gu, %.sroa.0.0.vec.extract.i.i.i
  %i.gw = add i64 %i.gv, %.sroa.0.0.i.i54.i.i
  %i.gx = sub i64 %..i.i.i, %i.gw
  br label %.loopexit

.lr.ph191.i.i:                                    ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, %.lr.ph191.i.i
  %.sroa.01.0.i190.i.i = phi i64 [ %i.hu, %.lr.ph191.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ]
  %.sroa.06.0.i189.i.i = phi ptr [ %i.gy, %.lr.ph191.i.i ], [ %i.cv, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ] ; 5 uses
  %.sroa.5.0.i188.i.i = phi i64 [ %i.gz, %.lr.ph191.i.i ], [ %i.du, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 64
  %i.gz = add i64 %.sroa.5.0.i188.i.i, -4         ; 2 uses
  %i.ha = load <16 x i8>, ptr %.sroa.06.0.i189.i.i, align 16, !noalias !111
  %i.hb = icmp slt <16 x i8> %i.ha, splat (i8 -64)
  %i.hc = zext <16 x i1> %i.hb to <16 x i8>
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 16
  %i.he = load <16 x i8>, ptr %i.hd, align 16, !noalias !111
  %i.hf = icmp slt <16 x i8> %i.he, splat (i8 -64)
  %i.hg = zext <16 x i1> %i.hf to <16 x i8>
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 32
  %i.hi = load <16 x i8>, ptr %i.hh, align 16, !noalias !111
  %i.hj = icmp slt <16 x i8> %i.hi, splat (i8 -64)
  %i.hk = zext <16 x i1> %i.hj to <16 x i8>
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 48
  %i.hm = load <16 x i8>, ptr %i.hl, align 16, !noalias !111
  %i.hn = icmp slt <16 x i8> %i.hm, splat (i8 -64)
  %i.ho = zext <16 x i1> %i.hn to <16 x i8>
  %i.hp = add nuw nsw <16 x i8> %i.hg, %i.hc
  %i.hq = add nuw nsw <16 x i8> %i.hp, %i.hk
  %i.hr = add nuw nsw <16 x i8> %i.hq, %i.ho
  %i.hs = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hr, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i.i = extractelement <2 x i64> %i.hs, i64 0
  %.sroa.0.8.vec.extract.i7.i.i = extractelement <2 x i64> %i.hs, i64 1
  %i.ht = add i64 %.sroa.0.8.vec.extract.i7.i.i, %.sroa.01.0.i190.i.i
  %i.hu = add i64 %i.ht, %.sroa.0.0.vec.extract.i6.i.i ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i1.i, label %._crit_edge192.i.i, label %.lr.ph191.i.i

bb.ad:                                            ; preds = %bb.x
  %i.hv = load i64, ptr %i.h, align 8, !noalias !111, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !122
  store i64 0, ptr %i.j, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bw, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.hv, ptr %.sroa.9.0..sroa_idx, align 8
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
  %.sroa.04.0.i.i.i.epil = phi i64 [ %i.ia, %.preheader.i.i.epil ], [ %.sroa.04.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i64 [ %i.hz, %.preheader.i.i.epil ], [ %.sroa.02.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i.epil
  %.val.i.i.i.epil = load i8, ptr %i.hw, align 1, !alias.scope !114, !noalias !111, !noundef !5
  %i.hx = icmp sgt i8 %.val.i.i.i.epil, -65
  %i.hy = zext i1 %i.hx to i64
  %i.hz = add i64 %.sroa.02.0.i.i.i.epil, %i.hy   ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !96

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i = phi i64 [ %i.gx, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ], [ 0, %bb.ac ], [ %i.ep, %.loopexit.loopexit.unr-lcssa ], [ %i.hz, %.preheader.i.i.epil ]
  %i.ib = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n)
          to label %bb.ae unwind label %bb.n

bb.ae:                                            ; preds = %.loopexit
  %i.ic = add i64 %i.ci, %.sroa.0.0.i.i.i
  %i.id = sub i64 %i.br, %i.ic
  %i.ie = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ib, i64 noundef %i.id)
          to label %bb.s unwind label %bb.n       ; 0 uses

bb.af:                                            ; preds = %bb.ap, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.a, %bb.b, %bb.af
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.invoke:                                          ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17, %._crit_edge
  %i.ig = phi ptr [ @1, %._crit_edge ], [ @4, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) #19
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17
  %.sink11.i15 = select i1 %i.an, ptr %i.ae, ptr %i.r
  %i.ih = load ptr, ptr %i.af, align 8, !nonnull !5
  %.sink12.i14 = select i1 %i.an, ptr %i.ih, ptr %i.ae
  %i.ii = add i64 %i.ao, -1
  store i64 %i.ii, ptr %.sink11.i15, align 8
  %i.ij = getelementptr [8 x i8], ptr %.sink12.i14, i64 %i.ao
  %3 = getelementptr i8, ptr %i.ij, i64 -8
  %i.ik = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 4 uses
  store ptr %i.ik, ptr %i.q, align 8
  %i.il = add i64 %.sroa.0.057, -1                ; 3 uses
  %i.im = invoke noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.ai unwind label %.loopexit51

bb.ah:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.in = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.im)
          to label %bb.aj unwind label %.loopexit51 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i8, ptr %i.in, align 8, !range !4, !noundef !5
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.ak, label %bb.al, !prof !7

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.iq)
          to label %bb.am unwind label %.loopexit51

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %bb.g unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  store ptr %i.ik, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.ir, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.an unwind label %bb.ah

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not = icmp eq i64 %i.il, 0
  br i1 %.not, label %._crit_edge.loopexit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17

.loopexit51:                                      ; preds = %bb.ag, %bb.ai, %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit51
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit51 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.is = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !123
  %i.it = icmp eq i64 %i.is, 1
  br i1 %i.it, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder16append_leaf_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1024 x i8], align 8              ; 8 uses
  %i.e = alloca [1024 x i8], align 8              ; 8 uses
  %i.f = alloca [1024 x i8], align 8              ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [968 x i8], align 8               ; 4 uses
  %.sroa.412 = alloca [975 x i8], align 1         ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.49 = alloca [975 x i8], align 1          ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [968 x i8], align 8               ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.4 = alloca [975 x i8], align 1           ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [968 x i8], align 8               ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !179, !noalias !180, !noundef !5 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %.pre = load i64, ptr %i.z, align 8
  %i.aa = select i1 %i.y, i64 %.pre, i64 %i.x     ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.a, label %bb.b, !prof !6

.body42:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit
  br i1 %.sroa.019.4, label %.body42.thread124, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread124

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  %.sink11.i = select i1 %i.y, ptr %i.z, ptr %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5
  %.sink12.i = select i1 %i.y, ptr %i.ae, ptr %i.z
  %i.af = add i64 %i.aa, -1
  store i64 %i.af, ptr %.sink11.i, align 8
  %i.ag = getelementptr [8 x i8], ptr %.sink12.i, i64 %i.aa
  %2 = getelementptr i8, ptr %i.ag, i64 -8
  %i.ah = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 5 uses
  store ptr %i.ah, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !4, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ah, ptr %i.c, align 8, !noalias !181
  %i.al = load i64, ptr %i.w, align 8, !alias.scope !182, !noalias !183, !noundef !5 ; 3 uses
  %i.am = icmp ugt i64 %i.al, 4
  br i1 %i.am, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !182, !noalias !183, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.z, align 8, !alias.scope !181
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i

bb.f:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !184
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %.body42.thread124

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %.body42.thread124 unwind label %bb.j

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i: ; preds = %bb.d, %bb.e
  %i.as = phi i64 [ %.pre.i, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ao, %bb.e ], [ %i.z, %bb.d ]
  %.sink11.i.i = phi ptr [ %i.z, %bb.e ], [ %i.w, %bb.d ]
  %.sink.i.i = phi i64 [ %i.al, %bb.e ], [ 4, %bb.d ]
  %i.at = icmp eq i64 %i.as, %.sink.i.i
  br i1 %i.at, label %bb.h, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit, !prof !6

bb.h:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !181, !nonnull !5, !noundef !5
  %.pre6.i = load i64, ptr %i.z, align 8, !alias.scope !181
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.ax = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ai)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread

bb.m:                                             ; preds = %bb.k
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 960
  store i8 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bb = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bc)
          to label %bb.v unwind label %bb.ak

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !185
  %i.bd = load i64, ptr %i.w, align 8, !alias.scope !186, !noalias !187, !noundef !5 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 4
  br i1 %i.be, label %bb.p, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !186, !noalias !187, !nonnull !5, !noundef !5
  %.pre.i52 = load i64, ptr %i.z, align 8, !alias.scope !185
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44

bb.q:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !188
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.r, label %.body42.thread

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %.body42.thread unwind label %bb.u

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44: ; preds = %bb.o, %bb.p
  %i.bk = phi i64 [ %.pre.i52, %bb.p ], [ %i.bd, %bb.o ] ; 2 uses
  %.sink12.i.i45 = phi ptr [ %i.bg, %bb.p ], [ %i.z, %bb.o ]
  %.sink11.i.i46 = phi ptr [ %i.z, %bb.p ], [ %i.w, %bb.o ]
  %.sink.i.i47 = phi i64 [ %i.bd, %bb.p ], [ 4, %bb.o ]
  %i.bl = icmp eq i64 %i.bk, %.sink.i.i47
  br i1 %i.bl, label %bb.s, label %bb.am, !prof !6

bb.s:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !185, !nonnull !5, !noundef !5
  %.pre6.i51 = load i64, ptr %i.z, align 8, !alias.scope !185
  br label %bb.am

bb.u:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.v:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.bp, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.br)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %1, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.t, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !189
  %i.bv = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !189 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.z, label %bb.ac, !prof !6

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.f) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bv, ptr noundef nonnull align 8 dereferenceable(1024) %i.f, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
end_hunk_1
begin_hunk_2_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new:bb.a

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
  store i64 1, ptr %i.d, align 8, !alias.scope !213
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
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.e = cmpxchg ptr %i.d, i64 1, i64 0 acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = tail call noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k) ; 3 uses
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !218
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
  %i.p = load i64, ptr %i.b, align 8, !range !219, !noundef !5 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %0, %2
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %0, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !226, !noundef !5 ; 2 uses
  %i.f = icmp slt i8 %i.e, -64
  br i1 %i.f, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !226
  unreachable

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit:    ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !226, !noundef !5
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
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ], [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.129, %.split ] ; 2 uses
  %.sroa.04.130 = add nuw nsw i64 %0, 1           ; 4 uses
  %i.n = icmp eq i64 %.sroa.04.130, %2
  br i1 %i.n, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

.lr.ph:                                           ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge
  %.sroa.0.129 = phi i64 [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ] ; 5 uses
  %.sroa.0.128 = phi i64 [ %.sroa.0.129, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.o = icmp ult i64 %.sroa.0.129, %2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %1, i64 %.sroa.0.128 ; 2 uses
  %3 = getelementptr i8, ptr %i.p, i64 -1
  %i.q = load i8, ptr %3, align 1, !alias.scope !227, !noundef !5 ; 2 uses
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, label %.split

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.129, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !227
  unreachable

.split:                                           ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 -2
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !227, !noundef !5
  %i.u = icmp ne i8 %i.t, 13
  %i.v = icmp ne i8 %i.q, 10
  %i.w = or i1 %i.v, %i.u
  br i1 %i.w, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge: ; preds = %.split, %bb.e
  %.sroa.0.1 = add nsw i64 %.sroa.0.129, -1       ; 4 uses
  %i.x = icmp eq i64 %.sroa.0.1, 0
  %i.y = icmp eq i64 %.sroa.0.1, %2
  %or.cond.i12 = or i1 %i.x, %i.y
  br i1 %or.cond.i12, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

.lr.ph34:                                         ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge
  %.sroa.04.133 = phi i64 [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ] ; 4 uses
  %.sroa.04.1.in32 = phi i64 [ %.sroa.04.133, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.z = icmp ult i64 %.sroa.04.133, %2
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph34
  %4 = getelementptr i8, ptr %1, i64 %.sroa.04.1.in32 ; 2 uses
  %i.aa = getelementptr i8, ptr %4, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !228, !noundef !5 ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, label %.split23

bb.h:                                             ; preds = %.lr.ph34
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %.sroa.04.130)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !228
  unreachable

.split23:                                         ; preds = %bb.g
  %i.ad = load i8, ptr %4, align 1, !alias.scope !228, !noundef !5
  %i.ae = icmp ne i8 %i.ad, 13
  %i.af = icmp ne i8 %i.ab, 10
  %i.ag = or i1 %i.af, %i.ae
  br i1 %i.ag, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge: ; preds = %.split23, %bb.g
  %.sroa.04.1 = add nuw nsw i64 %.sroa.04.133, 1  ; 3 uses
  %i.ah = icmp eq i64 %.sroa.04.1, %2
  br i1 %i.ah, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread: ; preds = %.split23, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader
  %.sroa.04.1.lcssa = phi i64 [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ], [ %.sroa.04.133, %.split23 ], [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ]
  %.not = icmp eq i64 %.sroa.0.1.lcssa, 0
  %spec.select = select i1 %.not, i64 %.sroa.04.1.lcssa, i64 %.sroa.0.1.lcssa
  br label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread: ; preds = %bb.a, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread
  %.sroa.0.3 = phi i64 [ %spec.select, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit ], [ %0, %bb.a ]
  ret i64 %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs2wCc12Mnjqg_5ropey12rope_builderNtB4_11RopeBuilderNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(1000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB8_3ArcppE8make_mutINtB2_5GuardNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(968)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([1000 x i8]) align 8 captures(none) dereferenceable(1000), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef align 8 dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef align 8 dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXso_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB1m_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node12children_mut(ptr noalias nofree noundef align 8 dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr dead_on_unwind noalias nofree noundef writable sret([968 x i8]) align 8 captures(none) dereferenceable(968), ptr noalias nofree noundef align 8 dereferenceable(968), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6insertB1m_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs2wCc12Mnjqg_5ropeyNtB4_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE3newB10_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs1m_NtCsexYYUdYSQU6_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeNtNtB8_5alloc6GlobalE8into_arcB10_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMsk_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE17clone_from_ref_inBM_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17get_chunk_at_byte(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1008), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8>, <16 x i8>) #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
