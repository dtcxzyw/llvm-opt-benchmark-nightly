Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.5?download=true
inline.NumInlined: 138
inline.NumDeleted: 52
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope13shrink_to_fit:bb.a
  %i.cn = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.co = icmp ult i64 %i.ci, 1152921504606846977
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ck
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !51
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1B_.exit29

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1B_.exit29 unwind label %.thread49.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1B_.exit29: ; preds = %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %thread-pre-split

bb.ap:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ct = load ptr, ptr %0, align 8, !alias.scope !67, !nonnull !8, !noundef !8
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !67
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit32

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit32 unwind label %.thread36

.thread36:                                        ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ap, ptr %0, align 8
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit32: ; preds = %bb.ap, %bb.aq
  store ptr %i.ap, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1v_.exit unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit32
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.ar
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.ar ], [ %.pn.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEEB1v_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit32
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.thread39:                                        ; preds = %.thread49.loopexit, %.thread49.loopexit.split-lp, %bb.g, %bb.h, %bb.ah, %bb.ag, %bb.o, %.thread
  %.pn35 = phi { ptr, i32 } [ %i.ak, %.thread ], [ %i.u, %bb.g ], [ %i.af, %bb.o ], [ %i.bv, %bb.ah ], [ %i.bv, %bb.ag ], [ %i.u, %bb.h ], [ %lpad.loopexit, %.thread49.loopexit ], [ %lpad.loopexit.split-lp, %.thread49.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.i) #16
          to label %bb.b unwind label %bb.at

bb.at:                                            ; preds = %.thread39, %bb.b
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope15insert_internal(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 8 uses
  %i.b = alloca [1000 x i8], align 8              ; 4 uses
  %i.c = alloca [1024 x i8], align 8              ; 8 uses
  %i.d = alloca [1000 x i8], align 8              ; 4 uses
  %i.e = alloca [1008 x i8], align 8              ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [968 x i8], align 8               ; 7 uses
  %.sroa.410 = alloca [1007 x i8], align 1        ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.04 = alloca [32 x i8], align 8           ; 2 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [1008 x i8], align 8              ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [968 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [1007 x i8], align 1          ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %2, ptr %i.x, align 8, !captures !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %3, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.w, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.aa = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.y, ptr %i.r, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.x, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.w, ptr %i.ae, align 8
  call void @_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB3_4Node18edit_chunk_at_charNCNvMNtB7_4ropeNtB1a_4Rope15insert_internal0EB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ac, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !8 ; 4 uses
  %.not = icmp eq ptr %i.ah, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ah, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit, %bb.a
  %i.ai = load i8, ptr %i.w, align 1, !range !4, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.t, label %bb.ap

bb.d:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.d, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !69
  %i.an = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !69 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.f, label %bb.i, !prof !25

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.c) #16
          to label %.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.an, ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  store ptr %i.an, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %4 = inttoptr i64 %.sroa.0.0.copyload to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %4, ptr %i.ar, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.o)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.ah, ptr %i.as, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.at, ptr noundef nonnull align 8 dereferenceable(968) %i.p, i64 968, i1 false)
  store i8 1, ptr %i.m, align 8
  %i.au = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0)
          to label %bb.m unwind label %bb.p       ; 4 uses

bb.l:                                             ; preds = %bb.n, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.au, ptr noundef nonnull align 8 dereferenceable(1008) %i.m, i64 1008, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53

bb.m:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.au, align 8, !range !4, !alias.scope !72, !noundef !8
  %i.ax = icmp eq i8 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.ay)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.au, ptr noundef nonnull align 8 dereferenceable(1008) %i.m, i64 1008, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.c

bb.p:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_(ptr noalias nofree noundef align 8 dereferenceable(1008) %i.m) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53 unwind label %bb.q

bb.q:                                             ; preds = %bb.ar, %bb.an, %bb.am, %bb.s, %bb.r, %bb.al, %bb.p
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.r:                                             ; preds = %bb.j, %bb.i
  %.sroa.016.2 = phi i1 [ false, %bb.j ], [ true, %bb.i ]
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit: ; preds = %bb.r
  br i1 %.sroa.016.2, label %.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51: ; preds = %bb.ah, %bb.al, %.thread72, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49, %bb.u
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49 ], [ %.pn31.pn.pn75, %.thread72 ], [ %i.bi, %bb.u ], [ %.pn31.pn.pn75, %bb.an ], [ %i.by, %bb.ah ], [ %i.cc, %bb.al ] ; 3 uses
  %i.bc = load ptr, ptr %i.ag, align 8, !noundef !8 ; 2 uses
  %i.bd = icmp ne ptr %i.bc, null
  %or.cond = and i1 %.not, %i.bd
  br i1 %or.cond, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53

.thread:                                          ; preds = %bb.g, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit
  %.pn.pn.pn56 = phi { ptr, i32 } [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ %i.ap, %bb.g ], [ %i.ak, %bb.d ] ; 2 uses
  %i.be = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !75
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53

bb.s:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53 unwind label %bb.q

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bg = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bh)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bj = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr %i.y, align 8, !noundef !8
  %i.bl = add i64 %i.bk, -1
  invoke void @_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB3_4Node18edit_chunk_at_charNCNvMNtB7_4ropeNtB1a_4Rope15insert_internals_0EB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.bj, i64 noundef %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not30 = icmp eq ptr %.sroa.45.0.copyload, null
  br i1 %.not30, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.45.0.copyload, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.aa:                                            ; preds = %bb.y
  %.sroa.410.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.410.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.b, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.bp, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.410, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !80
  %i.bq = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !80 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ab, label %bb.ae, !prof !25

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc43 unwind label %bb.ac

.noexc43:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #16
          to label %.thread72 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bq, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410)
  %.sroa.07.0.copyload = load i64, ptr %0, align 8
  store ptr %i.bq, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  store i8 0, ptr %.sroa.524.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %5 = inttoptr i64 %.sroa.07.0.copyload to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %5, ptr %i.bu, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.45.0.copyload, ptr %i.bv, align 8
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(968) %i.bw, ptr noundef nonnull align 8 dereferenceable(968) %i.h, i64 968, i1 false)
  store i8 1, ptr %i.e, align 8
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0)
          to label %bb.ai unwind label %bb.al     ; 4 uses

bb.ah:                                            ; preds = %bb.aj, %bb.ak
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.bx, ptr noundef nonnull align 8 dereferenceable(1008) %i.e, i64 1008, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51

bb.ai:                                            ; preds = %bb.ag
  %i.bz = load i8, ptr %i.bx, align 8, !range !4, !alias.scope !83, !noundef !8
  %i.ca = icmp eq i8 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  br i1 %i.ca, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecNtNtNtNtCs2wCc12Mnjqg_5ropey4tree9node_text5inner12BackingArrayENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1000) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit47 unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit47 unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit47: ; preds = %bb.aj, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.bx, ptr noundef nonnull align 8 dereferenceable(1008) %i.e, i64 1008, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_(ptr noalias nofree noundef align 8 dereferenceable(1008) %i.e) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51 unwind label %bb.q

bb.am:                                            ; preds = %bb.af, %bb.ae
  %.sroa.013.2 = phi i1 [ false, %bb.af ], [ true, %bb.ae ]
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49: ; preds = %bb.am
  br i1 %.sroa.013.2, label %.thread72, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51

.thread72:                                        ; preds = %bb.ac, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49
  %.pn31.pn.pn75 = phi { ptr, i32 } [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit49 ], [ %i.bs, %bb.ac ], [ %i.bn, %bb.z ] ; 2 uses
  %i.ce = atomicrmw sub ptr %.sroa.45.0.copyload, i64 1 release, align 8, !noalias !86
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51

bb.an:                                            ; preds = %.thread72
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51 unwind label %bb.q

bb.ao:                                            ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEBH_.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.c, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53: ; preds = %bb.l, %bb.p, %.thread, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit, %bb.aq, %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51
  %.pn31.pn.pn.pn71 = phi { ptr, i32 } [ %.pn31.pn.pn.pn, %bb.aq ], [ %.pn31.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51 ], [ %.pn31.pn.pn.pn, %bb.ar ], [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ %.pn.pn.pn56, %.thread ], [ %.pn.pn.pn56, %bb.s ], [ %i.av, %bb.l ], [ %i.az, %bb.p ]
  resume { ptr, i32 } %.pn31.pn.pn.pn71

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit51
  %i.cg = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !91
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit53 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope16assert_integrity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_integrity(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope17assert_invariants(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 11 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node14assert_balance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.i) ; 0 uses
  tail call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16assert_node_size(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.i, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.i), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96
  %i.k = load i64, ptr %i.d, align 8, !noalias !96, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !96, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noalias !96, !noundef !8
  %i.p = add i64 %i.o, 1
  call void @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks22new_with_range_at_byte(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.m, i64 noundef 0, i64 noundef %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.f ] ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !4, !alias.scope !99, !noalias !96, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9next_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = invoke { ptr, i64 } @_RNvMs7_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6Chunks9prev_impl(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #16
          to label %common.resume.i unwind label %bb.k

_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i64 } [ %i.t, %bb.c ], [ %i.u, %bb.d ]
  %i.w = extractvalue { ptr, i64 } %.pn.i.i.i, 0
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.x = add i64 %.sroa.0.0.i.i, 1
  br label %bb.b

bb.g:                                             ; preds = %_RNvXs8_NtCs2wCc12Mnjqg_5ropey4iterNtB5_6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.y = load i64, ptr %i.g, align 8, !range !9, !alias.scope !104, !noalias !96, !noundef !8
  %.not.i.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i.i.i, label %_RINvYNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BD_5count0EB7_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume.i:                                  ; preds = %bb.af, %bb.aa, %bb.v, %bb.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.z, %bb.i ], [ %lpad.phi.i, %bb.v ], [ %lpad.thr_comm.i, %bb.af ], [ %i.av, %bb.aa ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_.exit.i.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
end_hunk_0
begin_hunk_1_@_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope6append:bb.a
  %i.cm = zext <16 x i1> %i.cl to <16 x i8>
  %i.cn = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.cm, <16 x i8> zeroinitializer)
  %.neg117 = add i64 %.sroa.020.2.i153.i.i, 16
  %i.co = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.cn)
  %i.cp = sub i64 %.neg117, %i.co                 ; 3 uses
  %.not52.i.i.i = icmp ult i64 %i.cp, %i.be
  br i1 %.not52.i.i.i, label %bb.q, label %._crit_edge158.i.i

bb.q:                                             ; preds = %.lr.ph157.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i155.i.i, i64 16 ; 2 uses
  %i.cr = add i64 %.sroa.013.2.i154.i.i, 16       ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cs, label %._crit_edge158.i.i, label %.lr.ph157.i.i

._crit_edge158.i.i:                               ; preds = %bb.q, %.lr.ph157.i.i, %bb.p
  %.sroa.020.2.i.lcssa.i.i = phi i64 [ %.sroa.020.1.i.lcssa.i.i, %bb.p ], [ %.sroa.020.2.i153.i.i, %.lr.ph157.i.i ], [ %i.cp, %bb.q ]
  %.sroa.013.2.i.lcssa.i.i = phi i64 [ %.sroa.013.1.i.lcssa.i.i, %bb.p ], [ %.sroa.013.2.i154.i.i, %.lr.ph157.i.i ], [ %i.cr, %bb.q ] ; 5 uses
  %i.ct = icmp ugt i64 %.sroa.013.2.i.lcssa.i.i, %i.bb
  br i1 %i.ct, label %.invoke, label %bb.r, !prof !25

bb.r:                                             ; preds = %._crit_edge158.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.cv = icmp samesign eq i64 %.sroa.013.2.i.lcssa.i.i, %i.bb
  br i1 %i.cv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph168.preheader.i.i

.lr.ph168.preheader.i.i:                          ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.013.2.i.lcssa.i.i
  br label %.lr.ph168.i.i

.lr.ph168.i.i:                                    ; preds = %bb.s, %.lr.ph168.preheader.i.i
  %.sroa.036.0.i166.i.i = phi ptr [ %i.dc, %bb.s ], [ %i.cw, %.lr.ph168.preheader.i.i ] ; 2 uses
  %.sroa.013.3.i165.i.i = phi i64 [ %i.dd, %bb.s ], [ %.sroa.013.2.i.lcssa.i.i, %.lr.ph168.preheader.i.i ] ; 2 uses
  %.sroa.020.3.i164.i.i = phi i64 [ %i.da, %bb.s ], [ %.sroa.020.2.i.lcssa.i.i, %.lr.ph168.preheader.i.i ]
  %i.cx = load i8, ptr %.sroa.036.0.i166.i.i, align 1, !alias.scope !146, !noundef !8
  %i.cy = icmp sgt i8 %i.cx, -65
  %i.cz = zext i1 %i.cy to i64
  %i.da = add i64 %.sroa.020.3.i164.i.i, %i.cz    ; 2 uses
  %i.db = icmp ugt i64 %i.da, %i.be
  br i1 %i.db, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph168.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.0.i166.i.i, i64 1 ; 2 uses
  %i.dd = add i64 %.sroa.013.3.i165.i.i, 1
  %i.de = icmp eq ptr %i.dc, %i.cu
  br i1 %i.de, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph168.i.i

.lr.ph149.i.i:                                    ; preds = %._crit_edge.i.i, %.lr.ph149.i.i
  %.sroa.013.1.i147.i.i = phi i64 [ %i.ec, %.lr.ph149.i.i ], [ %i.bi, %._crit_edge.i.i ]
  %.sroa.020.1.i146.i.i = phi i64 [ %i.eb, %.lr.ph149.i.i ], [ %.sroa.020.0.i.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.030.0.i145.i.i = phi ptr [ %i.df, %.lr.ph149.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 5 uses
  %.sroa.5.0.i144.i.i = phi i64 [ %i.dg, %.lr.ph149.i.i ], [ %i.cb, %._crit_edge.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 64
  %i.dg = add i64 %.sroa.5.0.i144.i.i, -4         ; 2 uses
  %i.dh = load <16 x i8>, ptr %.sroa.030.0.i145.i.i, align 16
  %i.di = icmp slt <16 x i8> %i.dh, splat (i8 -64)
  %i.dj = zext <16 x i1> %i.di to <16 x i8>
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 16
  %i.dl = load <16 x i8>, ptr %i.dk, align 16
  %i.dm = icmp slt <16 x i8> %i.dl, splat (i8 -64)
  %i.dn = zext <16 x i1> %i.dm to <16 x i8>
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 32
  %i.dp = load <16 x i8>, ptr %i.do, align 16
  %i.dq = icmp slt <16 x i8> %i.dp, splat (i8 -64)
  %i.dr = zext <16 x i1> %i.dq to <16 x i8>
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i145.i.i, i64 48
  %i.dt = load <16 x i8>, ptr %i.ds, align 16
  %i.du = icmp slt <16 x i8> %i.dt, splat (i8 -64)
  %i.dv = zext <16 x i1> %i.du to <16 x i8>
  %i.dw = add nuw nsw <16 x i8> %i.dn, %i.dj
  %i.dx = add nuw nsw <16 x i8> %i.dw, %i.dr
  %i.dy = add nuw nsw <16 x i8> %i.dx, %i.dv
  %i.dz = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.dy, <16 x i8> zeroinitializer)
  %.neg = add i64 %.sroa.020.1.i146.i.i, 64
  %i.ea = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.dz)
  %i.eb = sub i64 %.neg, %i.ea                    ; 2 uses
  %i.ec = add i64 %.sroa.013.1.i147.i.i, 64       ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not51.i.i.i, label %._crit_edge150.i.i, label %.lr.ph149.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i169, i64 1 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.84.0.i.i168, 1
  %i.ef = icmp eq ptr %i.ed, %i.bp
  br i1 %i.ef, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.t
  %.sroa.07.0.i.i.i170 = phi i64 [ %i.ej, %bb.t ], [ 0, %bb.n ]
  %.sroa.02.0.i.i169 = phi ptr [ %i.ed, %bb.t ], [ %i.az, %bb.n ] ; 2 uses
  %.sroa.84.0.i.i168 = phi i64 [ %i.ee, %bb.t ], [ 0, %bb.n ] ; 2 uses
  %i.eg = load i8, ptr %.sroa.02.0.i.i169, align 1, !noundef !8
  %i.eh = icmp sgt i8 %i.eg, -65
  %i.ei = zext i1 %i.eh to i64
  %i.ej = add i64 %.sroa.07.0.i.i.i170, %i.ei     ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, %i.be
  br i1 %i.ek, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i, label %bb.t

_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i: ; preds = %.lr.ph.i.i, %bb.s, %.lr.ph168.i.i, %bb.t, %.lr.ph, %bb.n, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %i.bb, %bb.r ], [ %i.bb, %bb.n ], [ %i.bb, %bb.s ], [ %.sroa.84.0.i.i168, %.lr.ph ], [ %i.bb, %bb.t ], [ %.sroa.013.3.i165.i.i, %.lr.ph168.i.i ], [ %.sroa.013.0.i141.i.i, %.lr.ph.i.i ] ; 10 uses
  %i.el = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.el, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i
  %.not.i53.i.i = icmp ult i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %.not.i53.i.i, label %bb.v, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.u
  %i.em = icmp eq i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %i.em, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i.i.i
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !150, !noundef !8
  %i.ep = icmp sgt i8 %i.eo, -65
  br i1 %i.ep, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %.split.i.i.i, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.0.0.i.i.i ; 4 uses
  %i.er = icmp samesign eq i64 %.sroa.0.0.i.i.i, %i.bb
  br i1 %i.er, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = load i8, ptr %i.eq, align 1, !noalias !153, !noundef !8 ; 5 uses
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %bb.y, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i: ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.ev = and i8 %i.es, 31
  %i.ew = zext nneg i8 %i.ev to i32               ; 3 uses
  %i.ex = add nuw nsw i64 %.sroa.0.0.i.i.i, 1
  %i.ey = icmp samesign ne i64 %i.ex, %i.bb
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load i8, ptr %i.eu, align 1, !noalias !153, !noundef !8
  %i.fa = shl nuw nsw i32 %i.ew, 6
  %i.fb = and i8 %i.ez, 63
  %i.fc = zext nneg i8 %i.fb to i32               ; 2 uses
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = icmp samesign ugt i8 %i.es, -33
  br i1 %i.fe, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ff = zext nneg i8 %i.es to i32
  br label %bb.ac

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.fh = add nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.fi = icmp samesign ne i64 %i.fh, %i.bb
  call void @llvm.assume(i1 %i.fi)
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !153, !noundef !8
  %i.fk = shl nuw nsw i32 %i.fc, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm            ; 2 uses
  %i.fo = shl nuw nsw i32 %i.ew, 12
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i8 %i.es, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i, label %bb.ac

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  %i.fs = add nuw nsw i64 %.sroa.0.0.i.i.i, 3
  %i.ft = icmp samesign ne i64 %i.fs, %i.bb
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fr, align 1, !noalias !153, !noundef !8
  %i.fv = shl nuw nsw i32 %i.ew, 18
  %i.fw = and i32 %i.fv, 1835008
  %i.fx = shl nuw nsw i32 %i.fn, 6
  %i.fy = and i8 %i.fu, 63
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = or disjoint i32 %i.fx, %i.fz
  %i.gb = or disjoint i32 %i.ga, %i.fw
  br label %bb.ac

bb.z:                                             ; preds = %bb.v, %.split.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc48 unwind label %bb.cd

.noexc48:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.w
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %.noexc49 unwind label %bb.cd

.noexc49:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.aw)
          to label %.noexc50 unwind label %bb.cd

.noexc50:                                         ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !8
  store i64 %i.gd, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %2 = ptrtoint ptr %i.h to i64
  %3 = ptrtoint ptr %i.g to i64
  store i64 %2, ptr %i.f, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.44.0..sroa_idx.i, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %3, ptr %i.ge, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.48.0..sroa_idx.i, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21
          to label %.noexc51 unwind label %bb.cd

.noexc51:                                         ; preds = %.noexc50
  unreachable

bb.ac:                                            ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i, %bb.y, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.fp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit14.i.i.i ], [ %i.gb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit16.i.i.i ], [ %i.fd, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2wCc12Mnjqg_5ropey.exit12.i.i.i ], [ %i.ff, %bb.y ] ; 2 uses
  %i.gf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gg = icmp eq i32 %.sroa.4.0.i.ph.i.i, 10
  %i.gh = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.gi = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = invoke noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5depth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.gj)
          to label %bb.ad unwind label %bb.cd     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = invoke noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5depth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.gm)
          to label %bb.ae unwind label %bb.cd     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.go = icmp ugt i64 %i.gk, %i.gn
  br i1 %i.go, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gp = load ptr, ptr %i.ac, align 8, !nonnull !8, !noundef !8
  store ptr %i.gp, ptr %i.s, align 8
  %i.gq = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.s)
          to label %bb.aj unwind label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.gr = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %0)
          to label %bb.bi unwind label %bb.cd

bb.ah:                                            ; preds = %bb.ap
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit71.sink.split

bb.ai:                                            ; preds = %bb.ak, %bb.af
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.aj:                                            ; preds = %bb.af
  %i.gu = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gv = atomicrmw add ptr %i.gu, i64 1 monotonic, align 8
  %i.gw = icmp slt i64 %i.gv, 0
  br i1 %i.gw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.gy = sub nuw i64 %i.gn, %i.gk
  %i.gz = invoke noundef ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node16prepend_at_depth(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.gq, ptr noundef nonnull %i.gx, i64 noundef %i.gy)
          to label %bb.am unwind label %bb.ai     ; 5 uses

bb.al:                                            ; preds = %bb.aj
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not30 = icmp eq ptr %i.gz, null
  br i1 %.not30, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %bb.am
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.gz, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 960
  store i8 0, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ha)
          to label %bb.aq unwind label %bb.bc

bb.ao:                                            ; preds = %._crit_edge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56
  %i.hb = phi ptr [ %.pre, %._crit_edge ], [ %i.hp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.hc = load ptr, ptr %0, align 8, !alias.scope !165, !nonnull !8, !noundef !8
  %i.hd = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !165
  %i.he = icmp eq i64 %i.hd, 1
  br i1 %i.he, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit53 unwind label %bb.ah

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.gz, ptr %i.hf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.hg = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.hh)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.hi = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.hj = atomicrmw add ptr %i.hi, i64 1 monotonic, align 8
  %i.hk = icmp slt i64 %i.hj, 0
  br i1 %i.hk, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.hl, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.av unwind label %bb.bc

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  %.sroa.410.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.410.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.q, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 1, ptr %i.i, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 1, ptr %i.ho, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.410, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !166
  %i.hp = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !166 ; 5 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.aw, label %bb.az, !prof !25

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc54 unwind label %bb.ax

.noexc54:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.i) #16
          to label %.thread98 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.az:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.hp, ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.ht = load ptr, ptr %i.s, align 8, !alias.scope !175, !nonnull !8, !noundef !8
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !175
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56 unwind label %.thread85

.thread85:                                        ; preds = %bb.ba
  %i.hw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hp, ptr %i.s, align 8
  br label %.thread98

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit56: ; preds = %bb.az, %bb.ba
  store ptr %i.hp, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ao
end_hunk_1
begin_hunk_2_@_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope9split_off:bb.a
_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCs2wCc12Mnjqg_5ropey4rope4RopeNtBL_5ErrorE6unwrapBL_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !215, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
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
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !219
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #17
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
  %i.p = load i64, ptr %i.b, align 8, !range !224, !noundef !8 ; 2 uses
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
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

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs2wCc12Mnjqg_5ropey4ropeNtB4_4Rope13try_split_off(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [1024 x i8], align 8              ; 7 uses
  %i.c = alloca [1024 x i8], align 8              ; 8 uses
  %i.d = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.47 = alloca [1007 x i8], align 1         ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [1024 x i8], align 8              ; 8 uses
  %i.g = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.43 = alloca [1007 x i8], align 1         ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp ugt i64 %2, %i.m
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.e, label %bb.i

bb.d:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, %bb.y, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  %.sroa.43.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.43.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.g, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.r, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.43.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.43, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !225
  %i.s = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !225 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16, !prof !25

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.f) #16
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.r, %bb.p, %bb.l, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.u, %bb.g ], [ %i.af, %bb.l ], [ %i.ap, %bb.r ], [ %i.ap, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit16: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.f, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43)
  %3 = ptrtoint ptr %i.s to i64
  store i64 %3, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.w, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.k)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.z = icmp eq i64 %2, %i.y
  br i1 %i.z, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %1) #20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node5split(ptr noalias nofree noundef nonnull sret([1008 x i8]) align 8 captures(none) dereferenceable(1008) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.aa, i64 noundef %2)
  store i64 1, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ac, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !228
  %i.ad = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !228 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15, !prof !25

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc17 unwind label %bb.l

.noexc17:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.b) #16
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ad, ptr noundef nonnull align 8 dereferenceable(1024) %i.b, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.ad, ptr %i.i, align 8
  %i.ah = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %1)
          to label %bb.t unwind label %bb.r

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  %.sroa.47.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.47.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.d, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %i.aj, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.47, i64 1007, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !231
  %i.ak = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !231 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc19 unwind label %bb.p

.noexc19:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.c) #16
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ak, ptr noundef nonnull align 8 dereferenceable(1024) %i.c, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.ao, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.r:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.aq = load ptr, ptr %i.i, align 8, !alias.scope !243, !nonnull !8, !noundef !8
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !243
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.s, label %common.resume

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #17
          to label %common.resume unwind label %bb.z

bb.t:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEE3newB16_.exit15
  %i.at = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13zip_fix_right(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ah)
          to label %bb.u unwind label %bb.r       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.au = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.i)
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  %i.av = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node12zip_fix_left(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.au)
          to label %bb.w unwind label %bb.r       ; 0 uses

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.x unwind label %bb.r

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMNtCs2wCc12Mnjqg_5ropey4ropeNtB2_4Rope22pull_up_singular_nodes(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.z:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs3_NtCs2wCc12Mnjqg_5ropey4ropeNtB5_4RopeINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5slice9RopeSliceE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [1008 x i8], align 8              ; 5 uses
  %i.c = alloca [1008 x i8], align 8              ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = load ptr, ptr %0, align 8, !noundef !8   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a)
  %i.l = call noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder13build_at_once(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  store ptr %i.t, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.u)
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.w, %bb.h
end_hunk_2
