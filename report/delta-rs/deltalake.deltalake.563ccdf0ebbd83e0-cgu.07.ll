inline.NumInlined: 7758
inline.NumDeleted: 2965
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s0_0EB1n_:bb.a

bb.x:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !92, !invariant.load !3, !noalias !2533 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.body.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !105, !invariant.load !3, !noalias !2533
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #27, !noalias !2533
  br label %.body.i.i

bb.z:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2533
  unreachable

bb.aa:                                            ; preds = %bb.p, %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %.body.i.i, %bb.aa
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.br, %bb.aa ], [ %.pn.i.i, %.body.i.i ] ; 2 uses
  %i.bs = load i8, ptr %i.b, align 1, !range !111, !alias.scope !2535, !noalias !2538, !noundef !3
  %.not.i = icmp eq i8 %i.bs, 2
  br i1 %.not.i, label %.body, label %bb.ab

bb.ab:                                            ; preds = %.body18
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %.body unwind label %bb.ae

bb.ac:                                            ; preds = %bb.w, %bb.v, %bb.s
  %storemerge.i.i = phi i8 [ 1, %bb.w ], [ 1, %bb.v ], [ 3, %bb.s ]
  store i8 %storemerge.i.i, ptr %i.ag, align 8, !noalias !2530
  %i.bt = load i8, ptr %i.b, align 1, !range !111, !alias.scope !2539, !noundef !3
  %.not.i23 = icmp eq i8 %i.bt, 2
  br i1 %.not.i23, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXNvNtNtCskQDtHcQtBkN_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull dereferenceable(2) %i.b)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2538
  unreachable

bb.af:                                            ; preds = %bb.ad, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i, %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %.body18, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.af ], [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body19, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_(ptr noundef nonnull align 8 %i.d) #37
          to label %.body31 unwind label %bb.ap

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2519
  br i1 %i.bd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias noundef nonnull %1)
          to label %bb.k unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = load i8, ptr %i.ag, align 8, !range !474, !noundef !3
  %cond.i26 = icmp eq i8 %i.bw, 3
  br i1 %cond.i26, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit33

bb.aj:                                            ; preds = %bb.ai
  %.val.i27 = load ptr, ptr %i.aj, align 8        ; 5 uses
  %.val1.i28 = load ptr, ptr %i.ak, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.bx = load ptr, ptr %.val1.i28, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i29, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27) ]
  invoke void %i.bx(ptr noundef nonnull %.val.i27)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i28, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit33, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i28, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i27) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit33

bb.an:                                            ; preds = %bb.ak
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i28, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.body31, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i28, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !105, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i27, i64 noundef range(i64 1, 0) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #27
  br label %.body31

.body31:                                          ; preds = %bb.ao, %bb.an, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cd, %bb.an ], [ %i.cd, %bb.ao ]
  %.val11 = load ptr, ptr %i.f, align 8, !nonnull !3, !align !39, !noundef !3
  %.val12 = load ptr, ptr %i.aa, align 8, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !3, !noundef !3
  invoke void %i.ck(ptr noundef %.val12)
          to label %common.resume unwind label %bb.ap, !inline_history !121

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit33: ; preds = %bb.am, %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load ptr, ptr %i.f, align 8, !nonnull !3, !align !39, !noundef !3
  %.val10 = load ptr, ptr %i.aa, align 8, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !3, !noundef !3
  call void %i.cm(ptr noundef %.val10), !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit: ; preds = %bb.g, %bb.f, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_.exit33
  ret void

bb.ap:                                            ; preds = %.body31, %bb.aq, %.body
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.aq:                                            ; preds = %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s0_0EBQ_(ptr noundef nonnull align 8 %2) #37
          to label %common.resume unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(912) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 3 uses
  %i.d = alloca [12 x i8], align 4                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [12 x i8], align 4                ; 3 uses
  %i.o = alloca [12 x i8], align 4                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [96 x i8], align 8                ; 5 uses
  %i.r = alloca [96 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7406.i.i.i.i = alloca [24 x i8], align 16 ; 6 uses
  %.sroa.8407.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.3.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %.sroa.5385.i.i.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.ai = alloca [72 x i8], align 8               ; 8 uses
  %i.aj = alloca [40 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 12 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 5 uses
  %i.an = alloca [176 x i8], align 8              ; 7 uses
  %i.ao = alloca [16 x i8], align 16              ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 16              ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [32 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 9 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 9 uses
  %i.bg = alloca [24 x i8], align 8               ; 9 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [28 x i8], align 4               ; 7 uses
  %i.bj = alloca [12 x i8], align 4               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [24 x i8], align 8               ; 9 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [28 x i8], align 4               ; 7 uses
  %i.bq = alloca [12 x i8], align 4               ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [32 x i8], align 8               ; 10 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 8 uses
  %i.by = alloca [24 x i8], align 8               ; 9 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.8306.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.cd = alloca [40 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 16              ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 9 uses
  %i.ci = alloca [16 x i8], align 16              ; 5 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 9 uses
  %i.cl = alloca [17 x i8], align 1               ; 6 uses
  %.sroa.545.i.i.i = alloca [80 x i8], align 16   ; 6 uses
  %i.cm = alloca [17 x i8], align 2               ; 6 uses
  %i.cn = alloca [12 x i8], align 4               ; 7 uses
  %i.co = alloca [96 x i8], align 16              ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 8 uses
  %i.cr = alloca [24 x i8], align 8               ; 8 uses
  %i.cs = alloca [64 x i8], align 8               ; 12 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [96 x i8], align 16              ; 7 uses
  %.sroa.5130.i.i = alloca [24 x i8], align 16    ; 5 uses
  %.sroa.7131.i.i = alloca [56 x i8], align 8     ; 4 uses
  %i.cw = alloca [96 x i8], align 16              ; 9 uses
  %.sroa.7.i.i = alloca [16 x i8], align 8        ; 5 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.10.sroa.8.i.i = alloca [16 x i8], align 1 ; 8 uses
  %i.cx = alloca [96 x i8], align 16              ; 10 uses
  %i.cy = alloca [64 x i8], align 8               ; 8 uses
  %i.cz = alloca [2 x i8], align 1                ; 8 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 5 uses
  %i.da = alloca [912 x i8], align 8              ; 41 uses
  %i.db = alloca [32 x i8], align 8               ; 9 uses
  %i.dc = alloca [16 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.dd = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.nb      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.de = extractvalue { ptr, ptr } %i.dd, 0      ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable16cleanup_metadata0s_0EBQ_(ptr noundef nonnull align 8 %2)
  br label %bb.mz

bb.d:                                             ; preds = %bb.b
  %i.dg = extractvalue { ptr, ptr } %i.dd, 1
  store ptr %i.de, ptr %i.dc, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  store ptr %i.dc, ptr %i.db, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dc, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr null, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %i.da, ptr noundef nonnull align 8 dereferenceable(912) %2, i64 912, i1 false)
  %i.dk = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 56 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 232 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 64 ; 14 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 153 ; 5 uses
  %.phi.trans.insert212.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 3 uses
  %.phi.trans.insert214.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 80 ; 3 uses
  %.phi.trans.insert216.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 88 ; 3 uses
  %.phi.trans.insert218.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 104 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.da, i64 224 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 233 ; 2 uses
  %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 234
  %i.dv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.10.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 154 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 152 ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 112 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0..sroa_idx.i178.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.6302.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.8303.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.4.0..sroa_idx.i174.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.5.0..sroa_idx.i175.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 72 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 176 ; 8 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.da, i64 200 ; 2 uses
  %.sroa.3.0..sroa_idx.i184.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.8306.0..sroa_idx307.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 184 ; 6 uses
  %.sroa.5.0..sroa_idx.i187.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.eh = getelementptr inbounds nuw i8, ptr %i.da, i64 128 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i57.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 136 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i58.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.6312.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.7313.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.8314.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.3.0..sroa_idx.i205.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0..sroa_idx.i206.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6320.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.8321.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.5323.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.4.0..sroa_idx.i200.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.5.0..sroa_idx.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %.sroa.5330.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.7327.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.8328.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.3.0..sroa_idx.i227.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i228.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6335.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.8336.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.sroa.5338.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4.0..sroa_idx.i220.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5.0..sroa_idx.i221.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.da, i64 144 ; 3 uses
  %.sroa.5340.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.6341.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6364.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.7365.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.8366.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.6373.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.8374.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4.0..sroa_idx.i253.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.5.0..sroa_idx.i254.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5385.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %.sroa.5395.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.7391.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8392.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.9393.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6400.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.8401.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5403.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0..sroa_idx.i283.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5.0..sroa_idx.i284.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.5352.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.6348.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.7349.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.8350.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.3.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6357.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.8358.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.5360.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4.0..sroa_idx.i267.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx.i268.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.545.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.545.i.i.i, i64 24
  %.sroa.398.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.599.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %.sroa.12.8..sroa_idx86.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.2102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.da, i64 896 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9123.sroa.12.0..sroa.9123.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 129
  %.sroa.9123.sroa.13.0..sroa.9123.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 130
  %.sroa.10124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  %.sroa.11125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 168
  %.sroa.13127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %.sroa.3129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.5130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.7131.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %.sroa.10.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.12108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.8135.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %.sroa.7134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %.sroa.9136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %3 = insertelement <2 x ptr> poison, ptr %i.ef, i64 0 ; 2 uses
  %4 = insertelement <2 x ptr> %3, ptr %i.ea, i64 1
  %5 = insertelement <2 x ptr> %3, ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, i64 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.mv, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2542
  %i.gf = load i8, ptr %i.dl, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.gf, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %bb.en, %bb.ec, %bb.at, %bb.ad, %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.gg = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.dk)
          to label %.noexc16 unwind label %bb.mt  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.gg, %.noexc16 ], [ %i.dk, %bb.e ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !range !40, !noundef !3
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1
  store i8 1, ptr %i.gi, align 1
  store i8 -128, ptr %i.gk, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.gl, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.gj, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.gf, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.cz, align 1, !noalias !2542
  store i8 %.sroa.3.0.i, ptr %i.dm, align 1, !noalias !2542
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.545.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5130.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7131.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.gm = load i8, ptr %i.dn, align 8, !range !2059, !noalias !2551, !noundef !3
  switch i8 %i.gm, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ad
    i8 4, label %bb.mb
  ]

bb.f:                                             ; preds = %.noexc
  %i.gn = load ptr, ptr %i.da, align 8, !noalias !2551, !nonnull !3, !align !39, !noundef !3
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 136
  %.val40.i.i = load ptr, ptr %i.go, align 8, !noalias !2555, !nonnull !3, !noundef !3
  %i.gp = getelementptr inbounds nuw i8, ptr %.val40.i.i, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dp, ptr noundef nonnull align 8 %i.gp)
          to label %bb.i unwind label %bb.h, !noalias !2555

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x, %bb.h
  %.pn32.pn.i.i = phi { ptr, i32 } [ %.pn32.i.i, %bb.x ], [ %i.gq, %bb.h ], [ %.pn27.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i ]
  store i8 2, ptr %i.dn, align 8, !noalias !2551
  br label %.body18

bb.h:                                             ; preds = %.invoke.i.i, %bb.ly, %bb.lc, %bb.f
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.gr = load i64, ptr %i.dp, align 8, !range !34, !noalias !2551, !noundef !3
  %i.gs = trunc nuw i64 %i.gr to i1
  br i1 %i.gs, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !2551
  %i.gt = load ptr, ptr %i.dq, align 8, !noalias !2551, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.gu = load i8, ptr %i.dr, align 8, !range !40, !noalias !2551, !noundef !3 ; 3 uses
  store ptr %i.gt, ptr %i.cu, align 8, !noalias !2551
  store i8 %i.gu, ptr %i.gc, align 8, !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !2556
  store i64 0, ptr %i.cr, align 8, !noalias !2556
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !2556
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !2556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !2556
  store i32 1610612768, ptr %i.gd, align 8, !noalias !2556
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !2556
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !2556
  store ptr %i.cr, ptr %i.cq, align 8, !noalias !2556
  store ptr @352, ptr %i.ge, align 8, !noalias !2556
  %i.gv = invoke noundef zeroext i1 @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cu, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %bb.l unwind label %.loopexit, !noalias !2563

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit59 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi61 = phi { ptr, i32 } [ %lpad.loopexit59, %.loopexit ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cr) #37
          to label %.body.i.i unwind label %bb.n, !noalias !2563

bb.l:                                             ; preds = %bb.j
  br i1 %i.gv, label %bb.m, label %bb.o, !prof !37

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #34
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp, !noalias !2563

.noexc.i.i.i.i:                                   ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2563
  unreachable

.thread.i.i:                                      ; preds = %bb.i
  %i.gx = load ptr, ptr %i.dq, align 8, !noalias !2551, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.gy = load i8, ptr %i.dr, align 8, !range !40, !noalias !2551, !noundef !3
  store ptr %i.gx, ptr %i.ds, align 8, !noalias !2551
  store i8 %i.gy, ptr %i.dt, align 8, !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.8.i.i)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.du, align 8, !noalias !2551, !nonnull !3, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ha, i64 16, i1 false), !noalias !2555
  store ptr %i.gz, ptr %.phi.trans.insert.i, align 8, !noalias !2551
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !noalias !2551
  store i8 1, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !noalias !2551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.10.sroa.8.0..sroa.10.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10.sroa.8.i.i, i64 16, i1 false), !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  br label %bb.ae

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !2564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !2556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !2565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !noalias !2572
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !2573
  %i.hb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3025) 24, i64 noundef range(i64 8, 129) 8) #27, !noalias !2573 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.p, label %bb.s, !prof !37

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34
          to label %.noexc.i.i53.i.i unwind label %bb.q, !noalias !2576

.noexc.i.i53.i.i:                                 ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cp) #37
          to label %.body.i.i unwind label %bb.r, !noalias !2576

bb.r:                                             ; preds = %bb.q
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !2576
  unreachable

.body.i.i:                                        ; preds = %bb.q, %bb.k
  %.pn30.i.i = phi { ptr, i32 } [ %lpad.phi61, %bb.k ], [ %i.hd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.gt, i8 %i.gu) #37
          to label %bb.x unwind label %bb.z, !noalias !2555

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !noalias !2577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !2565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8135.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  store i64 1, ptr %i.fz, align 8, !noalias !2551
  store ptr null, ptr %.sroa.2102.0..sroa_idx.i.i, align 8, !noalias !2551
  store ptr %i.hb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2551
  store ptr @11, ptr %.sroa.7134.0..sroa_idx.i.i, align 8, !noalias !2551
  store i32 3, ptr %.sroa.9136.0..sroa_idx.i.i, align 8, !noalias !2551
  store i64 1, ptr %i.cs, align 8, !noalias !2551
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hg = trunc nuw i8 %i.gu to i1
  br i1 %i.hg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2551
  %i.hi = and i64 %i.hh, 9223372036854775807
  %i.hj = icmp eq i64 %i.hi, 0
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a
          cleanup
  br label %.loopexit.split-lp432.i.i.i.i

.loopexit.split-lp432.i.i.i.i.loopexit.split-lp:  ; preds = %bb.gf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp432.i.i.i.i

.loopexit.split-lp432.i.i.i.i:                    ; preds = %.loopexit.split-lp432.i.i.i.i.loopexit, %.loopexit.split-lp432.i.i.i.i.loopexit.split-lp, %.loopexit431.i.i.i.i
  %lpad.phi435.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit433.i.i.i.i, %.loopexit431.i.i.i.i ], [ %lpad.loopexit, %.loopexit.split-lp432.i.i.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp432.i.i.i.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  br label %bb.iu

.thread526.i.i.i.i:                               ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  %i.wn = load i64, ptr %i.dz, align 8, !noalias !2595, !noundef !3
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !2595
  %i.wo = load i64, ptr %i.dz, align 8, !noalias !2595, !noundef !3
  %i.wp = call i64 @llvm.smin.i64(i64 %i.wm, i64 %i.wo)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.thread526.i.i.i.i
  %i.wq = phi i64 [ %i.wp, %bb.gj ], [ %i.wn, %.thread526.i.i.i.i ]
  store i64 %i.wq, ptr %i.dz, align 8, !noalias !2595
  %.val165.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57.i.i, align 8, !noalias !2595, !nonnull !3, !noundef !3 ; 2 uses
  %.val166.i.i.i.i = load i64, ptr %i.eu, align 8, !noalias !2595, !noundef !3 ; 2 uses
  %.idx419.i.i.i.i = mul nuw nsw i64 %.val166.i.i.i.i, 96
  %i.wr = getelementptr inbounds nuw i8, ptr %.val165.i.i.i.i, i64 %.idx419.i.i.i.i ; 3 uses
  %i.ws = icmp eq i64 %.val166.i.i.i.i, 0
  br i1 %i.ws, label %.loopexit424.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gk, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wt = phi ptr [ %i.wu, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val165.i.i.i.i, %bb.gk ] ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 96 ; 5 uses
  %i.wv = load i64, ptr %i.wt, align 8, !range !1996, !alias.scope !2782, !noalias !2787, !noundef !3
  %i.ww = icmp eq i64 %i.wv, -9223372036854775808
  br i1 %i.ww, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.wx = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.wt)
          to label %.noexc242.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2599 ; 2 uses

.noexc242.i.i.i.i:                                ; preds = %bb.gl
  %i.wy = extractvalue { i64, i64 } %i.wx, 0
  %i.wz = trunc nuw i64 %i.wy to i1
  %i.xa = extractvalue { i64, i64 } %i.wx, 1      ; 3 uses
  %i.xb = load i64, ptr %i.dz, align 8            ; 2 uses
  %.not.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sle i64 %i.xa, %i.xb
  %or.cond.not = select i1 %i.wz, i1 %.not.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.gm, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc242.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.xc = icmp eq ptr %i.wu, %i.wr
  br i1 %i.xc, label %.loopexit424.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %.noexc242.i.i.i.i
  %i.xd = icmp eq ptr %i.wu, %i.wr
  br i1 %i.xd, label %.loopexit423.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xe = ptrtoint ptr %i.wr to i64
  %i.xf = ptrtoint ptr %i.wu to i64
  %i.xg = sub nuw i64 %i.xe, %i.xf
  %i.xh = udiv exact i64 %i.xg, 96
  br label %bb.go

bb.go:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.gn
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gn ], [ %i.xp, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xa, %bb.gn ], [ %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.xi = getelementptr inbounds nuw [96 x i8], ptr %i.wu, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.xj = load i64, ptr %i.xi, align 8, !range !1996, !alias.scope !2805, !noalias !2810, !noundef !3
  %i.xk = icmp eq i64 %i.xj, -9223372036854775808
  br i1 %i.xk, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.xl = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.xi)
          to label %.noexc243.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !2599 ; 2 uses

.noexc243.i.i.i.i:                                ; preds = %bb.gp
  %i.xm = extractvalue { i64, i64 } %i.xl, 0
  %i.xn = trunc nuw i64 %i.xm to i1
  br i1 %i.xn, label %bb.gq, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

bb.gq:                                            ; preds = %.noexc243.i.i.i.i
  %i.xo = extractvalue { i64, i64 } %i.xl, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.xo, %i.xb
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.xo)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gq, %.noexc243.i.i.i.i, %bb.go
  %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %bb.go ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gq ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %.noexc243.i.i.i.i ] ; 2 uses
  %i.xp = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.xq = icmp eq i64 %i.xp, %i.xh
  br i1 %i.xq, label %.loopexit423.i.i.i.i, label %bb.go

.loopexit.i.i.i.i:                                ; preds = %bb.gp
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.gl
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit423.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.gm
  %.sroa.3.0.i.i.i240.ph.i.i.i.i = phi i64 [ %i.xa, %bb.gm ], [ %.sroa.0.0.i.i.i.i.i9.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.3.0.i.i.i240.ph.i.i.i.i, ptr %i.ef, align 8, !noalias !2595
  %i.xr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2595
  %i.xs = icmp ult i64 %i.xr, 2
  br i1 %i.xs, label %bb.gr, label %bb.gy

bb.gr:                                            ; preds = %.loopexit423.i.i.i.i
  %i.xt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2595 ; 2 uses
  %i.xu = icmp ult i8 %i.xt, 3
  br i1 %i.xu, label %bb.gu, label %bb.gs, !prof !2185

bb.gs:                                            ; preds = %bb.gr
  %i.xv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE) #35
          to label %bb.gu unwind label %bb.gt, !noalias !2599

bb.gt:                                            ; preds = %bb.gs
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.gu:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.0.0.i245.i.i.i.i = phi i8 [ %i.xt, %bb.gr ], [ %i.xv, %bb.gs ] ; 2 uses
  %i.xx = icmp eq i8 %.sroa.0.0.i245.i.i.i.i, 0
  br i1 %i.xx, label %bb.gy, label %bb.gw

bb.gv:                                            ; preds = %bb.gw
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.gw:                                            ; preds = %bb.gu
  %i.xz = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.ya = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xz, i8 noundef %.sroa.0.0.i245.i.i.i.i)
          to label %bb.gx unwind label %bb.gv, !noalias !2599

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.ya, label %bb.hi, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gu, %.loopexit423.i.i.i.i
  %i.yb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2595
  %.not420.i.i.i.i = icmp eq i8 %i.yb, 0
  br i1 %.not420.i.i.i.i, label %bb.gz, label %bb.hl

bb.gz:                                            ; preds = %bb.gy
  %i.yc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2595 ; 2 uses
  %i.yd = icmp ult i64 %i.yc, 6
  call void @llvm.assume(i1 %i.yd)
  %i.ye = icmp samesign ugt i64 %i.yc, 3
  br i1 %i.ye, label %bb.hb, label %bb.hl

bb.ha:                                            ; preds = %bb.hb
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.hb:                                            ; preds = %bb.gz
  %i.yg = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 32
  %.val157.i.i.i.i = load ptr, ptr %i.yh, align 8, !noalias !2599, !nonnull !3, !noundef !3
  %i.yi = getelementptr i8, ptr %i.yg, i64 40
  %.val158.i.i.i.i = load i64, ptr %i.yi, align 8, !noalias !2599, !noundef !3
  store i64 4, ptr %i.as, align 8, !alias.scope !2815, !noalias !2595
  store ptr %.val157.i.i.i.i, ptr %.sroa.6373.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2815, !noalias !2595
  store i64 %.val158.i.i.i.i, ptr %.sroa.8374.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2815, !noalias !2595
  %i.yj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.hc unwind label %bb.ha, !noalias !2599 ; 2 uses

bb.hc:                                            ; preds = %bb.hb
  %i.yk = extractvalue { ptr, ptr } %i.yj, 0      ; 2 uses
  %i.yl = extractvalue { ptr, ptr } %i.yj, 1      ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = load ptr, ptr %i.ym, align 8, !invariant.load !3, !noalias !2599, !nonnull !3
  %i.yo = invoke noundef zeroext i1 %i.yn(ptr noundef %i.yk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %bb.he unwind label %bb.hd, !noalias !2599

bb.hd:                                            ; preds = %bb.hc
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.he:                                            ; preds = %bb.hc
  br i1 %i.yo, label %bb.hf, label %bb.hl

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2595
  %i.yq = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2595
  store <2 x ptr> %5, ptr %i.ao, align 16, !noalias !2595
  store ptr @224, ptr %i.ap, align 8, !noalias !2595
  store ptr %i.ao, ptr %i.ff, align 8, !noalias !2595
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !2595
  store ptr @54, ptr %i.fg, align 8, !noalias !2595
  store i64 1, ptr %i.ar, align 8, !alias.scope !2819, !noalias !2822
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i253.i.i.i.i, align 8, !alias.scope !2819, !noalias !2822
  store i64 1, ptr %.sroa.5.0..sroa_idx.i254.i.i.i.i, align 8, !alias.scope !2819, !noalias !2822
  store ptr %i.yr, ptr %i.fh, align 8, !alias.scope !2819, !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !2595
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.yg, ptr noundef nonnull %i.yk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %bb.hh unwind label %bb.hg, !noalias !2599

bb.hg:                                            ; preds = %bb.hf
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2595
  br label %bb.iu

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2595
  br label %bb.hl

bb.hi:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2595
  %i.yt = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2595
  store <2 x ptr> %5, ptr %i.at, align 16, !noalias !2595
  store ptr @224, ptr %i.au, align 8, !noalias !2595
  store ptr %i.at, ptr %i.fd, align 8, !noalias !2595
  store ptr %i.au, ptr %i.av, align 8, !noalias !2595
  store ptr @54, ptr %i.fe, align 8, !noalias !2595
  store i64 1, ptr %i.aw, align 8, !noalias !2595
  store ptr %i.av, ptr %.sroa.6364.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store i64 1, ptr %.sroa.7365.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr %i.yu, ptr %.sroa.8366.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  invoke fastcc void @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0sa_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aw)
          to label %bb.hk unwind label %bb.hj, !noalias !2599

bb.hj:                                            ; preds = %bb.hi
  %i.yv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2595
  br label %bb.iu

bb.hk:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2595
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hh, %bb.he, %bb.gz, %bb.gy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2595
  store i8 0, ptr %i.dy, align 8, !noalias !2595
  %.sroa.0377.0.copyload.i.i.i.i = load i64, ptr %i.eh, align 8, !noalias !2595
  %.sroa.5378.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57.i.i, align 8, !noalias !2595, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.6379.0.copyload.i.i.i.i = load i64, ptr %i.eu, align 8, !noalias !2595 ; 2 uses
  %i.yw = icmp ult i64 %.sroa.6379.0.copyload.i.i.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.yw)
  %i.yx = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5378.0.copyload.i.i.i.i, i64 %.sroa.6379.0.copyload.i.i.i.i
  store ptr %.sroa.5378.0.copyload.i.i.i.i, ptr %i.al, align 8, !alias.scope !2825, !noalias !2828
  store i64 %.sroa.0377.0.copyload.i.i.i.i, ptr %i.fi, align 8, !alias.scope !2825, !noalias !2828
  store ptr %.sroa.5378.0.copyload.i.i.i.i, ptr %i.fj, align 8, !alias.scope !2825, !noalias !2828
  store ptr %i.yx, ptr %i.fk, align 8, !alias.scope !2825, !noalias !2828
  invoke void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2h_5ErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
          to label %bb.hn unwind label %bb.hm, !noalias !2599

bb.hm:                                            ; preds = %bb.hl
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2595
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2595
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.am, i64 32, i1 false), !alias.scope !2833, !noalias !2835
  store <2 x ptr> %4, ptr %i.fm, align 8, !alias.scope !2838, !noalias !2839
  store i64 0, ptr %i.an, align 8, !alias.scope !2838, !noalias !2839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2595
  %i.yz = invoke { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_map9FilterMapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2X_5ErrorEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00NCB3U_s5_0ENtB7_9StreamExt5boxedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.an)
          to label %bb.hq unwind label %bb.hp, !noalias !2599 ; 2 uses

bb.ho:                                            ; preds = %bb.hp, %bb.hm
  %.pn68.i.i.i.i = phi { ptr, i32 } [ %i.za, %bb.hp ], [ %i.yy, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2595
  br label %bb.iu

bb.hp:                                            ; preds = %bb.hn
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hq:                                            ; preds = %bb.hn
  %i.zb = extractvalue { ptr, ptr } %i.yz, 0
  %i.zc = extractvalue { ptr, ptr } %i.yz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2595
  %i.zd = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_13delete_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, ptr noundef nonnull %i.zb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.zc)
          to label %bb.hs unwind label %bb.hr, !noalias !2599 ; 2 uses

bb.hr:                                            ; preds = %bb.hq
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hs:                                            ; preds = %bb.hq
  %i.zf = extractvalue { ptr, ptr } %i.zd, 0
  %i.zg = extractvalue { ptr, ptr } %i.zd, 1
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2p_5ErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt11try_collectINtNtBE_3vec3VecB2l_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aj, ptr noundef nonnull %i.zf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.zg)
          to label %bb.hv unwind label %bb.ht, !noalias !2599

bb.ht:                                            ; preds = %bb.hs
  %i.zh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hr
  %.pn70.i.i.i.i = phi { ptr, i32 } [ %i.ze, %bb.hr ], [ %i.zh, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2595
  br label %.body.i.i.i.i

bb.hv:                                            ; preds = %bb.hs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8306.0..sroa_idx307.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2595
  br label %bb.iy

.loopexit424.i.i.i.i:                             ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk
  %i.zi = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2595
  %i.zj = icmp ult i64 %i.zi, 2
  br i1 %i.zj, label %bb.hw, label %bb.id

bb.hw:                                            ; preds = %.loopexit424.i.i.i.i
  %i.zk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2595 ; 2 uses
  %i.zl = icmp ult i8 %i.zk, 3
  br i1 %i.zl, label %bb.hz, label %bb.hx, !prof !2185

bb.hx:                                            ; preds = %bb.hw
  %i.zm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE) #35
          to label %bb.hz unwind label %bb.hy, !noalias !2599

bb.hy:                                            ; preds = %bb.hx
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.hz:                                            ; preds = %bb.hx, %bb.hw
  %.sroa.0.0.i259.i.i.i.i = phi i8 [ %i.zk, %bb.hw ], [ %i.zm, %bb.hx ] ; 2 uses
  %i.zo = icmp eq i8 %.sroa.0.0.i259.i.i.i.i, 0
  br i1 %i.zo, label %bb.id, label %bb.ib

bb.ia:                                            ; preds = %bb.ib
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.ib:                                            ; preds = %bb.hz
  %i.zq = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.zr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zq, i8 noundef %.sroa.0.0.i259.i.i.i.i)
          to label %bb.ic unwind label %bb.ia, !noalias !2599

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.zr, label %bb.in, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hz, %.loopexit424.i.i.i.i
  %i.zs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2595
  %.not422.i.i.i.i = icmp eq i8 %i.zs, 0
  br i1 %.not422.i.i.i.i, label %bb.ie, label %bb.it

bb.ie:                                            ; preds = %bb.id
  %i.zt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2595 ; 2 uses
  %i.zu = icmp ult i64 %i.zt, 6
  call void @llvm.assume(i1 %i.zu)
  %i.zv = icmp samesign ugt i64 %i.zt, 3
  br i1 %i.zv, label %bb.ig, label %bb.it

bb.if:                                            ; preds = %bb.ig
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.ig:                                            ; preds = %bb.ie
  %i.zx = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.zy = getelementptr i8, ptr %i.zx, i64 32
  %.val155.i.i.i.i = load ptr, ptr %i.zy, align 8, !noalias !2599, !nonnull !3, !noundef !3
  %i.zz = getelementptr i8, ptr %i.zx, i64 40
  %.val156.i.i.i.i = load i64, ptr %i.zz, align 8, !noalias !2599, !noundef !3
  store i64 4, ptr %i.bb, align 8, !alias.scope !2840, !noalias !2595
  store ptr %.val155.i.i.i.i, ptr %.sroa.6357.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2840, !noalias !2595
  store i64 %.val156.i.i.i.i, ptr %.sroa.8358.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2840, !noalias !2595
  %i.aaa = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ih unwind label %bb.if, !noalias !2599 ; 2 uses

bb.ih:                                            ; preds = %bb.ig
  %i.aab = extractvalue { ptr, ptr } %i.aaa, 0    ; 2 uses
  %i.aac = extractvalue { ptr, ptr } %i.aaa, 1    ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aae = load ptr, ptr %i.aad, align 8, !invariant.load !3, !noalias !2599, !nonnull !3
  %i.aaf = invoke noundef zeroext i1 %i.aae(ptr noundef %i.aab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.ij unwind label %bb.ii, !noalias !2599

bb.ii:                                            ; preds = %bb.ih
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.ij:                                            ; preds = %bb.ih
  br i1 %i.aaf, label %bb.ik, label %bb.it

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2595
  %i.aah = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2595
  store ptr %i.dz, ptr %i.ax, align 8, !noalias !2595
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5360.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr @225, ptr %i.ay, align 8, !noalias !2595
  store ptr %i.ax, ptr %i.fv, align 8, !noalias !2595
  store ptr %i.ay, ptr %i.az, align 8, !noalias !2595
  store ptr @54, ptr %i.fw, align 8, !noalias !2595
  store i64 1, ptr %i.ba, align 8, !alias.scope !2844, !noalias !2847
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i267.i.i.i.i, align 8, !alias.scope !2844, !noalias !2847
  store i64 1, ptr %.sroa.5.0..sroa_idx.i268.i.i.i.i, align 8, !alias.scope !2844, !noalias !2847
  store ptr %i.aai, ptr %i.fx, align 8, !alias.scope !2844, !noalias !2847
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zx, ptr noundef nonnull %i.aab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aac, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba)
          to label %bb.im unwind label %bb.il, !noalias !2599

bb.il:                                            ; preds = %bb.ik
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2595
  br label %bb.iu

bb.im:                                            ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2595
  br label %bb.it

bb.in:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2595
  %i.aak = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s1_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2595
  store ptr %i.dz, ptr %i.bc, align 8, !noalias !2595
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5352.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr @225, ptr %i.bd, align 8, !noalias !2595
  store ptr %i.bc, ptr %i.ft, align 8, !noalias !2595
  store ptr %i.bd, ptr %i.be, align 8, !noalias !2595
  store ptr @54, ptr %i.fu, align 8, !noalias !2595
  store i64 1, ptr %i.bf, align 8, !noalias !2595
  store ptr %i.be, ptr %.sroa.6348.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store i64 1, ptr %.sroa.7349.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr %i.aal, ptr %.sroa.8350.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %.noexc35 unwind label %bb.ir

.noexc35:                                         ; preds = %bb.in
  %i.aam = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2850
  %i.aan = icmp eq i8 %i.aam, 0
  br i1 %i.aan, label %bb.io, label %bb.is

bb.io:                                            ; preds = %.noexc35
  %i.aao = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2850 ; 2 uses
  %i.aap = icmp ult i64 %i.aao, 6
  call void @llvm.assume(i1 %i.aap), !noalias !2599
  %i.aaq = icmp samesign ugt i64 %i.aao, 3
  br i1 %i.aaq, label %bb.ip, label %bb.is
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  %i.bl = alloca [8 x i8], align 8                ; 5 uses
  %i.bm = alloca [64 x i8], align 8               ; 11 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.638.i.i.i = alloca [80 x i8], align 16   ; 6 uses
  %.sroa.931.sroa.6.i.i.i = alloca [80 x i8], align 8 ; 8 uses
  %i.bo = alloca [17 x i8], align 4               ; 8 uses
  %i.bp = alloca [96 x i8], align 16              ; 8 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [64 x i8], align 8               ; 10 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.9.sroa.7.i.i = alloca [16 x i8], align 1 ; 7 uses
  %i.bw = alloca [96 x i8], align 16              ; 10 uses
  %i.bx = alloca [2 x i8], align 1                ; 8 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 5 uses
  %i.by = alloca [2552 x i8], align 8             ; 92 uses
  %i.bz = alloca [32 x i8], align 8               ; 15 uses
  %i.ca = alloca [16 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.cb = invoke { ptr, ptr } @_RNvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.qo      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.cc = extractvalue { ptr, ptr } %i.cb, 0      ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBQ_13RawDeltaTable17create_checkpoint0s_0EBQ_(ptr noundef nonnull align 8 %2)
  br label %bb.qm

bb.d:                                             ; preds = %bb.b
  %i.ce = extractvalue { ptr, ptr } %i.cb, 1
  store ptr %i.cc, ptr %i.ca, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  store ptr %i.ce, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store ptr %i.ca, ptr %i.bz, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr null, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2552) %i.by, ptr noundef nonnull align 8 dereferenceable(2552) %2, i64 2552, i1 false)
  %i.ci = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 2544 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2520 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 5 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 147 ; 5 uses
  %.phi.trans.insert63.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 72 ; 2 uses
  %.phi.trans.insert66.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2512 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2521 ; 2 uses
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2522
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.10.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.3.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.sroa.443.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 148 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 145 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 146 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 128 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %.sroa.4.0..sroa_idx.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.5.0..sroa_idx.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 88 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 1012
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bc, i64 1011
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.by, i64 168 ; 16 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.by, i64 1179 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2464 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.by, i64 1200 ; 32 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2424 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.by, i64 2240 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.by, i64 1178 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.by, i64 1174 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.by, i64 1168 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.by, i64 216 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.by, i64 224 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.by, i64 1180 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 19 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 176 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.ei = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ek = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %.sroa.13.sroa.10.0..sroa.13.16..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.14.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.sroa.6.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i.i.i.i, i64 16
  %.sroa.3311.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.by, i64 1177 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.12320.0..sroa_idx321.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.4.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 1173 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.by, i64 184 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 192 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 1172 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.by, i64 240 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.10335.0..sroa_idx336.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.3339.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.2338.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.by, i64 328 ; 10 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8347.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.8347.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.10349.0..sroa_idx350.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.3353.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx344.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.by, i64 1176 ; 5 uses
  %.sroa.21.0..sroa_idx342.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sroa.14375.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.14375.sroa.9.0..sroa.14375.16..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %.sroa.3385.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3385.i.i.i.i.i, i64 24
  %.sroa.3392.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.by, i64 352 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.by, i64 1171 ; 9 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.by, i64 392 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.by, i64 200 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.20.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.23.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %.sroa.25.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %.sroa.18394.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.19395.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.21396.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.22397.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.sroa.26.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %.sroa.27398.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.28.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %.sroa.29.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %.sroa.30.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %.sroa.31.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.fg = getelementptr inbounds nuw i8, ptr %i.by, i64 376 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.5420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.7422.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %.sroa.9424.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %.sroa.9410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %.sroa.10425.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %.sroa.10411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %.sroa.11426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %.sroa.12427.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %.sroa.12412.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %.sroa.13428.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %.sroa.15430.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %.sroa.17432.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %.sroa.5406.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.7408.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %.sroa.13413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 224
  %.sroa.17.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.10403.0..sroa_idx404.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.fj = getelementptr inbounds nuw i8, ptr %i.by, i64 1170 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.by, i64 432 ; 5 uses
  %.sroa.4438.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 440
  %.sroa.5439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 472
  %.sroa.8450.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1208 ; 7 uses
  %.sroa.10452.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1248 ; 2 uses
  %.sroa.3455.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.by, i64 1240 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.by, i64 1224 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.by, i64 1232
  %i.fo = getelementptr inbounds nuw i8, ptr %i.by, i64 952 ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %.sroa.14473.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.14473.sroa.9.0..sroa.14473.16..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %.sroa.3483.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3483.i.i.i.i.i, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.fr = getelementptr inbounds nuw i8, ptr %i.by, i64 1175 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.by, i64 960 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.by, i64 1169 ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.10496.0..sroa_idx497.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.by, i64 1280 ; 4 uses
  %.sroa.8511.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1288 ; 2 uses
  %.sroa.10513.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1328 ; 2 uses
  %.sroa.3516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.by, i64 1320
  %i.fx = getelementptr inbounds nuw i8, ptr %i.by, i64 1304
  %i.fy = getelementptr inbounds nuw i8, ptr %i.by, i64 1312
  %i.fz = getelementptr inbounds nuw i8, ptr %i.by, i64 1720 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.by, i64 2248 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.8.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0..sroa_idx20.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %i.by, i64 2256 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2264 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2272 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2296 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.by, i64 2432 ; 7 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2456 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.by, i64 2440 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.by, i64 2448
  %.sroa.339.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.by, i64 1000 ; 4 uses
  %.sroa.4546.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1008
  %.sroa.5547.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1016
  %.sroa.6548.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1040
  %.sroa.3556.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5557.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %.sroa.4559.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1216
  %i.gh = getelementptr inbounds nuw i8, ptr %i.by, i64 1292
  %i.gi = getelementptr inbounds nuw i8, ptr %i.by, i64 1296
  %i.gj = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.gl = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %.sroa.14573.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.3583.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3583.i.i.i.i.i, i64 24
  %.sroa.42.0..sroa_idx.i.i.i243.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i244.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i245.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i246.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.42.0..sroa_idx.i.i.i192.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.53.0..sroa_idx.i.i.i193.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i.i.i194.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.5.0..sroa_idx.i.i.i195.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %i.by, i64 400 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i149.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.53.0..sroa_idx.i.i.i150.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i.i151.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5.0..sroa_idx.i.i.i152.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 22
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.847.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.746.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.sroa.948.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %3 = insertelement <2 x ptr> poison, ptr %i.fk, i64 0 ; 2 uses
  %4 = insertelement <2 x ptr> %3, ptr %i.fl, i64 1
  %5 = insertelement <2 x ptr> %3, ptr %i.ez, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.qi, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2995
  %i.hj = load i8, ptr %i.cj, align 8, !range !111, !noundef !3 ; 2 uses
  switch i8 %i.hj, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
    i8 1, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i
    i8 2, label %.noexc
  ], !prof !112

default.unreachable:                              ; preds = %bb.ka, %bb.jv, %bb.ca, %bb.ak, %bb.ad, %.noexc, %bb.e
  unreachable

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.hk = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7ContextE10initializeCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.ci)
          to label %.noexc16 unwind label %bb.qg  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %.noexc, label %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i

_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.hk, %.noexc16 ], [ %i.ci, %bb.e ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 68 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !range !40, !noundef !3
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 69 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1
  store i8 1, ptr %i.hm, align 1
  store i8 -128, ptr %i.ho, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i, %.noexc16, %bb.e
  %.sroa.3.0.i = phi i8 [ %i.hp, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ undef, %.noexc16 ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i8 [ %i.hn, %_RNvYNCNKNvNtNtCskQDtHcQtBkN_5tokio7runtime7context7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread2.i ], [ 2, %.noexc16 ], [ %i.hj, %bb.e ]
  store i8 %.sroa.0.0.i, ptr %i.bx, align 1, !noalias !2995
  store i8 %.sroa.3.0.i, ptr %i.ck, align 1, !noalias !2995
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.638.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3000
  %i.hq = load i8, ptr %i.cl, align 8, !range !474, !noalias !3004, !noundef !3
  switch i8 %i.hq, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ad
  ]

bb.f:                                             ; preds = %.noexc
  %i.hr = load ptr, ptr %i.by, align 8, !noalias !3004, !nonnull !3, !align !39, !noundef !3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 136
  %.val13.i.i = load ptr, ptr %i.hs, align 8, !noalias !3008, !nonnull !3, !noundef !3
  %i.ht = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noundef nonnull align 8 %i.ht)
          to label %bb.i unwind label %bb.h, !noalias !3008

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints17create_checkpoint0ECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.x, %bb.h
  %.pn7.pn.i.i = phi { ptr, i32 } [ %.pn7.i.i, %bb.x ], [ %i.hu, %bb.h ], [ %.pn2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints17create_checkpoint0ECs7p2uQeJxui2_9deltalake.exit.i.i ]
  store i8 2, ptr %i.cl, align 8, !noalias !3004
  br label %.body18

bb.h:                                             ; preds = %bb.qa, %bb.py, %bb.f
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.hv = load i64, ptr %i.cn, align 8, !range !34, !noalias !3004, !noundef !3
  %i.hw = trunc nuw i64 %i.hv to i1
  br i1 %i.hw, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3004
  %i.hx = load ptr, ptr %i.co, align 8, !noalias !3004, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.hy = load i8, ptr %i.cp, align 8, !range !40, !noalias !3004, !noundef !3 ; 3 uses
  store ptr %i.hx, ptr %i.bv, align 8, !noalias !3004
  store i8 %i.hy, ptr %i.hg, align 8, !noalias !3004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3009
  store i64 0, ptr %i.bs, align 8, !noalias !3009
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !3009
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !3009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3009
  store i32 1610612768, ptr %i.hh, align 8, !noalias !3009
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !3009
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !3009
  store ptr %i.bs, ptr %i.br, align 8, !noalias !3009
  store ptr @352, ptr %i.hi, align 8, !noalias !3009
  %i.hz = invoke noundef zeroext i1 @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.l unwind label %.loopexit68, !noalias !3016

.loopexit68:                                      ; preds = %bb.j
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp69:                             ; preds = %bb.m
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp69, %.loopexit68
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit70, %.loopexit68 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp69 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs) #37
          to label %.body.i.i unwind label %bb.n, !noalias !3016

bb.l:                                             ; preds = %bb.j
  br i1 %i.hz, label %bb.m, label %bb.o, !prof !37

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #34
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp69, !noalias !3016

.noexc.i.i.i.i:                                   ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3016
  unreachable

.thread.i.i:                                      ; preds = %bb.i
  %i.ib = load ptr, ptr %i.co, align 8, !noalias !3004, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.ic = load i8, ptr %i.cp, align 8, !range !40, !noalias !3004, !noundef !3
  store ptr %i.ib, ptr %i.cq, align 8, !noalias !3004
  store i8 %i.ic, ptr %i.cr, align 8, !noalias !3004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !3004
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.7.i.i)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.cs, align 8, !noalias !3004, !nonnull !3, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ie, i64 16, i1 false), !noalias !3008
  store ptr %i.id, ptr %.phi.trans.insert.i, align 8, !noalias !3004
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !noalias !3004
  store i8 1, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !noalias !3004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.sroa.7.i.i, i64 16, i1 false), !noalias !3004
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.931.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  br label %bb.ae

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !3017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !3025
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !3026
  %i.if = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 3025) 24, i64 noundef range(i64 8, 129) 8) #27, !noalias !3026 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.p, label %bb.s, !prof !37

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34
          to label %.noexc.i.i19.i.i unwind label %bb.q, !noalias !3029

.noexc.i.i19.i.i:                                 ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq) #37
          to label %.body.i.i unwind label %bb.r, !noalias !3029

bb.r:                                             ; preds = %bb.q
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3029
  unreachable

.body.i.i:                                        ; preds = %bb.q, %bb.k
  %.pn5.i.i = phi { ptr, i32 } [ %lpad.phi72, %bb.k ], [ %i.ih, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.hx, i8 %i.hy) #37
          to label %bb.x unwind label %bb.z, !noalias !3008

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !noalias !3030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3018
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.847.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !3004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  store i64 1, ptr %i.hf, align 8, !noalias !3004
  store ptr null, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !3004
  store ptr %i.if, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3004
  store ptr @11, ptr %.sroa.746.0..sroa_idx.i.i, align 8, !noalias !3004
  store i32 3, ptr %.sroa.948.0..sroa_idx.i.i, align 8, !noalias !3004
  store i64 1, ptr %i.bt, align 8, !noalias !3004
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ik = trunc nuw i8 %i.hy to i1
  br i1 %i.ik, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.il = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3004
  %i.im = and i64 %i.il, 9223372036854775807
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.u, !prof !46

bb.u:                                             ; preds = %bb.t
  %i.io = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc.i.i unwind label %bb.y, !noalias !3008
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.fo, !noalias !3164

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i148.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !3165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3158
  call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  %.val.i.i.i156.i.i.i.i.i = load ptr, ptr %i.gz, align 8, !alias.scope !3169, !noalias !3170, !noundef !3 ; 4 uses
  %.val1.i.i.i157.i.i.i.i.i = load ptr, ptr %i.ha, align 8, !alias.scope !3169, !noalias !3170 ; 6 uses
  %i.op = icmp eq ptr %.val.i.i.i156.i.i.i.i.i, null
  br i1 %i.op, label %bb.fp, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i157.i.i.i.i.i) ]
  %i.oq = load ptr, ptr %.val1.i.i.i157.i.i.i.i.i, align 8, !invariant.load !3, !noalias !3171 ; 2 uses
  %.not.i.i.i.i.i.i158.i.i.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i.i.i.i158.i.i.i.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  invoke void %i.oq(ptr noundef nonnull %.val.i.i.i156.i.i.i.i.i)
          to label %bb.fk unwind label %bb.fm, !noalias !3171

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.or = getelementptr inbounds nuw i8, ptr %.val1.i.i.i157.i.i.i.i.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !range !92, !invariant.load !3, !noalias !3171 ; 2 uses
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.fp, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1.i.i.i157.i.i.i.i.i, i64 16
  %i.ov = load i64, ptr %i.ou, align 8, !range !105, !invariant.load !3, !noalias !3171
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i156.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.os, i64 noundef range(i64 1, 536870913) %i.ov) #27, !noalias !3171
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fj
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1.i.i.i157.i.i.i.i.i, i64 8
  %i.oy = load i64, ptr %i.ox, align 8, !range !92, !invariant.load !3, !noalias !3171 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i157.i.i.i.i.i, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !range !105, !invariant.load !3, !noalias !3171
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i156.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.oy, i64 noundef range(i64 1, 536870913) %i.pb) #27, !noalias !3171
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.fo:                                            ; preds = %.body.i.i153.i.i.i.i.i
  %i.pc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3172
  unreachable

bb.fp:                                            ; preds = %bb.fl, %bb.fk, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i148.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i148.i.i.i.i.i)
  store i64 -9223372036854775722, ptr %i.r, align 16, !alias.scope !3173, !noalias !3071
  br label %bb.el

bb.fq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit147.i.i.i.i.i
  %.sroa.14375.sroa.9.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14375.sroa.9.0..sroa.14375.16..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !alias.scope !3177, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3385.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3385.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.14375.16..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !3071
  %.not.i164.i.i.i.i.i = icmp eq i64 %i.ol, -9223372036854775711
  br i1 %.not.i164.i.i.i.i.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3385.i.i.i.i.i, i64 80, i1 false), !noalias !3071
  store i64 %i.ol, ptr %i.r, align 16, !alias.scope !3178, !noalias !3071
  store i64 %.sroa.14375.sroa.9.0.copyload.i.i.i.i.i, ptr %.sroa.3392.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3178, !noalias !3071
  br label %bb.el

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3385.i.i.i.i.i, i64 40, i1 false), !noalias !3071
  store i8 1, ptr %i.fa, align 1, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 16 dereferenceable(40) %i.fc, i64 40, i1 false), !noalias !3071
  %i.pd = load ptr, ptr %i.eb, align 8, !noalias !3071, !nonnull !3, !noundef !3
  %i.pe = load ptr, ptr %i.ec, align 8, !noalias !3071, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ak, ptr noundef nonnull align 4 dereferenceable(17) %i.ed, i64 17, i1 false), !noalias !3071
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 120
  %i.pg = load ptr, ptr %i.pf, align 8, !invariant.load !3, !noalias !3075, !nonnull !3
  %i.ph = invoke { ptr, ptr } %i.pg(ptr noundef nonnull %i.pd, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.ak)
          to label %bb.fu unwind label %bb.ft, !noalias !3075 ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3071
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit170.i.i.i.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.pj = extractvalue { ptr, ptr } %i.ph, 0      ; 6 uses
  %i.pk = extractvalue { ptr, ptr } %i.ph, 1      ; 4 uses
  store ptr %i.pj, ptr %i.fd, align 8, !noalias !3071
  store ptr %i.pk, ptr %i.fe, align 8, !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3071
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pj) ]
  %i.pl = atomicrmw add ptr %i.pj, i64 1 monotonic, align 8, !noalias !3075
  %i.pm = icmp slt i64 %i.pl, 0
  br i1 %i.pm, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.trap()
  unreachable

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pk) ]
  store ptr %i.pj, ptr %i.aj, align 8, !noalias !3071
  store ptr %i.pk, ptr %i.ff, align 8, !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3071
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %bb.fx unwind label %bb.gl, !noalias !3075

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !3071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !3071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3071
  store i64 0, ptr %i.ag, align 8, !noalias !3071
  store i64 -9223372036854775808, ptr %.sroa.18394.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store i64 -9223372036854775807, ptr %.sroa.19395.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store i64 0, ptr %.sroa.21396.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22397.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store i64 8192, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store ptr %i.pj, ptr %.sroa.27398.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store ptr %i.pk, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store i64 10485760, ptr %.sroa.29.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store i64 8, ptr %.sroa.30.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store ptr null, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3071
  %.val135.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !noalias !3071, !nonnull !3, !noundef !3 ; 4 uses
  %i.pn = atomicrmw add ptr %.val135.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !3075
  %i.po = icmp slt i64 %i.pn, 0
  br i1 %i.po, label %bb.fy, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i.i.i.i: ; preds = %bb.fx
  store ptr %.val135.i.i.i.i.i, ptr %i.af, align 8, !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3071
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterProperties7builder(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.ad)
          to label %bb.ga unwind label %bb.fz, !noalias !3075

bb.fz:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i.i.i.i
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3071
  %i.pq = atomicrmw sub ptr %.val135.i.i.i.i.i, i64 1 release, align 8, !noalias !3182
  %i.pr = icmp eq i64 %i.pq, 1
  br i1 %i.pr, label %bb.gh, label %bb.gj

bb.ga:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  store i32 1, ptr %i.fh, align 8, !alias.scope !3190, !noalias !3192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 56, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9410.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9424.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10411.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10425.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11426.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12412.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12427.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !3071
  %i.ps = load <4 x i8>, ptr %.sroa.17432.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3193, !noalias !3071
  %i.pt = load <2 x i64>, ptr %.sroa.5420.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3193, !noalias !3071
  %i.pu = load <2 x i64>, ptr %.sroa.7422.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3193, !noalias !3071
  %i.pv = load <2 x i64>, ptr %.sroa.13428.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3193, !noalias !3071
  %i.pw = load <2 x i64>, ptr %.sroa.15430.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3193, !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3071
  store <2 x i64> %i.pt, ptr %.sroa.5406.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store <2 x i64> %i.pu, ptr %.sroa.7408.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store <2 x i64> %i.pv, ptr %.sroa.13413.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store <2 x i64> %i.pw, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  store <4 x i8> %i.ps, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  invoke void @_RNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB5_16AsyncArrowWriterNtNtB5_5store19ParquetObjectWriterE7try_newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([520 x i8]) align 8 captures(address) dereferenceable(520) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.ag, ptr noundef nonnull %.val135.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.ae)
          to label %bb.gb unwind label %bb.gg, !noalias !3075

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3071
  %i.px = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !3194, !noalias !3197, !noundef !3 ; 2 uses
  %i.py = icmp eq i64 %i.px, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8401.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 32, i1 false), !noalias !3071
  br i1 %i.py, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %.sroa.5439.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(480) %.sroa.10403.0..sroa_idx404.i.i.i.i.i, i64 480, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3071
  store i8 1, ptr %i.fj, align 2, !noalias !3071
  store i64 %i.px, ptr %i.fk, align 8, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4438.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8401.i.i.i.i.i, i64 32, i1 false), !noalias !3071
  store <2 x ptr> %5, ptr %i.dw, align 8, !noalias !3071
  store i8 0, ptr %.sroa.10452.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  br label %bb.gq

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8401.i.i.i.i.i, i64 32, i1 false), !noalias !3071
  store i64 -9223372036854775742, ptr %i.r, align 16, !alias.scope !3199, !noalias !3202
  br label %bb.ge

bb.ge:                                            ; preds = %bb.ny, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219.i.i.i.i.i, %bb.gd
  %.sroa.21.3.i.i.i.i.i = phi ptr [ %.sroa.21.0.i.i.i.i.i, %bb.gd ], [ %.sroa.21.10.i.i.i.i.i, %bb.ny ], [ %.sroa.21.10.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219.i.i.i.i.i ] ; 4 uses
  %.sroa.0340.3.i.i.i.i.i = phi ptr [ %.sroa.0340.0.i.i.i.i.i, %bb.gd ], [ %.sroa.0340.10.i.i.i.i.i, %bb.ny ], [ %.sroa.0340.10.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219.i.i.i.i.i ] ; 4 uses
  store i8 0, ptr %i.fj, align 2, !noalias !3071
  call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  call void @llvm.experimental.noalias.scope.decl(metadata !3207)
  %i.pz = load ptr, ptr %i.fd, align 8, !alias.scope !3210, !noalias !3071, !nonnull !3, !noundef !3
  %i.qa = atomicrmw sub ptr %i.pz, i64 1 release, align 8, !noalias !3211
  %i.qb = icmp eq i64 %i.qa, 1
  br i1 %i.qb, label %bb.gf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.gf:                                            ; preds = %bb.ge
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fd) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.nr, !noalias !3075

bb.gg:                                            ; preds = %bb.ga
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3071
  br label %bb.gi

bb.gh:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #35
          to label %bb.gj unwind label %bb.ev, !noalias !3075

bb.gi:                                            ; preds = %bb.gj, %bb.gg
  %.pn35.pn647.i.i.i.i.i = phi { ptr, i32 } [ %i.pp, %bb.gj ], [ %i.qc, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3071
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3071
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer5store19ParquetObjectWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(224) %i.ag) #37
          to label %bb.gi unwind label %bb.ev, !noalias !3075

bb.gk:                                            ; preds = %bb.ou, %bb.nz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i, %bb.gi
  %.sroa.21.4.i.i.i.i.i = phi ptr [ %.sroa.21.9.i.i.i.i.i, %bb.ou ], [ %.sroa.21.9.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i ], [ %.sroa.21.10.i.i.i.i.i, %bb.nz ], [ %.sroa.21.0.i.i.i.i.i, %bb.gi ]
  %.sroa.0340.4.i.i.i.i.i = phi ptr [ %.sroa.0340.9.i.i.i.i.i, %bb.ou ], [ %.sroa.0340.9.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i ], [ %.sroa.0340.10.i.i.i.i.i, %bb.nz ], [ %.sroa.0340.0.i.i.i.i.i, %bb.gi ]
  %.pn86.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn83.pn.i.i.i.i.i, %bb.ou ], [ %.pn83.pn.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i ], [ %i.aag, %bb.nz ], [ %.pn35.pn647.i.i.i.i.i, %bb.gi ]
  store i8 0, ptr %i.fj, align 2, !noalias !3071
  br label %bb.gn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i: ; preds = %bb.gm, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3071
  br label %bb.gn

bb.gl:                                            ; preds = %bb.fw
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3071
  %i.qe = atomicrmw sub ptr %i.pj, i64 1 release, align 8, !noalias !3212
  %i.qf = icmp eq i64 %i.qe, 1
  br i1 %i.qf, label %bb.gm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i unwind label %bb.ev, !noalias !3075

bb.gn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i, %bb.gk
  %.sroa.21.5.i.i.i.i.i = phi ptr [ %.sroa.21.4.i.i.i.i.i, %bb.gk ], [ %.sroa.21.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i ] ; 2 uses
  %.sroa.0340.5.i.i.i.i.i = phi ptr [ %.sroa.0340.4.i.i.i.i.i, %bb.gk ], [ %.sroa.0340.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i ] ; 2 uses
  %.pn86.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn86.pn.i.i.i.i.i, %bb.gk ], [ %i.qd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit168.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  call void @llvm.experimental.noalias.scope.decl(metadata !3220)
  %i.qg = load ptr, ptr %i.fd, align 8, !alias.scope !3223, !noalias !3071, !nonnull !3, !noundef !3
  %i.qh = atomicrmw sub ptr %i.qg, i64 1 release, align 8, !noalias !3224
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.go, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit170.i.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fd) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit170.i.i.i.i.i unwind label %bb.ev, !noalias !3075

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit170.i.i.i.i.i: ; preds = %bb.nr, %bb.go, %bb.gn, %bb.ft
  %.sroa.21.6.i.i.i.i.i = phi ptr [ %.sroa.21.29.i.i.i.i.i, %bb.nr ], [ %.sroa.21.0.i.i.i.i.i, %bb.ft ], [ %.sroa.21.5.i.i.i.i.i, %bb.go ], [ %.sroa.21.5.i.i.i.i.i, %bb.gn ] ; 2 uses
  %.sroa.0340.6.i.i.i.i.i = phi ptr [ %.sroa.0340.29.i.i.i.i.i, %bb.nr ], [ %.sroa.0340.0.i.i.i.i.i, %bb.ft ], [ %.sroa.0340.5.i.i.i.i.i, %bb.go ], [ %.sroa.0340.5.i.i.i.i.i, %bb.gn ] ; 2 uses
  %.pn90.i.i.i.i.i = phi { ptr, i32 } [ %i.aab, %bb.nr ], [ %i.pi, %bb.ft ], [ %.pn86.pn.pn.i.i.i.i.i, %bb.go ], [ %.pn86.pn.pn.i.i.i.i.i, %bb.gn ] ; 2 uses
  %i.qj = load i8, ptr %i.fa, align 1, !range !40, !noalias !3071, !noundef !3
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.ov, label %.body264.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %.body264.i.i.i.i.i, %bb.ns, %bb.fn, %bb.fm, %.body.i.i153.i.i.i.i.i, %bb.fb, %bb.ew, %bb.ei
  %.sroa.21.7.i.i.i.i.i = phi ptr [ %.sroa.21.31.i.i.i.i.i, %.body264.i.i.i.i.i ], [ %.sroa.21.30.i.i.i.i.i, %bb.ns ], [ %.sroa.8347.sroa.8.0.copyload358.i.i.i.i.i, %bb.ei ], [ %.sroa.21.0.i.i.i.i.i, %.body.i.i153.i.i.i.i.i ], [ %.sroa.21.0.i.i.i.i.i, %bb.fm ], [ %.sroa.21.0.i.i.i.i.i, %bb.fn ], [ %.sroa.21.0.i.i.i.i.i, %bb.fb ], [ %.sroa.21.0.i.i.i.i.i, %bb.ew ] ; 2 uses
  %.sroa.0340.7.i.i.i.i.i = phi ptr [ %.sroa.0340.31.i.i.i.i.i, %.body264.i.i.i.i.i ], [ %.sroa.0340.30.i.i.i.i.i, %bb.ns ], [ %.sroa.8347.sroa.0.0.copyload356.i.i.i.i.i, %bb.ei ], [ %.sroa.0340.0.i.i.i.i.i, %.body.i.i153.i.i.i.i.i ], [ %.sroa.0340.0.i.i.i.i.i, %bb.fm ], [ %.sroa.0340.0.i.i.i.i.i, %bb.fn ], [ %.sroa.0340.0.i.i.i.i.i, %bb.fb ], [ %.sroa.0340.0.i.i.i.i.i, %bb.ew ]
  %.pn94.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn92.i.i.i.i.i, %.body264.i.i.i.i.i ], [ %i.aac, %bb.ns ], [ %i.no, %bb.ei ], [ %lpad.phi62, %.body.i.i153.i.i.i.i.i ], [ %i.ow, %bb.fm ], [ %i.ow, %bb.fn ], [ %i.ok, %bb.fb ], [ %i.oh, %bb.ew ] ; 2 uses
  %i.ql = load i8, ptr %i.ex, align 8, !range !40, !noalias !3071, !noundef !3
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.ow, label %bb.eo

bb.gp:                                            ; preds = %bb.gq
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3071
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.dw) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i unwind label %bb.ev, !noalias !3075

bb.gq:                                            ; preds = %bb.gc, %bb.ce
  %.sroa.21.2.i.i.i.i.i = phi ptr [ %.sroa.21.0.i.i.i.i.i, %bb.gc ], [ undef, %bb.ce ] ; 5 uses
  %.sroa.0340.2.i.i.i.i.i = phi ptr [ %.sroa.0340.0.i.i.i.i.i, %bb.gc ], [ undef, %bb.ce ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3071
  invoke fastcc void @_RNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtB7_16AsyncArrowWriterNtNtB7_5store19ParquetObjectWriterE5write0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ac, ptr noundef nonnull align 8 %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.gr unwind label %bb.gp, !noalias !3075

bb.gr:                                            ; preds = %bb.gq
  %i.qo = load i64, ptr %i.ac, align 8, !range !3225, !noalias !3071, !noundef !3 ; 3 uses
  %i.qp = icmp eq i64 %i.qo, 9
  br i1 %i.qp, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3071
  br label %.thread.i.i.i.i

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3455.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3455.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3071
  %i.qq = load i8, ptr %.sroa.10452.0..sroa_idx.i.i.i.i.i, align 8, !range !474, !noalias !3071, !noundef !3
  %cond.i.i.i.i.i.i = icmp eq i8 %i.qq, 3
  %i.qr = load i8, ptr %i.fl, align 8, !range !474
  %cond.i.i.i.i.i.i.i = icmp eq i8 %i.qr, 3
  %or.cond = select i1 %cond.i.i.i.i.i.i, i1 %cond.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.gu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gt
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !noalias !3071 ; 5 uses
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.fn, align 8, !noalias !3071, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.qs = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !3, !noalias !3075 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.qs(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.gw unwind label %bb.gy, !noalias !3075

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.qt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !range !92, !invariant.load !3, !noalias !3075 ; 2 uses
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.qw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !range !105, !invariant.load !3, !noalias !3075
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.qu, i64 noundef range(i64 1, 536870913) %i.qx) #27, !noalias !3075
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gv
  %i.qy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !range !92, !invariant.load !3, !noalias !3075 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.rc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !range !105, !invariant.load !3, !noalias !3075
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ra, i64 noundef range(i64 1, 536870913) %i.rd) #27, !noalias !3075
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit274.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.gx, %bb.gw, %bb.gt
  %.not.i173.i.i.i.i.i = icmp eq i64 %i.qo, 8
  br i1 %.not.i173.i.i.i.i.i, label %bb.ha, label %bb.hd

bb.ha:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %.val134.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !noalias !3071, !nonnull !3, !noundef !3 ; 2 uses
  %i.re = atomicrmw add ptr %.val134.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !3075
  %i.rf = icmp slt i64 %i.re, 0
  br i1 %i.rf, label %bb.hb, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i: ; preds = %bb.ha
  store ptr %.val134.i.i.i.i.i, ptr %i.fo, align 8, !noalias !3071
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ht, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i
  %.sroa.21.8.i.i.i.i.i = phi ptr [ %.sroa.21.2.i.i.i.i.i, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i ], [ %.sroa.21.12.i.i.i.i.i, %bb.ht ] ; 2 uses
  %.sroa.0340.8.i.i.i.i.i = phi ptr [ %.sroa.0340.2.i.i.i.i.i, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i ], [ %.sroa.0340.12.i.i.i.i.i, %bb.ht ] ; 2 uses
  %.sroa.14473.sroa.9.0.i.i.i.i.i = phi i64 [ undef, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit175.i.i.i.i.i ], [ %.sroa.14473.sroa.9.2.i.i.i.i.i, %bb.ht ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3071
  store i8 0, ptr %i.fa, align 1, !noalias !3071
end_hunk_3
begin_hunk_4_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable17create_checkpoint0s_0EB1n_:bb.a
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200.i.i.i.i.i, i64 16
  %i.sx = load i64, ptr %i.sw, align 8, !range !105, !invariant.load !3, !noalias !3252
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i199.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.su, i64 noundef range(i64 1, 536870913) %i.sx) #27, !noalias !3252
  br label %bb.is

bb.ip:                                            ; preds = %bb.im
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200.i.i.i.i.i, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !range !92, !invariant.load !3, !noalias !3252 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 0
  br i1 %i.tb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.tc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i200.i.i.i.i.i, i64 16
  %i.td = load i64, ptr %i.tc, align 8, !range !105, !invariant.load !3, !noalias !3252
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i199.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ta, i64 noundef range(i64 1, 536870913) %i.td) #27, !noalias !3252
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ir:                                            ; preds = %.body.i.i196.i.i.i.i.i
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !3253
  unreachable

bb.is:                                            ; preds = %bb.io, %bb.in, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i191.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i191.i.i.i.i.i)
  br label %bb.jn

bb.it:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit190.i.i.i.i.i
  %.sroa.14473.sroa.9.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14473.sroa.9.0..sroa.14473.16..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !3071 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3483.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3483.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(56) %.sroa.14473.16..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !3071
  %.not.i207.i.i.i.i.i = icmp eq i64 %i.sn, -9223372036854775711
  br i1 %.not.i207.i.i.i.i.i, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3483.i.i.i.i.i, i64 80, i1 false), !noalias !3071
  br label %bb.jn

bb.iv:                                            ; preds = %bb.it
  store i8 1, ptr %i.ea, align 8, !noalias !3071
  store i8 1, ptr %i.fr, align 1, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fs, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3483.i.i.i.i.i, i64 40, i1 false), !noalias !3071
  store i8 1, ptr %i.fa, align 1, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 16 dereferenceable(40) %i.fq, i64 40, i1 false), !noalias !3071
  %i.tf = load i64, ptr %i.fs, align 8, !range !1996, !noalias !3071, !noundef !3
  %.not48.i.i.i.i.i = icmp eq i64 %i.tf, -9223372036854775808
  br i1 %.not48.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store i8 0, ptr %i.fr, align 1, !noalias !3071
  store i8 1, ptr %i.ft, align 1, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dw, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3483.i.i.i.i.i, i64 40, i1 false), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3071
  %.val133.i.i.i.i.i = load ptr, ptr %i.fm, align 8, !noalias !3071, !nonnull !3, !noundef !3 ; 8 uses
  %i.tg = atomicrmw add ptr %.val133.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !3075
  %i.th = icmp slt i64 %i.tg, 0
  br i1 %i.th, label %bb.ix, label %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208.i.i.i.i.i

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.trap()
  unreachable

_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208.i.i.i.i.i: ; preds = %bb.iw
  store ptr %.val133.i.i.i.i.i, ptr %i.y, align 8, !noalias !3071
  %.val137.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !noalias !3071, !nonnull !3, !noundef !3 ; 4 uses
  %i.ti = icmp eq ptr %.val133.i.i.i.i.i, %.val137.i.i.i.i.i
  br i1 %i.ti, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread670.i.i.i.i.i, label %bb.iy

bb.iy:                                            ; preds = %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  %i.tj = getelementptr inbounds nuw i8, ptr %.val133.i.i.i.i.i, i64 24
  %i.tk = load i64, ptr %i.tj, align 8, !alias.scope !3264, !noalias !3265, !noundef !3 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.val137.i.i.i.i.i, i64 24
  %i.tm = load i64, ptr %i.tl, align 8, !alias.scope !3266, !noalias !3267, !noundef !3
  %i.tn = icmp eq i64 %i.tk, %i.tm
  br i1 %i.tn, label %bb.iz, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i

bb.iz:                                            ; preds = %bb.iy
  %i.to = getelementptr inbounds nuw i8, ptr %.val137.i.i.i.i.i, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %.val133.i.i.i.i.i, i64 16
  %i.tq = load ptr, ptr %i.to, align 8, !alias.scope !3266, !noalias !3267, !nonnull !3, !noundef !3
  %i.tr = load ptr, ptr %i.tp, align 8, !alias.scope !3264, !noalias !3265, !nonnull !3, !noundef !3
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tu = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ts, ptr noundef nonnull %i.tt, i64 noundef %i.tk)
          to label %.noexc209.i.i.i.i.i unwind label %bb.jb, !noalias !3075

.noexc209.i.i.i.i.i:                              ; preds = %bb.iz
  br i1 %i.tu, label %bb.ja, label %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread_crit_edge.i.i.i.i.i

.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread_crit_edge.i.i.i.i.i: ; preds = %.noexc209.i.i.i.i.i
  %.pre699.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !3268, !noalias !3071
  br label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i

bb.ja:                                            ; preds = %.noexc209.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %.val133.i.i.i.i.i, i64 32
  %i.tw = getelementptr inbounds nuw i8, ptr %.val137.i.i.i.i.i, i64 32
  %i.tx = invoke noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tw)
          to label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.jb, !noalias !3075

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.ty = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  call void @llvm.experimental.noalias.scope.decl(metadata !3276)
  %i.tz = load ptr, ptr %i.y, align 8, !alias.scope !3279, !noalias !3071, !nonnull !3, !noundef !3
  %i.ua = atomicrmw sub ptr %i.tz, i64 1 release, align 8, !noalias !3280
  %i.ub = icmp eq i64 %i.ua, 1
  br i1 %i.ub, label %bb.jc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit212.i.i.i.i.i

bb.jc:                                            ; preds = %bb.jb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit212.i.i.i.i.i unwind label %bb.ev, !noalias !3075

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.ja
  %.pre700.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !3071 ; 2 uses
  br i1 %i.tx, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread670.i.i.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread670.i.i.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208.i.i.i.i.i
  %i.uc = phi ptr [ %.val133.i.i.i.i.i, %_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch6schema.exit208.i.i.i.i.i ], [ %.pre700.i.i.i.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %i.ud = atomicrmw sub ptr %i.uc, i64 1 release, align 8, !noalias !3281
  %i.ue = icmp eq i64 %i.ud, 1
  br i1 %i.ue, label %bb.jd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i

bb.jd:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread670.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i unwind label %bb.jf, !noalias !3075

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread_crit_edge.i.i.i.i.i, %bb.iy
  %i.uf = phi ptr [ %.pre699.i.i.i.i.i, %.noexc209._RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread_crit_edge.i.i.i.i.i ], [ %.val133.i.i.i.i.i, %bb.iy ], [ %.pre700.i.i.i.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.ug = atomicrmw sub ptr %i.uf, i64 1 release, align 8, !noalias !3288
  %i.uh = icmp eq i64 %i.ug, 1
  br i1 %i.uh, label %bb.je, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i

bb.je:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i unwind label %bb.jf, !noalias !3075

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit212.i.i.i.i.i: ; preds = %bb.jf, %bb.jc, %bb.jb
  %.pn64.i.i.i.i.i = phi { ptr, i32 } [ %i.ui, %bb.jf ], [ %i.ty, %bb.jb ], [ %i.ty, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3071
  br label %bb.hq

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit212.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i: ; preds = %bb.jd, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread670.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3071
  store i8 0, ptr %i.ft, align 1, !noalias !3071
  br label %bb.jk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i: ; preds = %bb.je, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3071
  %.val138.i.i.i.i.i = load ptr, ptr %i.fo, align 8, !noalias !3071, !nonnull !3, !noundef !3 ; 2 uses
  %i.uj = atomicrmw add ptr %.val138.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !3075
  %i.uk = icmp slt i64 %i.uj, 0
  br i1 %i.uk, label %bb.jg, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.jg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit216.i.i.i.i.i
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dw, ptr noundef nonnull %.val138.i.i.i.i.i, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ji unwind label %bb.jh, !noalias !3075

bb.jh:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3071
  br label %bb.hq

bb.ji:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.um = load i64, ptr %i.x, align 16, !range !2168, !alias.scope !3289, !noalias !3292, !noundef !3 ; 2 uses
  %.not.i217.i.i.i.i.i = icmp eq i64 %i.um, -9223372036854775711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8494.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fu, i64 40, i1 false), !noalias !3071
  br i1 %.not.i217.i.i.i.i.i, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3071
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i
  %.sroa.8494.i.sink.i.i.i.i = phi ptr [ %.sroa.8494.i.i.i.i.i, %bb.jj ], [ %i.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit214.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8494.i.sink.i.i.i.i, i64 40, i1 false), !noalias !3071
  store <2 x ptr> %4, ptr %i.fv, align 8, !noalias !3071
  store i8 0, ptr %.sroa.10513.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  br label %bb.hf

bb.jl:                                            ; preds = %bb.ji
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3353.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.10496.0..sroa_idx497.i.i.i.i.i, i64 48, i1 false), !noalias !3071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8494.i.i.i.i.i, i64 40, i1 false), !noalias !3071
  store i64 %i.um, ptr %i.r, align 16, !alias.scope !3294, !noalias !3071
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jq, %bb.jl
  %.sroa.21.17.i.i.i.i.i = phi ptr [ %.sroa.21.12.i.i.i.i.i, %bb.jq ], [ %.sroa.21.11.i.i.i.i.i, %bb.jl ] ; 2 uses
  %.sroa.0340.17.i.i.i.i.i = phi ptr [ %.sroa.0340.12.i.i.i.i.i, %bb.jq ], [ %.sroa.0340.11.i.i.i.i.i, %bb.jl ] ; 2 uses
  %i.un = load i8, ptr %i.ft, align 1, !range !40, !noalias !3071, !noundef !3
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.js, label %bb.jr

.thread.i.i.i.i.i:                                ; preds = %bb.iv
  store i8 0, ptr %i.fj, align 2, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.dw, ptr noundef nonnull align 8 dereferenceable(520) %i.fk, i64 520, i1 false), !noalias !3071
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10533.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11534.i.i.i.i.i)
  br label %.thread.i.i.i.i.i.i

bb.jn:                                            ; preds = %bb.iu, %bb.is
  %.sink779.i.i.i.i.i = phi i64 [ %i.sn, %bb.iu ], [ -9223372036854775722, %bb.is ]
  %.sroa.14473.sroa.9.0.copyload.sink.i.i.i.i.i = phi i64 [ %.sroa.14473.sroa.9.0.copyload.i.i.i.i.i, %bb.iu ], [ %.sroa.14473.sroa.9.1.i.i.i.i.i, %bb.is ]
  store i64 %.sink779.i.i.i.i.i, ptr %i.r, align 16, !noalias !3071
  store i64 %.sroa.14473.sroa.9.0.copyload.sink.i.i.i.i.i, ptr %.sroa.3392.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3071
  br label %bb.jo

bb.jo:                                            ; preds = %bb.mm, %bb.lv, %bb.jr, %bb.jn
  %.sroa.21.19.i.i.i.i.i = phi ptr [ %.sroa.21.11.i.i.i.i.i, %bb.jn ], [ %.sroa.21.18752.i.i.i.i.i, %bb.lv ], [ %.sroa.21.25.i.i.i.i.i, %bb.mm ], [ %.sroa.21.17.i.i.i.i.i, %bb.jr ] ; 3 uses
  %.sroa.0340.19.i.i.i.i.i = phi ptr [ %.sroa.0340.11.i.i.i.i.i, %bb.jn ], [ %.sroa.0340.18765.i.i.i.i.i, %bb.lv ], [ %.sroa.0340.25.i.i.i.i.i, %bb.mm ], [ %.sroa.0340.17.i.i.i.i.i, %bb.jr ] ; 3 uses
  store i8 0, ptr %i.ea, align 8, !noalias !3071
  store i8 0, ptr %i.fr, align 1, !noalias !3071
  call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %i.up = load ptr, ptr %i.fo, align 8, !alias.scope !3304, !noalias !3071, !nonnull !3, !noundef !3
  %i.uq = atomicrmw sub ptr %i.up, i64 1 release, align 8, !noalias !3305
  %i.ur = icmp eq i64 %i.uq, 1
  br i1 %i.ur, label %bb.jp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219.i.i.i.i.i

bb.jp:                                            ; preds = %bb.jo
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fo) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit219.i.i.i.i.i unwind label %bb.np, !noalias !3075

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.nm, %.body235.i.i.i.i.i, %.body228.i.i.i.i.i, %bb.iq, %bb.ip, %.body.i.i196.i.i.i.i.i, %bb.ie, %bb.hz, %bb.hx, %bb.hv
  %.sroa.21.20.i.i.i.i.i = phi ptr [ %.sroa.21.18759.i.i.i.i.i, %.body228.i.i.i.i.i ], [ %.sroa.21.27.i.i.i.i.i, %bb.nm ], [ %.sroa.21.26.i.i.i.i.i, %.body235.i.i.i.i.i ], [ %.sroa.21.14.i.i.i.i.i, %bb.hv ], [ %.sroa.21.8.i.i.i.i.i, %bb.hx ], [ %.sroa.21.11.i.i.i.i.i, %.body.i.i196.i.i.i.i.i ], [ %.sroa.21.11.i.i.i.i.i, %bb.ip ], [ %.sroa.21.11.i.i.i.i.i, %bb.iq ], [ %.sroa.21.11.i.i.i.i.i, %bb.ie ], [ %.sroa.21.11.i.i.i.i.i, %bb.hz ] ; 2 uses
  %.sroa.0340.20.i.i.i.i.i = phi ptr [ %.sroa.0340.18772.i.i.i.i.i, %.body228.i.i.i.i.i ], [ %.sroa.0340.27.i.i.i.i.i, %bb.nm ], [ %.sroa.0340.26.i.i.i.i.i, %.body235.i.i.i.i.i ], [ %.sroa.0340.14.i.i.i.i.i, %bb.hv ], [ %.sroa.0340.8.i.i.i.i.i, %bb.hx ], [ %.sroa.0340.11.i.i.i.i.i, %.body.i.i196.i.i.i.i.i ], [ %.sroa.0340.11.i.i.i.i.i, %bb.ip ], [ %.sroa.0340.11.i.i.i.i.i, %bb.iq ], [ %.sroa.0340.11.i.i.i.i.i, %bb.ie ], [ %.sroa.0340.11.i.i.i.i.i, %bb.hz ] ; 2 uses
  %.pn79.pn.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body229.i.i.i.i.i, %.body228.i.i.i.i.i ], [ %i.zt, %bb.nm ], [ %.pn59.pn.i.i.i.i.i, %.body235.i.i.i.i.i ], [ %.pn77.i.i.i.i.i, %bb.hv ], [ %i.si, %bb.hx ], [ %lpad.phi57, %.body.i.i196.i.i.i.i.i ], [ %i.sy, %bb.ip ], [ %i.sy, %bb.iq ], [ %i.sm, %bb.ie ], [ %i.sj, %bb.hz ] ; 2 uses
  %i.us = load i8, ptr %i.ea, align 8, !range !40, !noalias !3071, !noundef !3
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %bb.os, label %bb.oq

bb.jq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5write0ECs7p2uQeJxui2_9deltalake.exit184.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.3311.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3516.i.i.i.i.i, i64 24, i1 false), !noalias !3071
  call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  store i64 -9223372036854775742, ptr %i.r, align 16, !alias.scope !3309, !noalias !3311
  store i64 %i.rm, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3312, !noalias !3071
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.fl)
          to label %bb.jm unwind label %bb.hr, !noalias !3075

bb.jr:                                            ; preds = %bb.js, %bb.jm
  store i8 0, ptr %i.ft, align 1, !noalias !3071
  br label %bb.jo

bb.js:                                            ; preds = %bb.jm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.dw)
          to label %bb.jr unwind label %bb.hw, !noalias !3075

bb.jt:                                            ; preds = %bb.hq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.dw) #37
          to label %bb.hv unwind label %bb.ev, !noalias !3075

bb.ju:                                            ; preds = %bb.jy, %bb.jx
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body228.i.i.i.i.i

.body228.i.i.i.i.i:                               ; preds = %bb.lo, %bb.ju
  %.sroa.0340.18772.i.i.i.i.i = phi ptr [ undef, %bb.ju ], [ %.sroa.0340.18773.i.i.i.i.i, %bb.lo ]
  %.sroa.21.18759.i.i.i.i.i = phi ptr [ undef, %bb.ju ], [ %.sroa.21.18760.i.i.i.i.i, %bb.lo ]
  %eh.lpad-body229.i.i.i.i.i = phi { ptr, i32 } [ %i.uu, %bb.ju ], [ %.pn4.i.i.i.i.i.i, %bb.lo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10533.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11534.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE5close0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.dw) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultTINtNtB4_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.ev, !noalias !3075

bb.jv:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3071
  %.pre697.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !474, !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10533.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11534.i.i.i.i.i)
  switch i8 %.pre697.i.i.i.i.i, label %default.unreachable [
    i8 0, label %.thread.i.i.i.i.i.i
    i8 1, label %bb.jx
    i8 2, label %bb.jy
    i8 3, label %bb.ka
  ]

.thread.i.i.i.i.i.i:                              ; preds = %bb.jv, %.thread.i.i.i.i.i
  %.sroa.0340.18771.i.i.i.i.i = phi ptr [ %.sroa.0340.11.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.jv ]
  %.sroa.21.18758.i.i.i.i.i = phi ptr [ %.sroa.21.11.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.jv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.fz, ptr noundef nonnull align 8 dereferenceable(520) %i.dw, i64 520, i1 false), !noalias !3313
  store ptr %i.fz, ptr %i.dx, align 8, !noalias !3313
  store i8 0, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.847.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.339.i.i.i.i.i.i.i), !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i.i.i.i.i)
  br label %bb.kb

bb.jw:                                            ; preds = %bb.lm, %.body.i.i.i.i.i.i
  %.sroa.0340.18774.i.i.i.i.i = phi ptr [ %.sroa.0340.18765.i.i.i.i.i, %bb.lm ], [ %.sroa.0340.18775.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %.sroa.21.18761.i.i.i.i.i = phi ptr [ %.sroa.21.18752.i.i.i.i.i, %bb.lm ], [ %.sroa.21.18762.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  %.pn2.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wp, %bb.lm ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(520) %i.fz) #37
          to label %bb.lo unwind label %bb.lq, !noalias !3317

bb.jx:                                            ; preds = %bb.jv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #36
          to label %.noexc226.i.i.i.i.i unwind label %bb.ju, !noalias !3075

.noexc226.i.i.i.i.i:                              ; preds = %bb.jx
  unreachable

bb.jy:                                            ; preds = %bb.jv
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #36
          to label %.noexc227.i.i.i.i.i unwind label %bb.ju, !noalias !3075

.noexc227.i.i.i.i.i:                              ; preds = %bb.jy
  unreachable

bb.jz:                                            ; preds = %bb.ki, %bb.kh
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.kg, %bb.jz
  %.sroa.0340.18775.i.i.i.i.i = phi ptr [ undef, %bb.jz ], [ %.sroa.0340.18776.i.i.i.i.i, %bb.kg ]
  %.sroa.21.18762.i.i.i.i.i = phi ptr [ undef, %bb.jz ], [ %.sroa.21.18763.i.i.i.i.i, %bb.kg ]
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uv, %bb.jz ], [ %.pn8.pn.i.i.i.i.i.i.i, %bb.kg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_writerINtBO_16AsyncArrowWriterNtNtBO_5store19ParquetObjectWriterE6finish0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.dx) #37
          to label %bb.jw unwind label %bb.lq, !noalias !3317

bb.ka:                                            ; preds = %bb.jv
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !range !2059, !noalias !3318
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.847.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.339.i.i.i.i.i.i.i), !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !noalias !3313
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i.i.i
    i8 1, label %bb.kh
    i8 2, label %bb.ki
    i8 3, label %bb.kk
    i8 4, label %bb.la
  ]

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ka
  %.pre698.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !noalias !3318
  br label %bb.kb

bb.kb:                                            ; preds = %._crit_edge.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %.sroa.0340.18770.i.i.i.i.i = phi ptr [ %.sroa.0340.18771.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.sroa.21.18757.i.i.i.i.i = phi ptr [ %.sroa.21.18758.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.uw = phi ptr [ %i.fz, %.thread.i.i.i.i.i.i ], [ %.pre698.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store ptr %i.uw, ptr %i.ga, align 8, !noalias !3318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3318
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 224
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.ux)
          to label %bb.kd unwind label %bb.kc, !noalias !3322

bb.kc:                                            ; preds = %bb.kb
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3318
  br label %bb.kg

bb.kd:                                            ; preds = %bb.kb
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %i.uz = load i64, ptr %i.g, align 8, !range !1996, !alias.scope !3326, !noalias !3328, !noundef !3 ; 2 uses
  %i.va = icmp eq i64 %i.uz, -9223372036854775808
  %.sroa.8.sroa.0.0.copyload53.i.i.i.i.i.i.i = load i64, ptr %i.gb, align 8, !alias.scope !3329, !noalias !3318 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !3318
  br i1 %i.va, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.10.0..sroa_idx20.i.i.i.i.i.i.i, i64 128, i1 false), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3318
  store i64 %i.uz, ptr %i.gc, align 8, !noalias !3318
  store i64 %.sroa.8.sroa.0.0.copyload53.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.8.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !3318
  %i.vb = load ptr, ptr %i.ga, align 8, !noalias !3318, !nonnull !3, !align !39, !noundef !3
  store ptr %i.vb, ptr %i.gd, align 8, !noalias !3318
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3318
end_hunk_4
