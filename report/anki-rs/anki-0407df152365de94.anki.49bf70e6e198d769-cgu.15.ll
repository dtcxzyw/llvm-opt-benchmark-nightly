Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZN121_$LT$anki..import_export..package..media..MediaIterEntry$u20$as$u20$core..convert..TryFrom$LT$$RF$std..path..Path$GT$$GT$8try_from17h07794a05f97fd1eaE":bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !453, !noalias !450, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !454
  br label %_ZN4anki5media5files22filename_if_normalized17h859d06d4dc3eee62E.exit.thread

common.resume.sink.split:                         ; preds = %bb.f, %bb.w
  %.sink94.sroa.phi = phi ptr [ %.sink94.sroa.gep, %bb.w ], [ %.sink94.sroa.gep95, %bb.f ]
  %.val2.i.i.sink = phi i64 [ %.val2.i.i, %bb.w ], [ %.val2.i.i.i.i, %bb.f ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %i.s, %bb.f ]
  %.val3.i.i = load ptr, ptr %.sink94.sroa.phi, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.thread, %.body, %bb.w, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %i.s, %bb.f ], [ %eh.lpad-body52, %.thread ], [ %i.am, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4anki5media5files22filename_if_normalized17h859d06d4dc3eee62E.exit.thread: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !450
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !450
  store i64 -9223372036854775808, ptr %i.g, align 8
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.q, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  call void @"_ZN98_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$4from17hc4f0dec27fe0e762E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_ZN3std2fs4File4open17h3fa26101edb8ba28E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.m

bb.j:                                             ; preds = %_ZN4anki5media5files22filename_if_normalized17h859d06d4dc3eee62E.exit.thread, %bb.c, %bb.a
  %i.w = icmp slt i64 %2, 0
  br i1 %i.w, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.j
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", label %bb.k

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !455
  %i.y = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !455 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i, i64 %2) #50, !noalias !456
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.k
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ], [ %i.y, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !457
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.aa, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.237.0..sroa_idx, align 8
  %.sroa.237.sroa.2.0..sroa.237.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i, ptr %.sroa.237.sroa.2.0..sroa.237.0..sroa_idx.sroa_idx, align 8
  %.sroa.237.sroa.3.0..sroa.237.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.237.sroa.3.0..sroa.237.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

bb.m:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.n:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.f, align 8, !range !17, !noundef !6
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.af, ptr %i.b, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !458
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.v unwind label %bb.p, !noalias !459

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #51
          to label %.thread unwind label %bb.q, !noalias !459

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !459
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !range !23, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.ak = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #52 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.t, !prof !24

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 4, i64 noundef 4) #50
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.s
  unreachable

.body:                                            ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = call noundef i32 @close(i32 noundef %i.aj) #52, !noalias !460 ; 0 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #51
          to label %common.resume unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 %i.aj, ptr %i.ak, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @12, ptr %.sroa.528.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", %bb.x, %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.u:                                             ; preds = %.thread, %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.v:                                             ; preds = %bb.o
  %.sroa.080.0.copyload = load i64, ptr %i.a, align 8, !noalias !461
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.481.0.copyload = load i32, ptr %.sroa.481.0..sroa_idx, align 8, !noalias !461
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.346.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.582.0..sroa_idx, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.080.0.copyload, ptr %i.ap, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.481.0.copyload, ptr %.sroa.245.0..sroa_idx, align 8
  %.sroa.346.sroa.2.0..sroa.346.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %.sroa.346.sroa.2.0..sroa.346.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.h, align 8, !alias.scope !462 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

bb.x:                                             ; preds = %bb.v
  %.val.i.i = load i64, ptr %i.h, align 8, !alias.scope !462 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i, 0
  br i1 %i.as, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i = load ptr, ptr %i.at, align 8, !alias.scope !463, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !464
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.thread:                                          ; preds = %bb.p, %bb.m
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %i.ag, %bb.p ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #51
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN122_$LT$nom..bytes..EscapedTransform$LT$F$C$G$C$Error$C$ExtendItem$C$Output$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h0ca7c5df4aa44ed6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !alias.scope !526
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !526
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !526
  %.not278 = icmp eq i64 %3, 0
  br i1 %.not278, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

common.resume:                                    ; preds = %bb.bd, %bb.be, %.thread, %bb.av, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn168, %.thread ], [ %i.fs, %bb.av ], [ %i.gb, %bb.be ], [ %i.gb, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.invoke
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge:                                      ; preds = %bb.ba, %bb.a
  %.sroa.030.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.030.1, %bb.ba ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.030.0.lcssa, %3
  br i1 %i.r, label %bb.c, label %.invoke

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.449.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %.loopexit540, %bb.bf, %bb.bg, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.ba
  %.sroa.030.0277 = phi i64 [ 0, %.lr.ph ], [ %.sroa.030.1, %bb.ba ] ; 9 uses
  %i.u = icmp eq i64 %.sroa.030.0277, 0           ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.030.0277
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !527, !noundef !6
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.g, label %.invoke

.invoke:                                          ; preds = %bb.e, %._crit_edge
  %i.y = phi i64 [ %.sroa.030.0.lcssa, %._crit_edge ], [ %.sroa.030.0277, %bb.e ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #50
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.aa = sub nuw i64 %3, %.sroa.030.0277         ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.030.0277 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17hd383ab7bd4fef8f5E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.aa)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.c, align 8, !range !5, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %i.e, align 8, !range !9, !noundef !6
  switch i64 %i.ae, label %default.unreachable376 [
    i64 0, label %bb.q
    i64 1, label %bb.s
    i64 2, label %bb.r
  ]

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.e, align 8, !nonnull !6, !align !15, !noundef !6
  %i.ag = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.ah = load ptr, ptr %i.g, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.ai = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store ptr %i.ah, ptr %i.b, align 8, !noalias !528
  store i64 %i.ai, ptr %i.i, align 8, !noalias !528
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 1 %i.ah, ptr noundef nonnull readonly %i.aj)
          to label %bb.m unwind label %bb.k, !noalias !529

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #51
          to label %common.resume unwind label %bb.l, !noalias !529

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !529
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !528
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %3
  br label %.loopexit540

bb.o:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %i.ag, %3
  br i1 %i.ao, label %.loopexit540, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = ptrtoint ptr %i.af to i64
  %i.aq = sub i64 %i.ap, %i.k
  br label %bb.ba

.loopexit540:                                     ; preds = %bb.o, %bb.w, %bb.n, %bb.ay
  %.sink538 = phi ptr [ %i.an, %bb.n ], [ %i.fw, %bb.ay ], [ %i.ab, %bb.w ], [ %i.ab, %bb.o ]
  %.sink = phi i64 [ 0, %bb.n ], [ 0, %bb.ay ], [ %i.aa, %bb.w ], [ %i.aa, %bb.o ]
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink538, ptr %i.ar, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.411.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

default.unreachable376:                           ; preds = %bb.i
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.f, align 8, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.at, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %.sroa.443.0..sroa_idx, align 8
  br label %.critedge

bb.r:                                             ; preds = %bb.i
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.au, align 8
  br label %.critedge

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %.invoke464
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.s:                                             ; preds = %bb.i
  %i.av = load i8, ptr %i.ab, align 1, !noalias !530, !noundef !6 ; 5 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.t, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i": ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ay = and i8 %i.av, 31
  %i.az = zext nneg i8 %i.ay to i32               ; 3 uses
  %i.ba = add nuw nsw i64 %.sroa.030.0277, 1
  %i.bb = icmp samesign ne i64 %i.ba, %3
  call void @llvm.assume(i1 %i.bb)
  %i.bc = load i8, ptr %i.ax, align 1, !noalias !530, !noundef !6
  %i.bd = shl nuw nsw i32 %i.az, 6
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32               ; 2 uses
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = icmp samesign ugt i8 %i.av, -33
  br i1 %i.bh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread"

bb.t:                                             ; preds = %bb.s
  %i.bi = zext nneg i8 %i.av to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.bk = add nuw nsw i64 %.sroa.030.0277, 2
  %i.bl = icmp samesign ne i64 %i.bk, %3
  call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !530, !noundef !6
  %i.bn = shl nuw nsw i32 %i.bf, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp            ; 2 uses
  %i.br = shl nuw nsw i32 %i.az, 12
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = icmp samesign ugt i8 %i.av, -17
  br i1 %i.bt, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread"

bb.u:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread177"
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.thread

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bw = add nuw nsw i64 %.sroa.030.0277, 3
  %i.bx = icmp samesign ne i64 %i.bw, %3
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %i.bv, align 1, !noalias !530, !noundef !6
  %i.bz = shl nuw nsw i32 %i.az, 18
  %i.ca = and i32 %i.bz, 1835008
  %i.cb = shl nuw nsw i32 %i.bq, 6
  %i.cc = and i8 %i.by, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.ca            ; 2 uses
  %.not = icmp eq i32 %i.cf, 1114112
  br i1 %.not, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread177", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread", !prof !25

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread177": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit"
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #50
          to label %bb.v unwind label %bb.u

bb.v:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread177"
  unreachable

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i", %bb.t, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit"
  %spec.select.i176 = phi i32 [ %i.cf, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i" ], [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i" ], [ %i.bi, %bb.t ] ; 4 uses
  %i.cg = load i32, ptr %i.l, align 8, !range !20, !noundef !6
  %i.ch = icmp eq i32 %spec.select.i176, %i.cg
  br i1 %i.ch, label %bb.y, label %bb.w

bb.w:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread"
  br i1 %i.u, label %bb.x, label %.loopexit540

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ci, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aa, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@"_ZN122_$LT$nom..bytes..EscapedTransform$LT$F$C$G$C$Error$C$ExtendItem$C$Output$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h0ca7c5df4aa44ed6E":bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 7 uses
  %i.cx = icmp sgt i8 %i.cu, -1
  br i1 %i.cx, label %bb.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i": ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cz = and i8 %i.cu, 31
  %i.da = zext nneg i8 %i.cz to i32               ; 3 uses
  %i.db = icmp samesign ne i64 %i.cv, 1
  call void @llvm.assume(i1 %i.db), !noalias !534
  %i.dc = load i8, ptr %i.cy, align 1, !alias.scope !531, !noalias !532, !noundef !6
  %i.dd = shl nuw nsw i32 %i.da, 6
  %i.de = and i8 %i.dc, 63
  %i.df = zext nneg i8 %i.de to i32               ; 2 uses
  %i.dg = or disjoint i32 %i.dd, %i.df
  %i.dh = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.dh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

bb.af:                                            ; preds = %bb.ae
  %i.di = zext nneg i8 %i.cu to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dk = icmp samesign ne i64 %i.cv, 2
  call void @llvm.assume(i1 %i.dk), !noalias !534
  %i.dl = load i8, ptr %i.dj, align 1, !alias.scope !531, !noalias !532, !noundef !6
  %i.dm = shl nuw nsw i32 %i.df, 6
  %i.dn = and i8 %i.dl, 63
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do            ; 2 uses
  %i.dq = shl nuw nsw i32 %i.da, 12
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.ds, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i"
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.du = icmp samesign ne i64 %i.cv, 3
  call void @llvm.assume(i1 %i.du), !noalias !534
  %i.dv = load i8, ptr %i.dt, align 1, !alias.scope !531, !noalias !532, !noundef !6
  %i.dw = shl nuw nsw i32 %i.da, 18
  %i.dx = and i32 %i.dw, 1835008
  %i.dy = shl nuw nsw i32 %i.dp, 6
  %i.dz = and i8 %i.dv, 63
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dy, %i.ea
  %i.ec = or disjoint i32 %i.eb, %i.dx            ; 2 uses
  %.not.i.i.i97 = icmp eq i32 %i.ec, 1114112
  br i1 %.not.i.i.i97, label %bb.bb, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", %bb.af, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %spec.select.i26.i.i = phi i32 [ %i.ec, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i" ], [ %i.dr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i" ], [ %i.dg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i" ], [ %i.di, %bb.af ] ; 14 uses
  %i.ed = invoke noundef zeroext i1 @"_ZN62_$LT$$RF$str$u20$as$u20$nom..traits..FindToken$LT$char$GT$$GT$10find_token17h4291eeabee2f612eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i32 noundef range(i32 0, 1114112) %spec.select.i26.i.i)
          to label %.noexc98 unwind label %.loopexit

.noexc98:                                         ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i"
  br i1 %i.ed, label %bb.ag, label %bb.bb

bb.ag:                                            ; preds = %.noexc98
  %i.ee = icmp samesign ult i32 %spec.select.i26.i.i, 128 ; 3 uses
  br i1 %i.ee, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = icmp samesign ult i32 %spec.select.i26.i.i, 2048
  br i1 %i.ef, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = icmp samesign ult i32 %spec.select.i26.i.i, 65536
  %..i.i.i = select i1 %i.eg, i64 3, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.012.0.i.i.i = phi i64 [ 2, %bb.ah ], [ %..i.i.i, %bb.ai ], [ 1, %bb.ag ] ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %.sroa.012.0.i.i.i, %i.cv
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.aj
  %i.eh = icmp eq i64 %.sroa.012.0.i.i.i, %i.cv
  br i1 %i.eh, label %bb.al, label %.invoke464

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.012.0.i.i.i
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !535, !noalias !536, !noundef !6
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %bb.al, label %.invoke464

bb.al:                                            ; preds = %bb.ak, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i32 %spec.select.i26.i.i, ptr %i.a, align 8, !noalias !537
  %i.el = load i64, ptr %i.o, align 8, !alias.scope !538, !noalias !539, !noundef !6 ; 2 uses
  %i.em = icmp sgt i64 %i.el, -1
  call void @llvm.assume(i1 %i.em)
  br i1 %i.ee, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = icmp samesign ult i32 %spec.select.i26.i.i, 2048
  br i1 %i.en, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eo = icmp samesign ult i32 %spec.select.i26.i.i, 65536
  %..i.i.i100 = select i1 %i.eo, i64 3, i64 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.am ], [ %..i.i.i100, %bb.an ], [ 1, %bb.al ] ; 2 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %.sroa.0.0.i.i.i)
          to label %.noexc.i unwind label %bb.av, !noalias !539

.noexc.i:                                         ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.p, align 8, !alias.scope !538, !noalias !539, !nonnull !6, !noundef !6
  %i.eq = load i64, ptr %i.o, align 8, !alias.scope !538, !noalias !539, !noundef !6 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq ; 10 uses
  br i1 %i.ee, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc.i
  %i.et = icmp samesign ult i32 %spec.select.i26.i.i, 2048
  %i.eu = trunc i32 %spec.select.i26.i.i to i8
  %i.ev = and i8 %i.eu, 63
  %i.ew = or disjoint i8 %i.ev, -128              ; 3 uses
  %i.ex = lshr i32 %spec.select.i26.i.i, 6
  %i.ey = trunc i32 %i.ex to i8                   ; 2 uses
  %i.ez = and i8 %i.ey, 63
  %i.fa = or disjoint i8 %i.ez, -128              ; 2 uses
  %i.fb = lshr i32 %spec.select.i26.i.i, 12
  %i.fc = trunc i32 %i.fb to i8                   ; 2 uses
  %i.fd = and i8 %i.fc, 63
  %i.fe = or disjoint i8 %i.fd, -128
  %i.ff = lshr i32 %spec.select.i26.i.i, 18
  %i.fg = trunc nuw nsw i32 %i.ff to i8
  %i.fh = or disjoint i8 %i.fg, -16
  br i1 %i.et, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %.noexc.i
  %i.fi = trunc nuw nsw i32 %spec.select.i26.i.i to i8
  store i8 %i.fi, ptr %i.es, align 1, !noalias !539
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  %i.fj = or disjoint i8 %i.ey, -64
  store i8 %i.fj, ptr %i.es, align 1, !noalias !539
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.ew, ptr %i.fk, align 1, !noalias !539
  br label %bb.ax

bb.as:                                            ; preds = %bb.ap
  %i.fl = icmp samesign ult i32 %spec.select.i26.i.i, 65536
  br i1 %i.fl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fm = or disjoint i8 %i.fc, -32
  store i8 %i.fm, ptr %i.es, align 1, !noalias !539
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.fa, ptr %i.fn, align 1, !noalias !539
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.ew, ptr %i.fo, align 1, !noalias !539
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  store i8 %i.fh, ptr %i.es, align 1, !noalias !539
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.fe, ptr %i.fp, align 1, !noalias !539
  %i.fq = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  store i8 %i.fa, ptr %i.fq, align 1, !noalias !539
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 3
  store i8 %i.ew, ptr %i.fr, align 1, !noalias !539
  br label %bb.ax

bb.av:                                            ; preds = %bb.ao
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #51
          to label %common.resume unwind label %bb.aw, !noalias !539

bb.aw:                                            ; preds = %bb.av
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !539
  unreachable

bb.ax:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %i.fu = add nuw i64 %.sroa.0.0.i.i.i, %i.el
  store i64 %i.fu, ptr %i.o, align 8, !alias.scope !538, !noalias !539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !537
  %i.fv = icmp eq i64 %i.cv, %.sroa.012.0.i.i.i
  br i1 %i.fv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 %3
  br label %.loopexit540

bb.az:                                            ; preds = %bb.ax
  %i.fx = add nuw nsw i64 %.sroa.012.0.i.i.i, %i.cm
  br label %bb.ba

bb.ba:                                            ; preds = %bb.p, %bb.az
  %.sroa.030.1 = phi i64 [ %i.fx, %bb.az ], [ %i.aq, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fy = icmp ult i64 %.sroa.030.1, %3
  br i1 %i.fy, label %bb.d, label %._crit_edge

bb.bb:                                            ; preds = %.noexc98, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i"
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.fz, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cw, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cv, ptr %.sroa.5148.0..sroa_idx, align 8
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 27, ptr %.sroa.6149.0..sroa_idx, align 8
  br label %.critedge

bb.bc:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ga, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aa, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 40, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.x, %bb.bb, %bb.bc, %bb.q
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.bf unwind label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.d, align 8, !alias.scope !540 ; 2 uses
  %i.gc = icmp eq i64 %.val2.i.i, 0
  br i1 %i.gc, label %common.resume, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !541, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !542
  br label %common.resume

bb.bf:                                            ; preds = %.critedge
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !540 ; 2 uses
  %i.gd = icmp eq i64 %.val.i.i, 0
  br i1 %i.gd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !541, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !543
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.b, %bb.f, %bb.u
  %.pn168 = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.bu, %bb.u ], [ %i.q, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #51
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %.thread
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h817c374932423e47E"(ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %"_ZN118_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h0229b7eb6ee1ebcbE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i", %bb.b
  %.sroa.0.08.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i" ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.08.i.i ; 5 uses
  %i.e = add nuw i64 %.sroa.0.08.i.i, 1           ; 4 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he07ed687fdcb30e9E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !560 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.g, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !561, !nonnull !6, !noundef !6
  %i.i = mul nuw i64 %.val2.i.i.i.i.i, 72
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !562
  br label %.body.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !560 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !561, !nonnull !6, !noundef !6
  %i.l = mul nuw i64 %.val.i.i.i.i.i, 72
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !563
  br label %"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i"

"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i": ; preds = %bb.g, %bb.f
  %i.m = icmp eq i64 %i.e, %i.b
  br i1 %i.m, label %"_ZN118_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h0229b7eb6ee1ebcbE.exit", label %bb.c

bb.h:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.b
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.body.i.i:                                        ; preds = %bb.e, %bb.d
  %i.p = icmp eq i64 %i.e, %i.b
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i15 = phi i64 [ %i.n, %bb.h ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.1.i.i15
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E"(ptr noalias noundef align 8 dereferenceable(40) %i.q) #51
          to label %bb.h unwind label %bb.i

._crit_edge:                                      ; preds = %bb.h, %.body.i.i
  resume { ptr, i32 } %i.f

bb.i:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

"_ZN118_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h0229b7eb6ee1ebcbE.exit": ; preds = %"_ZN4core3ptr131drop_in_place$LT$$LP$anki..search..builder..SearchBuilder$C$$RF$alloc..vec..Vec$LT$f32$GT$$C$$RF$alloc..vec..Vec$LT$f32$GT$$RP$$GT$17hcf12a871f6a21f94E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN129_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u3b$$u20$N$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h85f924fa79f2c302E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %"_ZN118_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h1ec4b87f60767c23E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$http..header..name..HeaderName$C$alloc..string..String$RP$$GT$17h5b0daa2a6ff8e870E.exit.i.i", %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$http..header..name..HeaderName$C$alloc..string..String$RP$$GT$17h5b0daa2a6ff8e870E.exit.i.i" ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.09.i.i ; 3 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !580 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.h, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !581, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !582
  br label %.body.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !580 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.j, label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$http..header..name..HeaderName$C$alloc..string..String$RP$$GT$17h5b0daa2a6ff8e870E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !581, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !583
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$http..header..name..HeaderName$C$alloc..string..String$RP$$GT$17h5b0daa2a6ff8e870E.exit.i.i"

"_ZN4core3ptr87drop_in_place$LT$$LP$$RF$http..header..name..HeaderName$C$alloc..string..String$RP$$GT$17h5b0daa2a6ff8e870E.exit.i.i": ; preds = %bb.g, %bb.f
  %i.l = icmp eq i64 %i.e, %i.b
  br i1 %i.l, label %"_ZN118_$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$u20$as$u20$core..array..iter..iter_inner..PartialDrop$GT$12partial_drop17h1ec4b87f60767c23E.exit", label %bb.c

bb.h:                                             ; preds = %.lr.ph
  %i.m = add i64 %.sroa.0.1.i.i23, 1              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.body.i.i:                                        ; preds = %bb.e, %bb.d
  %i.o = icmp eq i64 %i.e, %i.b
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i23 = phi i64 [ %i.m, %bb.h ], [ %i.e, %.body.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4anki4text16decode_iri_paths17h0d94b2b0c9ef1ce4E:bb.a

bb.p:                                             ; preds = %.noexc103.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4987
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !4983, !noalias !4989
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ao, align 8, !alias.scope !4988, !noalias !4993
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ap, align 8, !alias.scope !4988, !noalias !4993
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !4988, !noalias !4993
  call fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h06c3ae20ede78e7eE"(ptr noalias noundef align 8 dereferenceable(248) %i.o), !noalias !4988
  br label %_ZN4anki4text20transform_html_paths17h3125b8eb345a9ef4E.exit

bb.q:                                             ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i119.i.i
  %.sroa.10.0.i120.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i119.i.i ], [ %i.am, %bb.n ]
  store i64 %2, ptr %i.n, align 8, !noalias !4973
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i120.i.i, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !4973
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.558.0..sroa_idx.i.i, align 8, !noalias !4973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.m, ptr noundef nonnull align 8 dereferenceable(248) %i.o, i64 248, i1 false), !noalias !4973
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 176 ; 2 uses
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %.sroa.10.8..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 2 uses
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.716.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.917.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1118.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit154.i.i", %bb.q
  %.sroa.019.0.i.i = phi i64 [ 0, %bb.q ], [ %i.by, %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit154.i.i" ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.461.0.copyload.i.i = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !4973 ; 3 uses
  store i64 3, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !4973
  %.not80.i.i = icmp eq i64 %.sroa.461.0.copyload.i.i, 3
  br i1 %.not80.i.i, label %bb.s, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i"

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4995
  invoke fastcc void @"_ZN95_$LT$regex..regex..string..CaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929ed371dc195f53E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.m)
          to label %.noexc127.i.i unwind label %bb.t, !noalias !4988

.noexc127.i.i:                                    ; preds = %bb.s
  %i.bb = load i64, ptr %i.g, align 8, !range !9, !noalias !4995, !noundef !6 ; 2 uses
  %.not.i125.i.i = icmp eq i64 %i.bb, 2
  br i1 %.not.i125.i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i": ; preds = %.noexc127.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.8..sroa_idx4.i.i, i64 64, i1 false), !noalias !4996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4995
  %i.bc = load i64, ptr %i.aq, align 8, !alias.scope !4994, !noalias !4997, !noundef !6
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.aq, align 8, !alias.scope !4994, !noalias !4997
  br label %bb.u

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread.i.i": ; preds = %.noexc127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4995
  br label %.loopexit.i.i

"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i": ; preds = %.body151.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.be, %bb.t ], [ %eh.lpad-body152.i.i, %.body151.i.i ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h06c3ae20ede78e7eE"(ptr noalias noundef align 8 dereferenceable(248) %i.m) #51
          to label %bb.ct unwind label %bb.l, !noalias !4988

bb.t:                                             ; preds = %bb.cs, %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i": ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx.i.i, i64 64, i1 false), !noalias !4973
  %.not81.i.i = icmp eq i64 %.sroa.461.0.copyload.i.i, 2
  br i1 %.not81.i.i, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i"
  %.sroa.5.136.i.i = phi i64 [ %i.bb, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i" ], [ %.sroa.461.0.copyload.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4973
  store i64 %.sroa.5.136.i.i, ptr %i.l, align 8, !noalias !4973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, i64 64, i1 false), !noalias !4973
  call void @llvm.experimental.noalias.scope.decl(metadata !4998)
  %i.bf = load i32, ptr %i.as, align 8, !range !17, !alias.scope !4998, !noalias !4999, !noundef !6
  %i.bg = load i32, ptr %i.at, align 4, !alias.scope !4998, !noalias !4999
  %i.bh = trunc nuw i32 %i.bf to i1
  br i1 %i.bh, label %bb.v, label %.invoke.i.i

bb.v:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr %i.au, align 8, !alias.scope !4998, !noalias !4999, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !5000, !noundef !6 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bk, 1
  br i1 %i.bm, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = zext i32 %i.bg to i64                   ; 2 uses
  %i.bo = icmp samesign ugt i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.x, label %.invoke.i.i

bb.x:                                             ; preds = %bb.w
  %i.bp = shl nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sroa.056.2.i.i.i = phi i64 [ %i.bp, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ %i.bq, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %i.br = load ptr, ptr %i.av, align 8, !alias.scope !4998, !noalias !4999, !nonnull !6, !noundef !6 ; 2 uses
  %i.bs = load i64, ptr %i.aw, align 8, !alias.scope !4998, !noalias !4999, !noundef !6 ; 2 uses
  %.not68.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i, %i.bs
  br i1 %.not68.i.i.i, label %bb.z, label %.invoke.i.i

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.056.2.i.i.i
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !5000, !noundef !6 ; 2 uses
  %.not.i128.i.i = icmp ne i64 %i.bu, 0
  %.not69.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.bs
  %or.cond.i.i.i = select i1 %.not.i128.i.i, i1 %.not69.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.aa, label %.invoke.i.i

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.058.0.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !5000, !noundef !6 ; 2 uses
  %.not61.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not61.i.i.i, label %.invoke.i.i, label %bb.ab

.loopexit50.i.i:                                  ; preds = %bb.cb, %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i, %bb.bx, %bb.ai
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ca, %.invoke319.i.i, %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i.i

.body151.i.i:                                     ; preds = %bb.co, %bb.cn, %bb.ck, %bb.cg, %bb.cf, %bb.cc, %.loopexit.split-lp.i.i, %.loopexit50.i.i
  %eh.lpad-body152.i.i = phi { ptr, i32 } [ %i.hd, %bb.ck ], [ %i.hf, %bb.cn ], [ %i.gw, %bb.cc ], [ %i.gz, %bb.cf ], [ %i.gz, %bb.cg ], [ %i.hf, %bb.co ], [ %lpad.loopexit.i.i, %.loopexit50.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17hdc9498da610eaaebE"(ptr noalias noundef align 8 dereferenceable(40) %i.ar)
          to label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i" unwind label %bb.l, !noalias !4988

bb.ab:                                            ; preds = %bb.aa
  %i.bx = add i64 %i.bu, -1                       ; 11 uses
  %i.by = add i64 %i.bw, -1
  %.not.i130.i.i = icmp ugt i64 %.sroa.019.0.i.i, %i.bx
  br i1 %.not.i130.i.i, label %.invoke319.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = icmp eq i64 %.sroa.019.0.i.i, 0
  br i1 %i.bz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not5.i131.i.i = icmp ult i64 %.sroa.019.0.i.i, %2
  br i1 %.not5.i131.i.i, label %bb.af, label %.split.i132.i.i

bb.ae:                                            ; preds = %bb.af, %.split.i132.i.i, %bb.ac
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %bb.ai, label %bb.ag

.split.i132.i.i:                                  ; preds = %bb.ad
  %i.cb = icmp eq i64 %.sroa.019.0.i.i, %2
  br i1 %i.cb, label %bb.ae, label %.invoke319.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.0.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !5001, !noalias !4988, !noundef !6
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.ae, label %.invoke319.i.i

bb.ag:                                            ; preds = %bb.ae
  %.not6.i135.i.i = icmp ult i64 %i.bx, %2
  br i1 %.not6.i135.i.i, label %bb.ah, label %.split7.i136.i.i

.split7.i136.i.i:                                 ; preds = %bb.ag
  %i.cf = icmp eq i64 %i.bx, %2
  br i1 %i.cf, label %bb.ai, label %.invoke319.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !5001, !noalias !4988, !noundef !6
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.ai, label %.invoke319.i.i

.invoke.i.i:                                      ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bc, %bb.bb, %bb.ba, %bb.az, %.thread2.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.u, %bb.ax
  %3 = phi ptr [ @258, %bb.ax ], [ @592, %bb.y ], [ @592, %bb.aa ], [ @592, %bb.u ], [ @592, %bb.z ], [ @592, %bb.w ], [ @258, %bb.bc ], [ @258, %bb.bb ], [ @258, %bb.ba ], [ @258, %bb.az ], [ @258, %.thread2.i.i.i ], [ @259, %bb.bo ], [ @259, %bb.bn ], [ @259, %bb.bm ], [ @259, %bb.bk ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #50
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !4988

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah, %.split7.i136.i.i, %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.0.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly %i.cj, ptr noundef nonnull readonly %i.ck)
          to label %bb.aj unwind label %.loopexit50.i.i, !noalias !4988

.invoke319.i.i:                                   ; preds = %bb.bv, %.split7.i62.i.i.i.i, %bb.bt, %.split.i58.i.i.i.i, %bb.bp, %bb.bi, %.split7.i.i.i.i.i, %bb.bg, %.split.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i", %bb.ah, %.split7.i136.i.i, %bb.af, %.split.i132.i.i, %bb.ab
  %i.cl = phi ptr [ %.sroa.0.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i" ], [ %1, %.split7.i136.i.i ], [ %1, %bb.ah ], [ %1, %bb.af ], [ %1, %bb.ab ], [ %1, %.split.i132.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bi ], [ %.sroa.0.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bg ], [ %.sroa.0.0.i.i.i.i, %.split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bv ], [ %.sroa.0.0.i.i.i.i, %.split7.i62.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bt ], [ %.sroa.0.0.i.i.i.i, %.split.i58.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bp ]
  %i.cm = phi i64 [ %.sroa.6.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i" ], [ %2, %.split7.i136.i.i ], [ %2, %bb.ah ], [ %2, %bb.af ], [ %2, %bb.ab ], [ %2, %.split.i132.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bi ], [ %.sroa.6.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bg ], [ %.sroa.6.0.i.i.i.i, %.split.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bv ], [ %.sroa.6.0.i.i.i.i, %.split7.i62.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bt ], [ %.sroa.6.0.i.i.i.i, %.split.i58.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bp ]
  %i.cn = phi i64 [ %.sroa.8.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i" ], [ %.sroa.019.0.i.i, %.split7.i136.i.i ], [ %.sroa.019.0.i.i, %bb.ah ], [ %.sroa.019.0.i.i, %bb.af ], [ %.sroa.019.0.i.i, %bb.ab ], [ %.sroa.019.0.i.i, %.split.i132.i.i ], [ %.sroa.8.0.i.i.i.i, %bb.bi ], [ %.sroa.8.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i, %bb.bg ], [ %.sroa.8.0.i.i.i.i, %.split.i.i.i.i.i ], [ %i.fy, %bb.bv ], [ %i.fy, %.split7.i62.i.i.i.i ], [ %i.fy, %bb.bt ], [ %i.fy, %.split.i58.i.i.i.i ], [ %i.fy, %bb.bp ]
  %i.co = phi i64 [ %.sroa.10.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i" ], [ %i.bx, %.split7.i136.i.i ], [ %i.bx, %bb.ah ], [ %i.bx, %bb.af ], [ %i.bx, %bb.ab ], [ %i.bx, %.split.i132.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.bi ], [ %.sroa.10.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.bg ], [ %.sroa.10.0.i.i.i.i, %.split.i.i.i.i.i ], [ %i.fz, %bb.bv ], [ %i.fz, %.split7.i62.i.i.i.i ], [ %i.fz, %bb.bt ], [ %i.fz, %.split.i58.i.i.i.i ], [ %i.fz, %bb.bp ]
  %i.cp = phi ptr [ @244, %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i" ], [ @593, %.split7.i136.i.i ], [ @593, %bb.ah ], [ @593, %bb.af ], [ @593, %bb.ab ], [ @593, %.split.i132.i.i ], [ @244, %bb.bi ], [ @244, %.split7.i.i.i.i.i ], [ @244, %bb.bg ], [ @244, %.split.i.i.i.i.i ], [ @244, %bb.bv ], [ @244, %.split7.i62.i.i.i.i ], [ @244, %bb.bt ], [ @244, %.split.i58.i.i.i.i ], [ @244, %bb.bp ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cl, i64 noundef %i.cm, i64 noundef %i.cn, i64 noundef %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #50
          to label %.cont320.i.i unwind label %.loopexit.split-lp.i.i, !noalias !4988

.cont320.i.i:                                     ; preds = %.invoke319.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !5002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5003
  call void @llvm.experimental.noalias.scope.decl(metadata !5004)
  call void @llvm.experimental.noalias.scope.decl(metadata !5005)
  call void @llvm.experimental.noalias.scope.decl(metadata !5006)
  %i.cq = load i32, ptr %i.as, align 8, !range !17, !alias.scope !5007, !noalias !5008, !noundef !6
  %i.cr = load i32, ptr %i.at, align 4, !alias.scope !5007, !noalias !5008 ; 4 uses
  %i.cs = trunc nuw i32 %i.cq to i1
  br i1 %i.cs, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr %i.au, align 8, !alias.scope !5007, !noalias !5008, !nonnull !6, !noundef !6 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !5009, !noundef !6 ; 6 uses
  %i.cw = icmp ult i64 %i.cv, 1152921504606846976
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.cv, 1                    ; 4 uses
  br i1 %i.cx, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = zext i32 %i.cr to i64                   ; 4 uses
  %i.cz = icmp samesign ugt i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.am, label %.thread.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !noalias !5009, !nonnull !6, !noundef !6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noalias !5009, !noundef !6
  %i.df = zext i32 %i.de to i64
  %i.dg = load i32, ptr %i.dc, align 4, !noalias !5009, !noundef !6
  %i.dh = zext i32 %i.dg to i64                   ; 3 uses
  %i.di = sub nsw i64 %i.df, %i.dh
  %.not.i.i.i.i.i.i = icmp ult i64 %i.di, 2
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i: ; preds = %bb.am
  %i.dj = add nuw nsw i64 %i.dh, 1
  br label %bb.an

bb.an:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i, %bb.ak
  %.sroa.056.2.i.i.i.i.i = phi i64 [ %i.dh, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 2, %bb.ak ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i = phi i64 [ %i.dj, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 3, %bb.ak ] ; 2 uses
  %i.dk = load ptr, ptr %i.av, align 8, !alias.scope !5007, !noalias !5008, !nonnull !6, !noundef !6 ; 4 uses
  %i.dl = load i64, ptr %i.aw, align 8, !alias.scope !5007, !noalias !5008, !noundef !6 ; 4 uses
  %.not68.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i, %i.dl
  br i1 %.not68.i.i.i.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.sroa.056.2.i.i.i.i.i
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !5009, !noundef !6 ; 2 uses
  %.not.i.i.i142.i.i = icmp ne i64 %i.dn, 0
  %.not69.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i, %i.dl
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i142.i.i, i1 %.not69.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.sroa.058.0.i.i.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !noalias !5009, !noundef !6 ; 2 uses
  %.not61.i.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not61.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %i.cx, label %bb.at, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ar
  %.pre14.i.i.i = zext i32 %i.cr to i64
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %bb.am, %bb.al
  %.pre-phi15.i.i.i = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.cy, %bb.am ], [ %i.cy, %bb.al ] ; 4 uses
  %i.dq = icmp samesign ugt i64 %i.cv, %.pre-phi15.i.i.i
  br i1 %i.dq, label %bb.as, label %.thread2.i.i.i

bb.as:                                            ; preds = %.thread.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !5011, !nonnull !6, !noundef !6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.pre-phi15.i.i.i ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !noalias !5011, !noundef !6
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load i32, ptr %i.dt, align 4, !noalias !5011, !noundef !6
  %i.dy = zext i32 %i.dx to i64                   ; 3 uses
  %i.dz = sub nsw i64 %i.dw, %i.dy
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.dz, 4
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread2.i.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.ea = add nuw nsw i64 %i.dy, 2
  %i.eb = add nuw nsw i64 %i.dy, 3
  %.pre.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !5012, !noalias !5013
  %.pre4.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !5012, !noalias !5013
  br label %bb.at

bb.at:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i, %bb.ar
  %i.ec = phi i64 [ %.pre4.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ %i.dl, %bb.ar ] ; 4 uses
  %i.ed = phi ptr [ %.pre.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ %i.dk, %bb.ar ] ; 4 uses
  %.sroa.056.2.i.i.i.i.i.i.i = phi i64 [ %i.ea, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ 4, %bb.ar ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i.i.i = phi i64 [ %i.eb, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ 5, %bb.ar ] ; 2 uses
  %.not68.i.i.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i.i.i, %i.ec
  br i1 %.not68.i.i.i.i.i.i.i, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.sroa.056.2.i.i.i.i.i.i.i
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !5011, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ef, 0
  %.not69.i.i.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i.i.i, %i.ec
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not69.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.sroa.058.0.i.i.i.i.i.i.i
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !5011, !noundef !6 ; 2 uses
  %.not61.i.i.i.i.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not61.i.i.i.i.i.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %i.ei = phi i64 [ %i.dl, %bb.aq ], [ %i.ec, %bb.av ]
  %i.ej = phi ptr [ %i.dk, %bb.aq ], [ %i.ed, %bb.av ]
  %.sroa.11.0.in.i.i.i.i = phi i64 [ %i.dp, %bb.aq ], [ %i.eh, %bb.av ]
  %.sroa.9.0.in.i.i.i.i = phi i64 [ %i.dn, %bb.aq ], [ %i.ef, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5014)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i"

bb.ax:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !5015)
  call void @llvm.experimental.noalias.scope.decl(metadata !5016)
  call void @llvm.experimental.noalias.scope.decl(metadata !5017)
  call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  br label %.invoke.i.i

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.at
  br i1 %i.cx, label %bb.ba, label %..thread2_crit_edge.i.i.i

..thread2_crit_edge.i.i.i:                        ; preds = %bb.ay
  %.pre13.i.i.i = zext i32 %i.cr to i64
  br label %.thread2.i.i.i

.thread2.i.i.i:                                   ; preds = %..thread2_crit_edge.i.i.i, %bb.as, %.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre13.i.i.i, %..thread2_crit_edge.i.i.i ], [ %.pre-phi15.i.i.i, %.thread.i.i.i ], [ %.pre-phi15.i.i.i, %bb.as ] ; 2 uses
  %i.ek = icmp samesign ugt i64 %i.cv, %.pre-phi.i.i.i
  br i1 %i.ek, label %bb.az, label %.invoke.i.i

bb.az:                                            ; preds = %.thread2.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !noalias !5019, !nonnull !6, !noundef !6
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.pre-phi.i.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !5019, !noundef !6
  %i.eq = zext i32 %i.ep to i64
  %i.er = load i32, ptr %i.en, align 4, !noalias !5019, !noundef !6
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = sub nsw i64 %i.eq, %i.es
  %.not.i.i.i.i32.i.i.i.i = icmp ult i64 %i.et, 6
  br i1 %.not.i.i.i.i32.i.i.i.i, label %.invoke.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i: ; preds = %bb.az
  %i.eu = add nuw nsw i64 %i.es, 4
  %i.ev = add nuw nsw i64 %i.es, 5
  %.pre6.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !5020, !noalias !5021
  %.pre8.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !5020, !noalias !5021
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i, %bb.ay
  %i.ew = phi i64 [ %.pre8.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ %i.ec, %bb.ay ] ; 3 uses
  %i.ex = phi ptr [ %.pre6.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ %i.ed, %bb.ay ] ; 3 uses
  %.sroa.056.2.i.i.i34.i.i.i.i = phi i64 [ %i.eu, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ 6, %bb.ay ] ; 2 uses
  %.sroa.058.0.i.i.i35.i.i.i.i = phi i64 [ %i.ev, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ 7, %bb.ay ] ; 2 uses
  %.not68.i.i.i36.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i34.i.i.i.i, %i.ew
  br i1 %.not68.i.i.i36.i.i.i.i, label %bb.bb, label %.invoke.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.056.2.i.i.i34.i.i.i.i
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !5019, !noundef !6 ; 2 uses
  %.not.i.i.i37.i.i.i.i = icmp ne i64 %i.ez, 0
  %.not69.i.i.i38.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i35.i.i.i.i, %i.ew
  %or.cond.i.i.i39.i.i.i.i = select i1 %.not.i.i.i37.i.i.i.i, i1 %.not69.i.i.i38.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i39.i.i.i.i, label %bb.bc, label %.invoke.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.058.0.i.i.i35.i.i.i.i
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !5019, !noundef !6 ; 2 uses
  %.not61.i.i.i40.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not61.i.i.i40.i.i.i.i, label %.invoke.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i": ; preds = %bb.bc, %bb.aw
  %i.fc = phi i64 [ %i.ei, %bb.aw ], [ %i.ew, %bb.bc ] ; 2 uses
  %i.fd = phi ptr [ %i.ej, %bb.aw ], [ %i.ex, %bb.bc ] ; 2 uses
  %.sroa.10.0.in.i.i.i.i = phi i64 [ %.sroa.11.0.in.i.i.i.i, %bb.aw ], [ %i.fb, %bb.bc ] ; 2 uses
  %.sroa.8.0.in.i.i.i.i = phi i64 [ %.sroa.9.0.in.i.i.i.i, %bb.aw ], [ %i.ez, %bb.bc ] ; 2 uses
  %.sroa.0.0.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !5022, !noalias !5023, !nonnull !6, !align !15, !noundef !6 ; 16 uses
  %.sroa.6.0.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !5022, !noalias !5023, !noundef !6 ; 18 uses
  %.sroa.8.0.i.i.i.i = add i64 %.sroa.8.0.in.i.i.i.i, -1 ; 11 uses
  %.sroa.10.0.i.i.i.i = add i64 %.sroa.10.0.in.i.i.i.i, -1 ; 10 uses
  %.not.i44.i.i.i.i = icmp ugt i64 %.sroa.8.0.i.i.i.i, %.sroa.10.0.i.i.i.i
  br i1 %.not.i44.i.i.i.i, label %.invoke319.i.i, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hf5679972f7170c59E.exit.i.i.i.i"
  %i.fe = icmp eq i64 %.sroa.8.0.i.i.i.i, 0
  br i1 %i.fe, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not5.i.i.i.i.i = icmp ult i64 %.sroa.8.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %.not5.i.i.i.i.i, label %bb.bg, label %.split.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bg, %.split.i.i.i.i.i, %bb.bd
  %i.ff = icmp eq i64 %.sroa.10.0.i.i.i.i, 0
  br i1 %i.ff, label %bb.bj, label %bb.bh

.split.i.i.i.i.i:                                 ; preds = %bb.be
  %i.fg = icmp eq i64 %.sroa.8.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %i.fg, label %bb.bf, label %.invoke319.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !5024, !noalias !5025, !noundef !6
  %i.fj = icmp sgt i8 %i.fi, -65
  br i1 %i.fj, label %bb.bf, label %.invoke319.i.i

bb.bh:                                            ; preds = %bb.bf
  %.not6.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %bb.bi, label %.split7.i.i.i.i.i

.split7.i.i.i.i.i:                                ; preds = %bb.bh
  %i.fk = icmp eq i64 %.sroa.10.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %i.fk, label %bb.bj, label %.invoke319.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.10.0.i.i.i.i
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !5024, !noalias !5025, !noundef !6
  %i.fn = icmp sgt i8 %i.fm, -65
  br i1 %i.fn, label %bb.bj, label %.invoke319.i.i

bb.bj:                                            ; preds = %bb.bi, %.split7.i.i.i.i.i, %bb.bf
  %i.fo = sub i64 %.sroa.10.0.in.i.i.i.i, %.sroa.8.0.in.i.i.i.i ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i ; 4 uses
  br i1 %i.cx, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fq = zext i32 %i.cr to i64                   ; 2 uses
  %i.fr = icmp samesign ugt i64 %i.cv, %i.fq
  br i1 %i.fr, label %bb.bl, label %.invoke.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.fs = shl nuw nsw i64 %i.fq, 1                ; 2 uses
  %i.ft = or disjoint i64 %i.fs, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.056.2.i48.i.i.i.i = phi i64 [ %i.fs, %bb.bl ], [ 0, %bb.bj ] ; 2 uses
  %.sroa.058.0.i49.i.i.i.i = phi i64 [ %i.ft, %bb.bl ], [ 1, %bb.bj ] ; 2 uses
  %.not68.i50.i.i.i.i = icmp ult i64 %.sroa.056.2.i48.i.i.i.i, %i.fc
  br i1 %.not68.i50.i.i.i.i, label %bb.bn, label %.invoke.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.sroa.056.2.i48.i.i.i.i
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !5026, !noundef !6 ; 4 uses
  %.not.i51.i.i.i.i = icmp ne i64 %i.fv, 0
  %.not69.i52.i.i.i.i = icmp ult i64 %.sroa.058.0.i49.i.i.i.i, %i.fc
  %or.cond.i53.i.i.i.i = select i1 %.not.i51.i.i.i.i, i1 %.not69.i52.i.i.i.i, i1 false
  br i1 %or.cond.i53.i.i.i.i, label %bb.bo, label %.invoke.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.sroa.058.0.i49.i.i.i.i
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !5026, !noundef !6 ; 4 uses
  %.not61.i54.i.i.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not61.i54.i.i.i.i, label %.invoke.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fy = add i64 %i.fv, -1                       ; 11 uses
  %i.fz = add i64 %i.fx, -1                       ; 10 uses
  %.not.i56.i.i.i.i = icmp ugt i64 %i.fy, %i.fz
  br i1 %.not.i56.i.i.i.i, label %.invoke319.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ga = icmp eq i64 %i.fy, 0
  br i1 %i.ga, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not5.i57.i.i.i.i = icmp ult i64 %i.fy, %.sroa.6.0.i.i.i.i
  br i1 %.not5.i57.i.i.i.i, label %bb.bt, label %.split.i58.i.i.i.i

bb.bs:                                            ; preds = %bb.bt, %.split.i58.i.i.i.i, %bb.bq
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %bb.bw, label %bb.bu

.split.i58.i.i.i.i:                               ; preds = %bb.br
  %i.gc = icmp eq i64 %i.fy, %.sroa.6.0.i.i.i.i
  br i1 %i.gc, label %bb.bs, label %.invoke319.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.fy
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !5027, !noalias !5025, !noundef !6
  %i.gf = icmp sgt i8 %i.ge, -65
  br i1 %i.gf, label %bb.bs, label %.invoke319.i.i

bb.bu:                                            ; preds = %bb.bs
  %.not6.i61.i.i.i.i = icmp ult i64 %i.fz, %.sroa.6.0.i.i.i.i
  br i1 %.not6.i61.i.i.i.i, label %bb.bv, label %.split7.i62.i.i.i.i

.split7.i62.i.i.i.i:                              ; preds = %bb.bu
  %i.gg = icmp eq i64 %i.fz, %.sroa.6.0.i.i.i.i
  br i1 %i.gg, label %bb.bw, label %.invoke319.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.fz
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !5027, !noalias !5025, !noundef !6
  %i.gj = icmp sgt i8 %i.gi, -65
  br i1 %i.gj, label %bb.bw, label %.invoke319.i.i

bb.bw:                                            ; preds = %bb.bv, %.split7.i62.i.i.i.i, %bb.bs
  %i.gk = sub nuw i64 %i.fx, %i.fv                ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.fy ; 2 uses
  %i.gm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, i64 32) acquire, align 8, !noalias !5028
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i, label %bb.bx, !prof !19

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5028
  store ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, ptr %i.b, align 8, !noalias !5028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5028
  store ptr %i.b, ptr %i.a, align 8, !noalias !5028
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc146.i.i unwind label %.loopexit50.i.i, !noalias !4988

.noexc146.i.i:                                    ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5028
  br label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i

_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i: ; preds = %.noexc146.i.i, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5028
  store i32 0, ptr %i.d, align 8, !noalias !5028
  store ptr %i.fp, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !5028
  store i64 %i.fo, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !5028
  store i64 0, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 8, !noalias !5028
  store i64 %i.fo, ptr %.sroa.917.0..sroa_idx.i.i.i.i, align 8, !noalias !5028
  store i8 1, ptr %.sroa.1118.0..sroa_idx.i.i.i.i, align 8, !noalias !5028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5028
  %_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E.val.i.i.i.i = load ptr, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, align 8, !noalias !5028, !nonnull !6, !noundef !6
end_hunk_2
begin_hunk_3_@_ZN4anki4text16encode_iri_paths17h70a8349d3f482ee9E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5177
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !5173, !noalias !5179
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ap, align 8, !alias.scope !5178, !noalias !5183
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.aq, align 8, !alias.scope !5178, !noalias !5183
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !5178, !noalias !5183
  call fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h06c3ae20ede78e7eE"(ptr noalias noundef align 8 dereferenceable(248) %i.p), !noalias !5178
  br label %_ZN4anki4text20transform_html_paths17h8676790921b14d78E.exit

bb.q:                                             ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i119.i.i
  %.sroa.10.0.i120.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i119.i.i ], [ %i.an, %bb.n ]
  store i64 %2, ptr %i.o, align 8, !noalias !5163
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i120.i.i, ptr %.sroa.457.0..sroa_idx.i.i, align 8, !noalias !5163
  %.sroa.558.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.558.0..sroa_idx.i.i, align 8, !noalias !5163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.n, ptr noundef nonnull align 8 dereferenceable(248) %i.p, i64 248, i1 false), !noalias !5163
  %.sroa.461.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 176 ; 2 uses
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %.sroa.10.8..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 160 ; 2 uses
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.716.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.917.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.1118.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit154.i.i", %bb.q
  %.sroa.019.0.i.i = phi i64 [ 0, %bb.q ], [ %i.cb, %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit154.i.i" ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.sroa.461.0.copyload.i.i = load i64, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !5163 ; 3 uses
  store i64 3, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !5163
  %.not80.i.i = icmp eq i64 %.sroa.461.0.copyload.i.i, 3
  br i1 %.not80.i.i, label %bb.s, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i"

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5185
  invoke fastcc void @"_ZN95_$LT$regex..regex..string..CaptureMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929ed371dc195f53E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(168) %i.n)
          to label %.noexc127.i.i unwind label %bb.t, !noalias !5178

.noexc127.i.i:                                    ; preds = %bb.s
  %i.be = load i64, ptr %i.h, align 8, !range !9, !noalias !5185, !noundef !6 ; 2 uses
  %.not.i125.i.i = icmp eq i64 %i.be, 2
  br i1 %.not.i125.i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i": ; preds = %.noexc127.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.8..sroa_idx4.i.i, i64 64, i1 false), !noalias !5186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5185
  %i.bf = load i64, ptr %i.ar, align 8, !alias.scope !5184, !noalias !5187, !noundef !6
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ar, align 8, !alias.scope !5184, !noalias !5187
  br label %bb.u

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread.i.i": ; preds = %.noexc127.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5185
  br label %.loopexit.i.i

"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i": ; preds = %.body151.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.bh, %bb.t ], [ %eh.lpad-body152.i.i, %.body151.i.i ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h06c3ae20ede78e7eE"(ptr noalias noundef align 8 dereferenceable(248) %i.n) #51
          to label %bb.ct unwind label %bb.l, !noalias !5178

bb.t:                                             ; preds = %bb.cs, %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i": ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx.i.i, i64 64, i1 false), !noalias !5163
  %.not81.i.i = icmp eq i64 %.sroa.461.0.copyload.i.i, 2
  br i1 %.not81.i.i, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i"
  %.sroa.5.136.i.i = phi i64 [ %i.be, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.thread33.i.i" ], [ %.sroa.461.0.copyload.i.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7a1f85f7484ce4dfE.exit.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5163
  store i64 %.sroa.5.136.i.i, ptr %i.m, align 8, !noalias !5163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.i.i, i64 64, i1 false), !noalias !5163
  call void @llvm.experimental.noalias.scope.decl(metadata !5188)
  %i.bi = load i32, ptr %i.at, align 8, !range !17, !alias.scope !5188, !noalias !5189, !noundef !6
  %i.bj = load i32, ptr %i.au, align 4, !alias.scope !5188, !noalias !5189
  %i.bk = trunc nuw i32 %i.bi to i1
  br i1 %i.bk, label %bb.v, label %.invoke.i.i

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.av, align 8, !alias.scope !5188, !noalias !5189, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !5190, !noundef !6 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 1152921504606846976
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.bn, 1
  br i1 %i.bp, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = zext i32 %i.bj to i64                   ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.x, label %.invoke.i.i

bb.x:                                             ; preds = %bb.w
  %i.bs = shl nuw nsw i64 %i.bq, 1                ; 2 uses
  %i.bt = or disjoint i64 %i.bs, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sroa.056.2.i.i.i = phi i64 [ %i.bs, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ %i.bt, %bb.x ], [ 1, %bb.v ] ; 2 uses
  %i.bu = load ptr, ptr %i.aw, align 8, !alias.scope !5188, !noalias !5189, !nonnull !6, !noundef !6 ; 2 uses
  %i.bv = load i64, ptr %i.ax, align 8, !alias.scope !5188, !noalias !5189, !noundef !6 ; 2 uses
  %.not68.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i, %i.bv
  br i1 %.not68.i.i.i, label %bb.z, label %.invoke.i.i

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.056.2.i.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !5190, !noundef !6 ; 2 uses
  %.not.i128.i.i = icmp ne i64 %i.bx, 0
  %.not69.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.bv
  %or.cond.i.i.i = select i1 %.not.i128.i.i, i1 %.not69.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.aa, label %.invoke.i.i

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.058.0.i.i.i
  %i.bz = load i64, ptr %i.by, align 8, !noalias !5190, !noundef !6 ; 2 uses
  %.not61.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not61.i.i.i, label %.invoke.i.i, label %bb.ab

.loopexit50.i.i:                                  ; preds = %bb.cb, %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i, %bb.bx, %bb.ai
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ca, %.invoke319.i.i, %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body151.i.i

.body151.i.i:                                     ; preds = %bb.co, %bb.cn, %bb.ck, %bb.cg, %bb.cf, %bb.cc, %.loopexit.split-lp.i.i, %.loopexit50.i.i
  %eh.lpad-body152.i.i = phi { ptr, i32 } [ %i.hf, %bb.ck ], [ %i.hh, %bb.cn ], [ %i.gy, %bb.cc ], [ %i.hb, %bb.cf ], [ %i.hb, %bb.cg ], [ %i.hh, %bb.co ], [ %lpad.loopexit.i.i, %.loopexit50.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17hdc9498da610eaaebE"(ptr noalias noundef align 8 dereferenceable(40) %i.as)
          to label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h6c433e01784e4070E.exit.i.i" unwind label %bb.l, !noalias !5178

bb.ab:                                            ; preds = %bb.aa
  %i.ca = add i64 %i.bx, -1                       ; 11 uses
  %i.cb = add i64 %i.bz, -1
  %.not.i130.i.i = icmp ugt i64 %.sroa.019.0.i.i, %i.ca
  br i1 %.not.i130.i.i, label %.invoke319.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = icmp eq i64 %.sroa.019.0.i.i, 0
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not5.i131.i.i = icmp ult i64 %.sroa.019.0.i.i, %2
  br i1 %.not5.i131.i.i, label %bb.af, label %.split.i132.i.i

bb.ae:                                            ; preds = %bb.af, %.split.i132.i.i, %bb.ac
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %bb.ai, label %bb.ag

.split.i132.i.i:                                  ; preds = %bb.ad
  %i.ce = icmp eq i64 %.sroa.019.0.i.i, %2
  br i1 %i.ce, label %bb.ae, label %.invoke319.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.0.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !5191, !noalias !5178, !noundef !6
  %i.ch = icmp sgt i8 %i.cg, -65
  br i1 %i.ch, label %bb.ae, label %.invoke319.i.i

bb.ag:                                            ; preds = %bb.ae
  %.not6.i135.i.i = icmp ult i64 %i.ca, %2
  br i1 %.not6.i135.i.i, label %bb.ah, label %.split7.i136.i.i

.split7.i136.i.i:                                 ; preds = %bb.ag
  %i.ci = icmp eq i64 %i.ca, %2
  br i1 %i.ci, label %bb.ai, label %.invoke319.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !5191, !noalias !5178, !noundef !6
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.ai, label %.invoke319.i.i

.invoke.i.i:                                      ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bc, %bb.bb, %bb.ba, %bb.az, %.thread2.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.u, %bb.ax
  %3 = phi ptr [ @258, %bb.ax ], [ @592, %bb.y ], [ @592, %bb.aa ], [ @592, %bb.u ], [ @592, %bb.z ], [ @592, %bb.w ], [ @258, %bb.bc ], [ @258, %bb.bb ], [ @258, %bb.ba ], [ @258, %bb.az ], [ @258, %.thread2.i.i.i ], [ @259, %bb.bo ], [ @259, %bb.bn ], [ @259, %bb.bm ], [ @259, %bb.bk ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #50
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5178

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ai:                                            ; preds = %bb.ah, %.split7.i136.i.i, %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.019.0.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly %i.cm, ptr noundef nonnull readonly %i.cn)
          to label %bb.aj unwind label %.loopexit50.i.i, !noalias !5178

.invoke319.i.i:                                   ; preds = %bb.bv, %.split7.i62.i.i.i.i, %bb.bt, %.split.i58.i.i.i.i, %bb.bp, %bb.bi, %.split7.i.i.i.i.i, %bb.bg, %.split.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i", %bb.ah, %.split7.i136.i.i, %bb.af, %.split.i132.i.i, %bb.ab
  %i.co = phi ptr [ %.sroa.0.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i" ], [ %1, %.split7.i136.i.i ], [ %1, %bb.ah ], [ %1, %bb.af ], [ %1, %bb.ab ], [ %1, %.split.i132.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bi ], [ %.sroa.0.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bg ], [ %.sroa.0.0.i.i.i.i, %.split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bv ], [ %.sroa.0.0.i.i.i.i, %.split7.i62.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bt ], [ %.sroa.0.0.i.i.i.i, %.split.i58.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.bp ]
  %i.cp = phi i64 [ %.sroa.6.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i" ], [ %2, %.split7.i136.i.i ], [ %2, %bb.ah ], [ %2, %bb.af ], [ %2, %bb.ab ], [ %2, %.split.i132.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bi ], [ %.sroa.6.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bg ], [ %.sroa.6.0.i.i.i.i, %.split.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bv ], [ %.sroa.6.0.i.i.i.i, %.split7.i62.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bt ], [ %.sroa.6.0.i.i.i.i, %.split.i58.i.i.i.i ], [ %.sroa.6.0.i.i.i.i, %bb.bp ]
  %i.cq = phi i64 [ %.sroa.8.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i" ], [ %.sroa.019.0.i.i, %.split7.i136.i.i ], [ %.sroa.019.0.i.i, %bb.ah ], [ %.sroa.019.0.i.i, %bb.af ], [ %.sroa.019.0.i.i, %bb.ab ], [ %.sroa.019.0.i.i, %.split.i132.i.i ], [ %.sroa.8.0.i.i.i.i, %bb.bi ], [ %.sroa.8.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.8.0.i.i.i.i, %bb.bg ], [ %.sroa.8.0.i.i.i.i, %.split.i.i.i.i.i ], [ %i.gb, %bb.bv ], [ %i.gb, %.split7.i62.i.i.i.i ], [ %i.gb, %bb.bt ], [ %i.gb, %.split.i58.i.i.i.i ], [ %i.gb, %bb.bp ]
  %i.cr = phi i64 [ %.sroa.10.0.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i" ], [ %i.ca, %.split7.i136.i.i ], [ %i.ca, %bb.ah ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ab ], [ %i.ca, %.split.i132.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.bi ], [ %.sroa.10.0.i.i.i.i, %.split7.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.bg ], [ %.sroa.10.0.i.i.i.i, %.split.i.i.i.i.i ], [ %i.gc, %bb.bv ], [ %i.gc, %.split7.i62.i.i.i.i ], [ %i.gc, %bb.bt ], [ %i.gc, %.split.i58.i.i.i.i ], [ %i.gc, %bb.bp ]
  %i.cs = phi ptr [ @244, %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i" ], [ @593, %.split7.i136.i.i ], [ @593, %bb.ah ], [ @593, %bb.af ], [ @593, %bb.ab ], [ @593, %.split.i132.i.i ], [ @244, %bb.bi ], [ @244, %.split7.i.i.i.i.i ], [ @244, %bb.bg ], [ @244, %.split.i.i.i.i.i ], [ @244, %bb.bv ], [ @244, %.split7.i62.i.i.i.i ], [ @244, %bb.bt ], [ @244, %.split.i58.i.i.i.i ], [ @244, %bb.bp ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.co, i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #50
          to label %.cont320.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5178

.cont320.i.i:                                     ; preds = %.invoke319.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !5192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5193
  call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  call void @llvm.experimental.noalias.scope.decl(metadata !5196)
  %i.ct = load i32, ptr %i.at, align 8, !range !17, !alias.scope !5197, !noalias !5198, !noundef !6
  %i.cu = load i32, ptr %i.au, align 4, !alias.scope !5197, !noalias !5198 ; 4 uses
  %i.cv = trunc nuw i32 %i.ct to i1
  br i1 %i.cv, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.cw = load ptr, ptr %i.av, align 8, !alias.scope !5197, !noalias !5198, !nonnull !6, !noundef !6 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !5199, !noundef !6 ; 6 uses
  %i.cz = icmp ult i64 %i.cy, 1152921504606846976
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp eq i64 %i.cy, 1                    ; 4 uses
  br i1 %i.da, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.db = zext i32 %i.cu to i64                   ; 4 uses
  %i.dc = icmp samesign ugt i64 %i.cy, %i.db
  br i1 %i.dc, label %bb.am, label %.thread.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !5199, !nonnull !6, !noundef !6
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.db ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !noalias !5199, !noundef !6
  %i.di = zext i32 %i.dh to i64
  %i.dj = load i32, ptr %i.df, align 4, !noalias !5199, !noundef !6
  %i.dk = zext i32 %i.dj to i64                   ; 3 uses
  %i.dl = sub nsw i64 %i.di, %i.dk
  %.not.i.i.i.i.i.i = icmp ult i64 %i.dl, 2
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i: ; preds = %bb.am
  %i.dm = add nuw nsw i64 %i.dk, 1
  br label %bb.an

bb.an:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i, %bb.ak
  %.sroa.056.2.i.i.i.i.i = phi i64 [ %i.dk, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 2, %bb.ak ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i = phi i64 [ %i.dm, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 3, %bb.ak ] ; 2 uses
  %i.dn = load ptr, ptr %i.aw, align 8, !alias.scope !5197, !noalias !5198, !nonnull !6, !noundef !6 ; 4 uses
  %i.do = load i64, ptr %i.ax, align 8, !alias.scope !5197, !noalias !5198, !noundef !6 ; 4 uses
  %.not68.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i, %i.do
  br i1 %.not68.i.i.i.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.056.2.i.i.i.i.i
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !5199, !noundef !6 ; 2 uses
  %.not.i.i.i142.i.i = icmp ne i64 %i.dq, 0
  %.not69.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i, %i.do
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i142.i.i, i1 %.not69.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.sroa.058.0.i.i.i.i.i
  %i.ds = load i64, ptr %i.dr, align 8, !noalias !5199, !noundef !6 ; 2 uses
  %.not61.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not61.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !5200)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  br i1 %i.da, label %bb.at, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ar
  %.pre14.i.i.i = zext i32 %i.cu to i64
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %bb.am, %bb.al
  %.pre-phi15.i.i.i = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.db, %bb.am ], [ %i.db, %bb.al ] ; 4 uses
  %i.dt = icmp samesign ugt i64 %i.cy, %.pre-phi15.i.i.i
  br i1 %i.dt, label %bb.as, label %.thread2.i.i.i

bb.as:                                            ; preds = %.thread.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !5201, !nonnull !6, !noundef !6
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.pre-phi15.i.i.i ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !5201, !noundef !6
  %i.dz = zext i32 %i.dy to i64
  %i.ea = load i32, ptr %i.dw, align 4, !noalias !5201, !noundef !6
  %i.eb = zext i32 %i.ea to i64                   ; 3 uses
  %i.ec = sub nsw i64 %i.dz, %i.eb
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.ec, 4
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread2.i.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.ed = add nuw nsw i64 %i.eb, 2
  %i.ee = add nuw nsw i64 %i.eb, 3
  %.pre.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !5202, !noalias !5203
  %.pre4.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !5202, !noalias !5203
  br label %bb.at

bb.at:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i, %bb.ar
  %i.ef = phi i64 [ %.pre4.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ %i.do, %bb.ar ] ; 4 uses
  %i.eg = phi ptr [ %.pre.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ %i.dn, %bb.ar ] ; 4 uses
  %.sroa.056.2.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ 4, %bb.ar ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i.i.i = phi i64 [ %i.ee, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i.i.i ], [ 5, %bb.ar ] ; 2 uses
  %.not68.i.i.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i.i.i, %i.ef
  br i1 %.not68.i.i.i.i.i.i.i, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.sroa.056.2.i.i.i.i.i.i.i
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !5201, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ei, 0
  %.not69.i.i.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i.i.i, %i.ef
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not69.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.sroa.058.0.i.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !5201, !noundef !6 ; 2 uses
  %.not61.i.i.i.i.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not61.i.i.i.i.i.i.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.aq
  %i.el = phi i64 [ %i.do, %bb.aq ], [ %i.ef, %bb.av ]
  %i.em = phi ptr [ %i.dn, %bb.aq ], [ %i.eg, %bb.av ]
  %.sroa.11.0.in.i.i.i.i = phi i64 [ %i.ds, %bb.aq ], [ %i.ek, %bb.av ]
  %.sroa.9.0.in.i.i.i.i = phi i64 [ %i.dq, %bb.aq ], [ %i.ei, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5204)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i"

bb.ax:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  call void @llvm.experimental.noalias.scope.decl(metadata !5206)
  call void @llvm.experimental.noalias.scope.decl(metadata !5207)
  call void @llvm.experimental.noalias.scope.decl(metadata !5208)
  br label %.invoke.i.i

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.at
  br i1 %i.da, label %bb.ba, label %..thread2_crit_edge.i.i.i

..thread2_crit_edge.i.i.i:                        ; preds = %bb.ay
  %.pre13.i.i.i = zext i32 %i.cu to i64
  br label %.thread2.i.i.i

.thread2.i.i.i:                                   ; preds = %..thread2_crit_edge.i.i.i, %bb.as, %.thread.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre13.i.i.i, %..thread2_crit_edge.i.i.i ], [ %.pre-phi15.i.i.i, %.thread.i.i.i ], [ %.pre-phi15.i.i.i, %bb.as ] ; 2 uses
  %i.en = icmp samesign ugt i64 %i.cy, %.pre-phi.i.i.i
  br i1 %i.en, label %bb.az, label %.invoke.i.i

bb.az:                                            ; preds = %.thread2.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !5209, !nonnull !6, !noundef !6
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.pre-phi.i.i.i ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !noalias !5209, !noundef !6
  %i.et = zext i32 %i.es to i64
  %i.eu = load i32, ptr %i.eq, align 4, !noalias !5209, !noundef !6
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = sub nsw i64 %i.et, %i.ev
  %.not.i.i.i.i32.i.i.i.i = icmp ult i64 %i.ew, 6
  br i1 %.not.i.i.i.i32.i.i.i.i, label %.invoke.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i: ; preds = %bb.az
  %i.ex = add nuw nsw i64 %i.ev, 4
  %i.ey = add nuw nsw i64 %i.ev, 5
  %.pre6.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !5210, !noalias !5211
  %.pre8.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !5210, !noalias !5211
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i, %bb.ay
  %i.ez = phi i64 [ %.pre8.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ %i.ef, %bb.ay ] ; 3 uses
  %i.fa = phi ptr [ %.pre6.i.i.i, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ %i.eg, %bb.ay ] ; 3 uses
  %.sroa.056.2.i.i.i34.i.i.i.i = phi i64 [ %i.ex, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ 6, %bb.ay ] ; 2 uses
  %.sroa.058.0.i.i.i35.i.i.i.i = phi i64 [ %i.ey, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i33.i.i.i.i ], [ 7, %bb.ay ] ; 2 uses
  %.not68.i.i.i36.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i34.i.i.i.i, %i.ez
  br i1 %.not68.i.i.i36.i.i.i.i, label %bb.bb, label %.invoke.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.sroa.056.2.i.i.i34.i.i.i.i
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !5209, !noundef !6 ; 2 uses
  %.not.i.i.i37.i.i.i.i = icmp ne i64 %i.fc, 0
  %.not69.i.i.i38.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i35.i.i.i.i, %i.ez
  %or.cond.i.i.i39.i.i.i.i = select i1 %.not.i.i.i37.i.i.i.i, i1 %.not69.i.i.i38.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i39.i.i.i.i, label %bb.bc, label %.invoke.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.sroa.058.0.i.i.i35.i.i.i.i
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !5209, !noundef !6 ; 2 uses
  %.not61.i.i.i40.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not61.i.i.i40.i.i.i.i, label %.invoke.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i": ; preds = %bb.bc, %bb.aw
  %i.ff = phi i64 [ %i.el, %bb.aw ], [ %i.ez, %bb.bc ] ; 2 uses
  %i.fg = phi ptr [ %i.em, %bb.aw ], [ %i.fa, %bb.bc ] ; 2 uses
  %.sroa.10.0.in.i.i.i.i = phi i64 [ %.sroa.11.0.in.i.i.i.i, %bb.aw ], [ %i.fe, %bb.bc ] ; 2 uses
  %.sroa.8.0.in.i.i.i.i = phi i64 [ %.sroa.9.0.in.i.i.i.i, %bb.aw ], [ %i.fc, %bb.bc ] ; 2 uses
  %.sroa.0.0.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5212, !noalias !5213, !nonnull !6, !align !15, !noundef !6 ; 16 uses
  %.sroa.6.0.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !5212, !noalias !5213, !noundef !6 ; 18 uses
  %.sroa.8.0.i.i.i.i = add i64 %.sroa.8.0.in.i.i.i.i, -1 ; 11 uses
  %.sroa.10.0.i.i.i.i = add i64 %.sroa.10.0.in.i.i.i.i, -1 ; 10 uses
  %.not.i44.i.i.i.i = icmp ugt i64 %.sroa.8.0.i.i.i.i, %.sroa.10.0.i.i.i.i
  br i1 %.not.i44.i.i.i.i, label %.invoke319.i.i, label %bb.bd

bb.bd:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17h313a90aa0d04ad2cE.exit.i.i.i.i"
  %i.fh = icmp eq i64 %.sroa.8.0.i.i.i.i, 0
  br i1 %i.fh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not5.i.i.i.i.i = icmp ult i64 %.sroa.8.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %.not5.i.i.i.i.i, label %bb.bg, label %.split.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bg, %.split.i.i.i.i.i, %bb.bd
  %i.fi = icmp eq i64 %.sroa.10.0.i.i.i.i, 0
  br i1 %i.fi, label %bb.bj, label %bb.bh

.split.i.i.i.i.i:                                 ; preds = %bb.be
  %i.fj = icmp eq i64 %.sroa.8.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %i.fj, label %bb.bf, label %.invoke319.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !5214, !noalias !5215, !noundef !6
  %i.fm = icmp sgt i8 %i.fl, -65
  br i1 %i.fm, label %bb.bf, label %.invoke319.i.i

bb.bh:                                            ; preds = %bb.bf
  %.not6.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %.not6.i.i.i.i.i, label %bb.bi, label %.split7.i.i.i.i.i

.split7.i.i.i.i.i:                                ; preds = %bb.bh
  %i.fn = icmp eq i64 %.sroa.10.0.i.i.i.i, %.sroa.6.0.i.i.i.i
  br i1 %i.fn, label %bb.bj, label %.invoke319.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.10.0.i.i.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !5214, !noalias !5215, !noundef !6
  %i.fq = icmp sgt i8 %i.fp, -65
  br i1 %i.fq, label %bb.bj, label %.invoke319.i.i

bb.bj:                                            ; preds = %bb.bi, %.split7.i.i.i.i.i, %bb.bf
  %i.fr = sub i64 %.sroa.10.0.in.i.i.i.i, %.sroa.8.0.in.i.i.i.i ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.8.0.i.i.i.i ; 3 uses
  br i1 %i.da, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ft = zext i32 %i.cu to i64                   ; 2 uses
  %i.fu = icmp samesign ugt i64 %i.cy, %i.ft
  br i1 %i.fu, label %bb.bl, label %.invoke.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.fv = shl nuw nsw i64 %i.ft, 1                ; 2 uses
  %i.fw = or disjoint i64 %i.fv, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.056.2.i48.i.i.i.i = phi i64 [ %i.fv, %bb.bl ], [ 0, %bb.bj ] ; 2 uses
  %.sroa.058.0.i49.i.i.i.i = phi i64 [ %i.fw, %bb.bl ], [ 1, %bb.bj ] ; 2 uses
  %.not68.i50.i.i.i.i = icmp ult i64 %.sroa.056.2.i48.i.i.i.i, %i.ff
  br i1 %.not68.i50.i.i.i.i, label %bb.bn, label %.invoke.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.056.2.i48.i.i.i.i
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !5216, !noundef !6 ; 4 uses
  %.not.i51.i.i.i.i = icmp ne i64 %i.fy, 0
  %.not69.i52.i.i.i.i = icmp ult i64 %.sroa.058.0.i49.i.i.i.i, %i.ff
  %or.cond.i53.i.i.i.i = select i1 %.not.i51.i.i.i.i, i1 %.not69.i52.i.i.i.i, i1 false
  br i1 %or.cond.i53.i.i.i.i, label %bb.bo, label %.invoke.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.058.0.i49.i.i.i.i
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !5216, !noundef !6 ; 4 uses
  %.not61.i54.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not61.i54.i.i.i.i, label %.invoke.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gb = add i64 %i.fy, -1                       ; 11 uses
  %i.gc = add i64 %i.ga, -1                       ; 10 uses
  %.not.i56.i.i.i.i = icmp ugt i64 %i.gb, %i.gc
  br i1 %.not.i56.i.i.i.i, label %.invoke319.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gd = icmp eq i64 %i.gb, 0
  br i1 %i.gd, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not5.i57.i.i.i.i = icmp ult i64 %i.gb, %.sroa.6.0.i.i.i.i
  br i1 %.not5.i57.i.i.i.i, label %bb.bt, label %.split.i58.i.i.i.i

bb.bs:                                            ; preds = %bb.bt, %.split.i58.i.i.i.i, %bb.bq
  %i.ge = icmp eq i64 %i.gc, 0
  br i1 %i.ge, label %bb.bw, label %bb.bu

.split.i58.i.i.i.i:                               ; preds = %bb.br
  %i.gf = icmp eq i64 %i.gb, %.sroa.6.0.i.i.i.i
  br i1 %i.gf, label %bb.bs, label %.invoke319.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.gb
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !5217, !noalias !5215, !noundef !6
  %i.gi = icmp sgt i8 %i.gh, -65
  br i1 %i.gi, label %bb.bs, label %.invoke319.i.i

bb.bu:                                            ; preds = %bb.bs
  %.not6.i61.i.i.i.i = icmp ult i64 %i.gc, %.sroa.6.0.i.i.i.i
  br i1 %.not6.i61.i.i.i.i, label %bb.bv, label %.split7.i62.i.i.i.i

.split7.i62.i.i.i.i:                              ; preds = %bb.bu
  %i.gj = icmp eq i64 %i.gc, %.sroa.6.0.i.i.i.i
  br i1 %i.gj, label %bb.bw, label %.invoke319.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.gc
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !5217, !noalias !5215, !noundef !6
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %bb.bw, label %.invoke319.i.i

bb.bw:                                            ; preds = %bb.bv, %.split7.i62.i.i.i.i, %bb.bs
  %i.gn = sub nuw i64 %i.ga, %i.fy                ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.gb ; 2 uses
  %i.gp = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, i64 32) acquire, align 8, !noalias !5218
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i, label %bb.bx, !prof !19

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5218
  store ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, ptr %i.c, align 8, !noalias !5218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5218
  store ptr %i.c, ptr %i.b, align 8, !noalias !5218
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, i64 32), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @73, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75)
          to label %.noexc146.i.i unwind label %.loopexit50.i.i, !noalias !5178

.noexc146.i.i:                                    ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5218
  br label %_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i

_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit.i.i.i.i: ; preds = %.noexc146.i.i, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5218
  store i32 0, ptr %i.e, align 8, !noalias !5218
  store ptr %i.fs, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !5218
  store i64 %i.fr, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !5218
  store i64 0, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 8, !noalias !5218
  store i64 %i.fr, ptr %.sroa.917.0..sroa_idx.i.i.i.i, align 8, !noalias !5218
  store i8 1, ptr %.sroa.1118.0..sroa_idx.i.i.i.i, align 8, !noalias !5218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5218
  %_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E.val.i.i.i.i = load ptr, ptr @_ZN4anki4text15REMOTE_FILENAME17hf7d8851fe70bc3c5E, align 8, !noalias !5218, !nonnull !6, !noundef !6
end_hunk_3
begin_hunk_4_@"_ZN70_$LT$anki..typeanswer..Diff$u20$as$u20$anki..typeanswer..DiffTrait$GT$21get_expected_original17he4ff500fd998a75fE"
define void @"_ZN70_$LT$anki..typeanswer..Diff$u20$as$u20$anki..typeanswer..DiffTrait$GT$21get_expected_original17he4ff500fd998a75fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16926
  store i64 0, ptr %i.c, align 8, !noalias !16926
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16926
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16927
  store ptr %i.e, ptr %i.b, align 8, !noalias !16927
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !16927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16927
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h997622b0fe5f6488E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc.i unwind label %bb.b, !noalias !16926

.noexc.i:                                         ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !noalias !16927, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16927
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.j)
          to label %.noexc3.i unwind label %bb.b, !noalias !16926

.noexc3.i:                                        ; preds = %.noexc.i
  invoke void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h8809336a6e86f409E"(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN99_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$RF$char$GT$$GT$9from_iter17haca7f808c1ff8d7eE.exit" unwind label %bb.b, !noalias !16926

bb.b:                                             ; preds = %.noexc3.i, %.noexc.i, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %bb.d unwind label %bb.c, !noalias !16926

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !16926
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.k

"_ZN99_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$RF$char$GT$$GT$9from_iter17haca7f808c1ff8d7eE.exit": ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16926
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..typeanswer..Diff$u20$as$u20$anki..typeanswer..DiffTrait$GT$22render_expected_tokens17h33a02ee50fa22349E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  tail call void @_ZN4anki10typeanswer13render_tokens17h2377aad666011c5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..typeanswer..Diff$u20$as$u20$anki..typeanswer..DiffTrait$GT$3new17hf30f0d602754d550E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4anki10typeanswer9normalize17hbf78851e301dc852E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZN4anki10typeanswer9normalize17hbf78851e301dc852E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$alloc..vec..Vec$LT$char$GT$$GT$17hb213388ee098f5ceE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #51
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcdbfe1a7b2766784E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 {
bb.a:
  %.val1.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.pn = load i64, ptr %.val1.pn.in, align 8, !noundef !6
  %.val.pn.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pn = load ptr, ptr %.val.pn.in, align 8, !nonnull !6, !noundef !6
  %.pn = insertvalue { ptr, i64 } poison, ptr %.val.pn, 0
  %.merged = insertvalue { ptr, i64 } %.pn, i64 %.val1.pn, 1
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN73_$LT$$RF$alloc..string..String$u20$as$u20$anki..search..TryIntoSearch$GT$15try_into_search17h00645da1ea791cb3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 40)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  call void @_ZN4anki6search6parser5parse17h572bb13a822b2e02E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !range !38, !noundef !6
  %.not = icmp eq i64 %i.f, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775779, ptr %i.h, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17hd3962b4f45a4298eE"(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader.split, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread

.preheader.split:                                 ; preds = %bb.a
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit
  %i.a = add nuw i64 %.sroa.01.012, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %1
  br i1 %exitcond.not, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread, label %.lr.ph

_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread: ; preds = %bb.b, %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit, %.lr.ph, %.preheader.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader.split ], [ false, %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit ], [ true, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader.split, %bb.b
  %.sroa.01.012 = phi i64 [ %i.a, %bb.b ], [ 0, %.preheader.split ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.012 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.01.012 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val6 = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val8 = load i64, ptr %i.e, align 8, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %.val6, %.val8
  br i1 %.not.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread

_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit: ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val7 = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val7, i64 %.val6), !alias.scope !16931
  %.not10 = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not10, label %bb.b, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h809d94f0b230a953E"(ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %0, i64 noundef %1, i8 %2) unnamed_addr #9 {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 %1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN75_$LT$$u5b$T$u5d$$u20$as$u20$alloc..slice..SpecCloneIntoVec$LT$T$C$A$GT$$GT$10clone_into17h7763978482a0fef1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %.preheader.i, label %.thread.a

.thread.a:                                        ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call fastcc void @"_ZN4core3ptr52drop_in_place$LT$$u5b$alloc..string..String$u5d$$GT$17h7ddd97454ce2fc06E"(ptr noalias noundef nonnull align 8 %i.g, i64 noundef %i.d)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.thread.a
  %.sink7 = phi i64 [ %1, %.thread.a ], [ %i.b, %bb.a ] ; 4 uses
  %3 = icmp ult i64 %.sink7, 384307168202282326
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6
  %.not.i = icmp eq i64 %.sink7, 0
  br i1 %.not.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hec451798fbdb5568E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.01.i, 1         ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.sroa.0.01.i
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.01.i
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17he353992a3923d9abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  %exitcond.not.i = icmp eq i64 %i.h, %.sink7
  br i1 %exitcond.not.i, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hec451798fbdb5568E.exit", label %.lr.ph.i

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hec451798fbdb5568E.exit": ; preds = %.lr.ph.i, %.preheader.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sink7
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  tail call void @"_ZN101_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$I$GT$$GT$11spec_extend17h6e747fff291d624cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN75_$LT$anki..search..parser..PropertyKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17he2bdc37d96a49d1fE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #29 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !51, !noundef !6 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 11         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !51, !noundef !6 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 11
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
  ]

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17": ; preds = %bb.o, %bb.v, %bb.u, %bb.t, %bb.s, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit", %bb.n, %bb.q, %bb.p, %bb.j, %bb.a, %bb.r, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.n, %bb.d ], [ %i.s, %bb.e ], [ %i.x, %bb.f ], [ %i.ac, %bb.g ], [ %i.ah, %bb.h ], [ %i.am, %bb.i ], [ %i.cb, %bb.r ], [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.a ], [ %i.aw, %bb.k ], [ %i.bb, %bb.l ], [ %i.bg, %bb.m ], [ false, %bb.u ], [ true, %bb.q ], [ false, %bb.s ], [ false, %bb.n ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit" ], [ %i.cg, %bb.t ], [ %i.cl, %bb.v ], [ false, %bb.o ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !6
  %i.n = icmp eq i32 %i.k, %i.m
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !noundef !6
  %i.s = icmp eq i32 %i.p, %i.r
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !noundef !6
  %i.x = icmp eq i32 %i.u, %i.w
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !6
  %i.ac = icmp eq i32 %i.z, %i.ab
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 8, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8, !noundef !6
  %i.ah = fcmp oeq float %i.ae, %i.ag
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.i:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !noundef !6
  %i.am = icmp eq i32 %i.aj, %i.al
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.j:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !6
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.p, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.k:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load float, ptr %i.as, align 8, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load float, ptr %i.au, align 8, !noundef !6
  %i.aw = fcmp oeq float %i.at, %i.av
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.l:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load float, ptr %i.ax, align 8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load float, ptr %i.az, align 8, !noundef !6
  %i.bb = fcmp oeq float %i.ay, %i.ba
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.m:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load float, ptr %i.bc, align 8, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load float, ptr %i.be, align 8, !noundef !6
  %i.bg = fcmp oeq float %i.bd, %i.bf
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.n:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load float, ptr %i.bh, align 8, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load float, ptr %i.bj, align 8, !noundef !6
  %i.bl = fcmp oeq float %i.bi, %i.bk
  br i1 %i.bl, label %bb.s, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.o:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val11 = load i64, ptr %i.bm, align 8, !noundef !6 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.bn, align 8, !noundef !6
  %.not.i.i = icmp eq i64 %.val11, %.val13
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit": ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.bo, align 8, !nonnull !6, !noundef !6
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.bp, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val10, ptr nonnull readonly align 1 %.val12, i64 %.val11), !alias.scope !16941
  %i.bq = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bq, label %bb.u, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.p:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i8, ptr %i.br, align 4, !range !26, !noundef !6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = load i8, ptr %i.bu, align 4, !range !26, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bx = icmp eq i8 %i.bs, %i.bv
  br i1 %i.bx, label %bb.q, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.q:                                             ; preds = %bb.p
  %i.by = icmp eq i8 %i.bs, 0
  br i1 %i.by, label %bb.r, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %i.bt, align 1, !noundef !6
  %i.ca = load i8, ptr %i.bw, align 1, !noundef !6
  %i.cb = icmp eq i8 %i.bz, %i.ca
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.s:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.cc, align 8, !noundef !6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val9 = load i64, ptr %i.cd, align 8, !noundef !6
  %.not.i.i14 = icmp eq i64 %.val7, %.val9
  br i1 %.not.i.i14, label %bb.t, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load ptr, ptr %i.ce, align 8, !nonnull !6, !noundef !6
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.cf, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i16 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val6, ptr nonnull readonly align 1 %.val8, i64 %.val7), !alias.scope !16942
  %i.cg = icmp eq i32 %bcmp.i.i16, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.u:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit"
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load i64, ptr %i.ch, align 8, !noundef !6 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.ci, align 8, !noundef !6
  %.not.i.i18 = icmp eq i64 %.val3, %.val5
  br i1 %.not.i.i18, label %bb.v, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.cj, align 8, !nonnull !6, !noundef !6
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ck, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i20 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val4, i64 %.val3), !alias.scope !16943
  %i.cl = icmp eq i32 %bcmp.i.i20, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit17"
end_hunk_4
