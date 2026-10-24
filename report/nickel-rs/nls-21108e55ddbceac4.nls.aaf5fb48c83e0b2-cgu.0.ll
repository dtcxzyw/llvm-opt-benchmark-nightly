Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17hc351e56d15ba5ea4E":bb.a
  call void @llvm.assume(i1 %i.cfw)
  %i.cfx = or i64 %i.cfu, %i.cfv
  store i64 %i.cfx, ptr %i.my, align 8, !noalias !24705
  %i.cfy = icmp ugt i64 %i.cfu, 72057594037927935
  br i1 %i.cfy, label %bb.aey, label %bb.aex, !prof !49

bb.aex:                                           ; preds = %bb.aew
  %i.cfz = icmp eq i64 %i.cfu, 0
  br i1 %i.cfz, label %bb.aez, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i855"

bb.aey:                                           ; preds = %bb.aew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24705
  store ptr @2307, ptr %i.b, align 8, !noalias !24705
  %i.cga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cga, align 8, !noalias !24705
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cgb, align 8, !noalias !24705
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgc, align 8, !noalias !24705
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cgd, align 8, !noalias !24705
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2308) #75
          to label %.noexc857 unwind label %.loopexit.split-lp1392

.noexc857:                                        ; preds = %bb.aey
  unreachable

bb.aez:                                           ; preds = %bb.aex
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i855" unwind label %.thread4879

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17hbdd64f55d58ae0beE.exit.i.i855": ; preds = %bb.aez, %bb.aex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24704
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E.exit859"

.loopexit.split-lp1397.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.acf, %.invoke6111, %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$13pop_unchecked17hbe042d1fa15f53faE.exit.i793"
  %lpad.loopexit.split-lp7374 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ed) #77
          to label %.thread1181.thread unwind label %bb.gr

.thread1181.thread:                               ; preds = %bb.act, %bb.acs, %bb.acr, %.loopexit.split-lp1397.loopexit.split-lp.loopexit.split-lp, %.body327, %.thread1181.thread1256
  %.pn31411861255 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp11941258, %.thread1181.thread1256 ], [ %i.cbu, %bb.act ], [ %i.cbu, %bb.acs ], [ %i.cbu, %bb.acr ], [ %lpad.loopexit.split-lp7374, %.loopexit.split-lp1397.loopexit.split-lp.loopexit.split-lp ], [ %i.cbm, %.body327 ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.mv) #77
          to label %.thread1233 unwind label %bb.gr

.thread:                                          ; preds = %bb.hd, %bb.jk, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp, %bb.abh, %bb.rh, %bb.ri, %bb.yc, %.sink.split.i.i.i, %bb.tu, %bb.tv, %.body.i.i.i514, %.body.i.i.i.i, %bb.ks, %bb.kv, %bb.fo, %bb.fp, %bb.eu, %bb.ev, %.body.i.i.i.i726, %bb.yg, %bb.xu, %bb.xd, %.body.i.i.i.i611, %bb.js, %bb.et, %bb.fj, %bb.l, %bb.yb, %bb.zf, %bb.abl, %bb.abp, %bb.abw, %bb.acb, %bb.rk, %bb.abi, %bb.abd, %bb.zc, %bb.yw, %bb.xb, %.sink.split.i, %bb.uq, %.body630.thread, %bb.ur, %bb.gn, %.body776.thread.thread1285, %.thread1134, %bb.zd, %bb.xm, %bb.rm, %bb.hc, %.thread1024, %.body
  %.pn314.pn970 = phi { ptr, i32 } [ %.pn314.pn, %.body ], [ %i.bvn, %bb.zf ], [ %.pn276, %.body776.thread.thread1285 ], [ %i.bul, %bb.zc ], [ %.pn291.ph, %bb.rh ], [ %i.bsm, %bb.yb ], [ %.pn2781137, %.thread1134 ], [ %i.bzy, %bb.abp ], [ %lpad.thr_comm.split-lp1130, %bb.zd ], [ %.pn284, %bb.xm ], [ %eh.lpad-body6311103, %bb.uq ], [ %i.cae, %bb.abw ], [ %i.wo, %bb.gn ], [ %i.bda, %bb.rm ], [ %eh.lpad-body532, %bb.ri ], [ %i.bcw, %bb.rk ], [ %lpad.thr_comm.split-lp, %bb.hc ], [ %.pn3091020, %.thread1024 ], [ %eh.lpad-body6311103, %bb.ur ], [ %eh.lpad-body6311103, %.body630.thread ], [ %i.bpb, %.sink.split.i ], [ %i.bpb, %bb.xb ], [ %i.bur, %bb.yw ], [ %.pn276, %bb.abd ], [ %i.bzt, %bb.abl ], [ %i.bzn, %bb.abh ], [ %i.bzn, %bb.abi ], [ %i.bsm, %bb.yc ], [ %i.bpl, %.sink.split.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.tu ], [ %eh.lpad-body.i.i.i.i, %bb.tv ], [ %i.aia, %.body.i.i.i.i ], [ %i.aia, %bb.ks ], [ %.pn.i.i.i, %bb.kv ], [ %.pn.i.i.i, %.body.i.i.i514 ], [ %i.ts, %bb.fo ], [ %i.ts, %bb.fp ], [ %i.rn, %bb.eu ], [ %i.rn, %bb.ev ], [ %i.btw, %.body.i.i.i.i726 ], [ %i.bsp, %bb.yg ], [ %i.brn, %bb.xu ], [ %i.bpl, %bb.xd ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i611 ], [ %i.afq, %bb.js ], [ %i.rn, %bb.et ], [ %i.caj, %bb.acb ], [ %i.tl, %bb.fj ], [ %i.ny, %bb.l ], [ %.pn302, %bb.hd ], [ %lpad.loopexit.split-lp7355, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp ], [ %.pn302, %bb.jk ]
  %.sroa.0174.0969 = phi i1 [ %.sroa.0174.0, %.body ], [ true, %bb.zf ], [ true, %.body776.thread.thread1285 ], [ true, %bb.zc ], [ true, %bb.rh ], [ true, %bb.yb ], [ true, %.thread1134 ], [ true, %bb.abp ], [ true, %bb.zd ], [ true, %bb.xm ], [ true, %bb.uq ], [ true, %bb.abw ], [ true, %bb.gn ], [ true, %bb.rm ], [ true, %bb.ri ], [ true, %bb.rk ], [ true, %bb.hc ], [ true, %.thread1024 ], [ true, %bb.ur ], [ true, %.body630.thread ], [ true, %.sink.split.i ], [ true, %bb.xb ], [ true, %bb.yw ], [ true, %bb.abd ], [ true, %bb.abl ], [ true, %bb.abh ], [ true, %bb.abi ], [ true, %bb.yc ], [ true, %.sink.split.i.i.i ], [ true, %bb.tu ], [ true, %bb.tv ], [ true, %.body.i.i.i.i ], [ true, %bb.ks ], [ true, %bb.kv ], [ true, %.body.i.i.i514 ], [ true, %bb.fo ], [ true, %bb.fp ], [ true, %bb.eu ], [ true, %bb.ev ], [ true, %.body.i.i.i.i726 ], [ true, %bb.yg ], [ true, %bb.xu ], [ true, %bb.xd ], [ true, %.body.i.i.i.i611 ], [ true, %bb.js ], [ true, %bb.et ], [ true, %bb.acb ], [ true, %bb.fj ], [ false, %bb.l ], [ true, %bb.hd ], [ true, %.loopexit.split-lp1366.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.jk ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.gt) #77
          to label %.body.thread1265 unwind label %bb.gr

.thread1222:                                      ; preds = %bb.wf, %.loopexit1386, %.loopexit.split-lp1387.loopexit.split-lp.loopexit.split-lp, %bb.qw, %bb.qv, %bb.qu, %.thread.i, %bb.qp, %bb.wi, %bb.wh, %bb.wb, %bb.ip, %bb.io, %bb.wa, %bb.in, %bb.ws, %bb.wr, %bb.vz, %bb.wq, %bb.ww, %bb.aep, %bb.aeq, %bb.aer, %bb.aeb, %bb.aec, %bb.aed, %bb.adi, %bb.adj, %bb.adk, %.body.thread1265
  %.pn3171227 = phi { ptr, i32 } [ %.pn317, %.body.thread1265 ], [ %i.cdc, %bb.adi ], [ %i.cdc, %bb.adk ], [ %i.cdc, %bb.adj ], [ %i.cee, %bb.aeb ], [ %.pn13.i, %bb.qu ], [ %i.cee, %bb.aed ], [ %i.cee, %bb.aec ], [ %i.cfe, %bb.aer ], [ %i.cfe, %bb.aeq ], [ %i.cfe, %bb.aep ], [ %i.bor, %bb.ww ], [ %.pn.i.i, %bb.wf ], [ %i.bmq, %bb.vz ], [ %.pn.i.i, %bb.wh ], [ %i.bmq, %bb.wb ], [ %i.bmq, %bb.wa ], [ %i.bax, %bb.qp ], [ %i.acm, %bb.ip ], [ %i.acm, %bb.io ], [ %.pn.i.i, %bb.wi ], [ %i.acm, %bb.in ], [ %i.bod, %bb.ws ], [ %i.bod, %bb.wr ], [ %lpad.loopexit1388, %.loopexit1386 ], [ %i.bod, %bb.wq ], [ %lpad.loopexit.split-lp7364, %.loopexit.split-lp1387.loopexit.split-lp.loopexit.split-lp ], [ %.pn13.i, %bb.qv ], [ %.pn13.i, %.thread.i ], [ %.pn13.i, %bb.qw ]
  %.sroa.0199.01226 = phi i8 [ 0, %.body.thread1265 ], [ 0, %bb.adi ], [ 0, %bb.adk ], [ 0, %bb.adj ], [ 0, %bb.aeb ], [ 0, %bb.qu ], [ 0, %bb.aed ], [ 0, %bb.aec ], [ 1, %bb.aer ], [ 1, %bb.aeq ], [ 1, %bb.aep ], [ 0, %bb.ww ], [ 0, %bb.wf ], [ 0, %bb.vz ], [ 0, %bb.wh ], [ 0, %bb.wb ], [ 0, %bb.wa ], [ 0, %bb.qp ], [ 0, %bb.ip ], [ 0, %bb.io ], [ 0, %bb.wi ], [ 0, %bb.in ], [ 0, %bb.ws ], [ 0, %bb.wr ], [ 1, %.loopexit1386 ], [ 0, %bb.wq ], [ 0, %.loopexit.split-lp1387.loopexit.split-lp.loopexit.split-lp ], [ 0, %bb.qv ], [ 0, %.thread.i ], [ 0, %bb.qw ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gu) #77
          to label %bb.adt unwind label %bb.gr

bb.afa:                                           ; preds = %.thread4879, %bb.adt
  %.pn3194883 = phi { ptr, i32 } [ %lpad.loopexit1393, %.thread4879 ], [ %.pn319, %bb.adt ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %2) #77
          to label %bb.afb unwind label %bb.gr

.thread1233:                                      ; preds = %bb.adb, %bb.acz, %bb.ada, %.thread1181.thread, %.body.thread1265, %bb.adt, %bb.afb
  %.pn3191237 = phi { ptr, i32 } [ %.pn3194883, %bb.afb ], [ %.pn319, %bb.adt ], [ %.pn317, %.body.thread1265 ], [ %i.ccm, %bb.adb ], [ %.pn31411861255, %.thread1181.thread ], [ %i.ccm, %bb.ada ], [ %i.ccm, %bb.acz ]
  resume { ptr, i32 } %.pn3191237

bb.afb:                                           ; preds = %bb.afa
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17ha54ef43e071156adE"(ptr noalias noundef align 8 dereferenceable(16) %i.gv) #77
          to label %.thread1233 unwind label %bb.gr
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$4warn17ha0ad7f971894c3c8E"(ptr nofree readonly captures(none) %.48.val, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.48.val, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !44, !align !57, !noundef !44
  %i.d = getelementptr inbounds nuw i8, ptr %.48.val, i64 704
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %.48.val, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !44 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.g, align 8, !noundef !44 ; 2 uses
  %i.h = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.i, ptr %i.g, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17he3fb9333a54ab9f3E.exit, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17he3fb9333a54ab9f3E.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !44, !noundef !44
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5alloc2rc10RcInnerPtr10inc_strong17he3fb9333a54ab9f3E.exit
  %.sroa.0.0 = phi ptr [ %i.k, %_ZN5alloc2rc10RcInnerPtr10inc_strong17he3fb9333a54ab9f3E.exit ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %.48.val, i64 176
  %i.m = load i64, ptr %i.l, align 8, !noundef !44
  %i.n = getelementptr inbounds nuw i8, ptr %.48.val, i64 184
  %i.o = load i8, ptr %i.n, align 8, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %.48.val, i64 192
  %i.q = load i64, ptr %i.p, align 8, !noundef !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.0.0, ptr %i.r, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.o, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !44, !nonnull !44
  call void %i.t(ptr noundef nonnull align 1 %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$17prepare_eval_impl17h22cc51029102b3d3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(712) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  call void @_ZN16nickel_lang_core5cache8CacheHub14prepare_stdlib17h664d630d233e7902E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(632) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load i64, ptr %i.f, align 8, !range !89, !noundef !44
  %.not = icmp eq i64 %i.h, 7
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !24750)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !24750, !noundef !44 ; 7 uses
  %i.k = icmp ult i64 %i.j, 576460752303423488
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$33register_extend_env_for_typecheck17h7489d8df3c312a4eE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !24750, !nonnull !44, !noundef !44 ; 9 uses
  %.idx.i = shl nuw nsw i64 %i.j, 2               ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !24751
  %i.o = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, 9) 4) #66, !noalias !24751 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %i.j, 9
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader23, label %vector.ph

.preheader.i.i.i.i.i.i.i.preheader23:             ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.preheader
  %.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader.i.i.i.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %i.q = and i64 %i.j, 7                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 8, i64 %i.q
  %n.vec = sub nsw i64 %i.j, %i.s                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ai = load i32, ptr %i.t, align 8, !noalias !24752
  %i.aj = load i32, ptr %i.v, align 8, !noalias !24752
  %i.ak = load i32, ptr %i.x, align 8, !noalias !24752
  %i.al = load i32, ptr %i.z, align 8, !noalias !24752
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = load i32, ptr %i.ab, align 8, !noalias !24752
  %i.ar = load i32, ptr %i.ad, align 8, !noalias !24752
  %i.as = load i32, ptr %i.af, align 8, !noalias !24752
  %i.at = load i32, ptr %i.ah, align 8, !noalias !24752
  %i.au = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %i.av = insertelement <4 x i32> %i.au, i32 %i.ar, i64 1
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 2
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 3
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.ap, ptr %i.ay, align 4, !noalias !24753
  store <4 x i32> %i.ax, ptr %i.az, align 4, !noalias !24753
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %.preheader.i.i.i.i.i.i.i.preheader23, label %vector.body, !llvm.loop !24736

bb.e:                                             ; preds = %bb.d
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %.idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75, !noalias !24754
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader23, %.preheader.i.i.i.i.i.i.i
  %i.bb = phi i64 [ %i.be, %.preheader.i.i.i.i.i.i.i ], [ %.ph, %.preheader.i.i.i.i.i.i.i.preheader23 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.bb
  %.val21.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bc, align 8, !noalias !24752, !noundef !44
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bb
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i, ptr %i.bd, align 4, !noalias !24753
  %i.be = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.j
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator7collect17h99006385d0ff8fefE.exit.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !24737

_ZN4core4iter6traits8iterator8Iterator7collect17h99006385d0ff8fefE.exit.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 488
  invoke void @"_ZN16nickel_lang_core5cache9ast_cache88_$LT$impl$u20$nickel_lang_core..cache..ast_cache..ouroboros_impl_ast_cache..AstCache$GT$18populate_type_ctxt17hcb942d97a3198f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1)
          to label %bb.f unwind label %.body.i.i.loopexit.split-lp.loopexit.split-lp, !noalias !24755

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h99006385d0ff8fefE.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  br label %.lr.ph.i.i.i

.body.i.i.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.g, %.lr.ph.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h99006385d0ff8fefE.exit.i
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !24755
  resume { ptr, i32 } %lpad.loopexit.split-lp22

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.f
  %.sroa.55.012.i.i.i = phi ptr [ %i.bj, %bb.h ], [ %i.o, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.55.012.i.i.i, i64 4 ; 2 uses
  %i.bk = load i32, ptr %.sroa.55.012.i.i.i, align 4, !noalias !24756, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24757
  store i64 3, ptr %i.a, align 8, !noalias !24757
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType8concrete17h7a1b2b7638617e63E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.g unwind label %.body.i.i.loopexit.split-lp.loopexit.split-lp, !noalias !24758

._crit_edge.i.i.i:                                ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %.idx.i, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !24759
  br label %"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$33register_extend_env_for_typecheck17h7489d8df3c312a4eE.exit"

bb.g:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24757
  invoke fastcc void @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17ha40f46b795719fa6E"(ptr noalias noundef align 8 dereferenceable(16) %i.bh, i32 noundef %i.bk, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b)
          to label %bb.h unwind label %.body.i.i.loopexit.split-lp.loopexit.split-lp, !noalias !24758

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24757
  %i.bl = icmp eq ptr %i.bj, %i.bi
  br i1 %i.bl, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$33register_extend_env_for_typecheck17h7489d8df3c312a4eE.exit": ; preds = %bb.c, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br i1 %3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$33register_extend_env_for_typecheck17h7489d8df3c312a4eE.exit"
  call void @_ZN16nickel_lang_core5cache8CacheHub17prepare_eval_only17h9e961403c7de0185E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(632) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef %2)
  br label %bb.k

bb.j:                                             ; preds = %"_ZN16nickel_lang_core4eval54VmContext$LT$nickel_lang_core..cache..CacheHub$C$C$GT$33register_extend_env_for_typecheck17h7489d8df3c312a4eE.exit"
  call void @_ZN16nickel_lang_core5cache8CacheHub7prepare17heb42dc997129dad4E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(632) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i32 noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bm = load i64, ptr %i.e, align 8, !range !89, !noundef !44 ; 2 uses
  %.not15 = icmp eq i64 %i.bm, 7
  br i1 %.not15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.510.0.copyload = load i8, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.314.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.611.0..sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.bm, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.510.0.copyload, ptr %.sroa.213.0..sroa_idx, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 392
  call fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17haa1a7a76a4d57cfaE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(48) %i.bo, ptr noalias noundef nonnull align 1 %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bp, i32 noundef %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !24760)
  %i.bq = load i64, ptr %i.d, align 8, !range !65, !alias.scope !24760, !noundef !44 ; 2 uses
  %.not.i = icmp eq i64 %i.bq, 9
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b353f76b3d439c2E.exit", label %bb.n, !prof !46

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24760
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !24760
  store i64 %i.bq, ptr %i.c, align 8, !noalias !24760
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !noalias !24760
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1333, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1342, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #75, !noalias !24760
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b353f76b3d439c2E.exit": ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = call noundef ptr @"_ZN93_$LT$nickel_lang_core..cache..CacheHub$u20$as$u20$nickel_lang_core..cache..ImportResolver$GT$3get17h6692ea5684d8378cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(632) %1, i32 noundef %2) ; 2 uses
  %.not16 = icmp eq ptr %i.bu, null
  br i1 %.not16, label %bb.p, label %bb.o, !prof !49

bb.o:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b353f76b3d439c2E.exit"
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8
  store i64 7, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6b353f76b3d439c2E.exit"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #75
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.l, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval59VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$C$GT$3new17hf3920ea8d48ff362E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [20 x i8], align 4                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 15 uses
  %i.r = alloca [56 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !24848
  %i.x = tail call fastcc ptr @"_ZN100_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..default..Default$GT$7default17h8bff1aa054086fbaE"()
  store ptr %i.x, ptr %i.t, align 16, !noalias !24848
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  store ptr null, ptr %i.y, align 8, !noalias !24848
  invoke void @_ZN16nickel_lang_core5cache11SourceCache14stdlib_modules17hc6389049b3d8ef1aE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(632) %1)
          to label %bb.i unwind label %.thread42.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !24849

.body34.i:                                        ; preds = %.thread42.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bj, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17ha93161a6f82f9e1dE.exit.i", %.loopexit.split-lp49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aq, %bb.ap, %bb.ao, %.body.i.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn.i, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17ha93161a6f82f9e1dE.exit.i" ], [ %i.dx, %bb.ap ], [ %lpad.thr_comm.split-lp.i, %bb.bj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp49.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dx, %bb.ao ], [ %i.dx, %bb.aq ], [ %lpad.loopexit.split-lp103, %.thread42.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24850)
  call void @llvm.experimental.noalias.scope.decl(metadata !24851)
  call void @llvm.experimental.noalias.scope.decl(metadata !24852)
  %i.z = load ptr, ptr %i.t, align 16, !alias.scope !24853, !noalias !24848, !nonnull !44, !noundef !44 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !24853, !noundef !44
  %i.ab = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !noalias !24853
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i"

bb.b:                                             ; preds = %.body34.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h132322bc0fc29df3E.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24854)
  %i.ae = load ptr, ptr %i.y, align 8, !alias.scope !24855, !noalias !24848, !noundef !44 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i64, ptr %i.ae, align 8, !noalias !24856, !noundef !44
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3nls12field_walker13FieldResolver21resolve_def_with_path17h6c7df9767e50e720E:bb.a
  %i.ie = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %.sroa.06.0.i.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = getelementptr [24 x i8], ptr %i.hy, i64 %i.ib
  %i.ih = getelementptr i8, ptr %i.ig, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.if, i64 24, i1 false), !noalias !45011
  %i.ii = add i64 %i.ib, 2                        ; 3 uses
  %i.ij = add nuw i64 %.sroa.06.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", label %.preheader.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa": ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i", label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", %.preheader.i.i.preheader
  %.epil.init = phi i64 [ %i.hz, %.preheader.i.i.preheader ], [ %i.ii, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ij, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod2253 = trunc i64 %i.hr to i1
  call void @llvm.assume(i1 %lcmp.mod2253)
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %.sroa.06.0.i.i.i.i.i.epil.init
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.hy, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !noalias !45011
  %i.im = add i64 %.epil.init, 1
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i": ; preds = %.preheader.i.i.epil.preheader, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i"
  %storemerge.i.i.i.i = phi i64 [ %i.ea, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit.i.i" ], [ %i.ii, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i.loopexit.unr-lcssa" ], [ %i.im, %.preheader.i.i.epil.preheader ] ; 2 uses
  store i64 %storemerge.i.i.i.i, ptr %i.al, align 8, !alias.scope !45009, !noalias !45012
  %.val.i165 = load i64, ptr %i.g, align 8, !noalias !44945 ; 2 uses
  %i.in = icmp eq i64 %.val.i165, 0
  br i1 %i.in, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i", label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val40.i = load i64, ptr %i.g, align 8, !noalias !44945 ; 2 uses
  %i.ip = icmp eq i64 %.val40.i, 0
  br i1 %i.ip, label %.body71.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iq = mul nuw i64 %.val40.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.iq, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44945, !inline_history !44631
  br label %.body71.i

bb.ay:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"
  %i.ir = mul nuw i64 %.val.i165, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !44945, !inline_history !44631
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$GT$17h291bafa3f2d7b99fE.exit82.i": ; preds = %bb.ay, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hdf1b268daa16d1e1E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44945
  br label %bb.at

.noexc77.loopexit:                                ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..FieldContent$GT$$GT$17hf5e77e122e3c7a36E.exit68.i"
  %.sroa.0307.0.copyload.pre = load i64, ptr %i.k, align 8, !noalias !44943
  %.sroa.4308.0.copyload.pre = load ptr, ptr %i.ak, align 8, !noalias !44943
  br label %.noexc77

.noexc77:                                         ; preds = %.noexc77.loopexit, %.noexc111
  %.sroa.5309.0.copyload = phi i64 [ %i.eg, %.noexc77.loopexit ], [ %.sroa.5.0.copyload.i.i, %.noexc111 ] ; 2 uses
  %.sroa.4308.0.copyload = phi ptr [ %.sroa.4308.0.copyload.pre, %.noexc77.loopexit ], [ %.sroa.4.0.copyload.i.i, %.noexc111 ] ; 4 uses
  %.sroa.0307.0.copyload = phi i64 [ %.sroa.0307.0.copyload.pre, %.noexc77.loopexit ], [ %.sroa.0.0.copyload.i.i, %.noexc111 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44942
  %.not1.i.i = icmp eq i64 %.sroa.0307.0.copyload, -9223372036854775808
  br i1 %.not1.i.i, label %.noexc77.thread, label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit"

"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit": ; preds = %.noexc77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4308.0.copyload) ]
  %i.is = icmp ult i64 %.sroa.5309.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.is), !noalias !45013
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4308.0.copyload, i64 %.sroa.5309.0.copyload
  br label %.outer2104

.noexc77.thread:                                  ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit124.thread, %.noexc77
  %i.iu = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.iu, label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i", label %bb.bb

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread"
  %i.iv = load ptr, ptr %i.w, align 8, !alias.scope !44938, !nonnull !44, !noundef !44
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %i.be ; 2 uses
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4244.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4239, i64 16, i1 false), !noalias !44938
  store i64 %.sroa.0.0.copyload8.i116, ptr %i.iw, align 8, !noalias !44938
  %i.ix = add nuw nsw i64 %i.be, 1
  store i64 %i.ix, ptr %i.x, align 8, !alias.scope !44938
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4239)
  br label %bb.e

.loopexit.split-lp529.loopexit.split-lp.loopexit: ; preds = %"_ZN3nls12field_walker13FieldResolver21resolve_def_with_path28_$u7b$$u7b$closure$u7d$$u7d$17ha33c4d6c78d8683cE.exit.i"
  %lpad.loopexit1130 = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i"
  %lpad.loopexit.split-lp1131 = landingpad { ptr, i32 }
          cleanup
  br label %.body78

.body78:                                          ; preds = %.loopexit.split-lp529.loopexit.split-lp.loopexit, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp, %bb.h, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i"
  %.sroa.0.4 = phi ptr [ %.sroa.0.2, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i" ], [ %.sroa.0.2, %bb.h ], [ %.sroa.0.2, %.loopexit.split-lp529.loopexit.split-lp.loopexit ], [ %.ph2105, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %eh.lpad-body79 = phi { ptr, i32 } [ %.pn.pn.i, %"_ZN4core3ptr579drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..slice..iter..Iter$LT$nls..field_walker..Container$GT$$C$alloc..vec..Vec$LT$nls..field_walker..FieldContent$GT$$C$nls..field_walker..FieldResolver..resolve_containers_at_path$LT$nls..field_walker..Container$C$alloc..vec..Vec$LT$nls..field_walker..Container$GT$$C$nls..field_walker..EltId$C$core..iter..adapters..map..Map$LT$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$nickel_lang_parser..identifier..Ident$GT$$GT$$C$nls..field_walker..EltId..Ident$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf8ddbce60f39fa1fE.exit.i.i.i.i" ], [ %.pn.pn.i, %bb.h ], [ %lpad.loopexit1130, %.loopexit.split-lp529.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1131, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.iy = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.iy, label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032", label %bb.az

bb.az:                                            ; preds = %.body78
  %i.iz = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45014
  br label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032"

"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032": ; preds = %bb.az, %.body78
  %i.ja = icmp eq ptr %.sroa.0.4, null
  %i.jb = icmp eq i64 %.val6.i.i286.ph, 0
  %or.cond.i11.i.i = or i1 %i.ja, %i.jb
  br i1 %or.cond.i11.i.i, label %.body, label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i1032"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.4) ], !noalias !44938
  %i.jc = mul nuw i64 %.val6.i.i286.ph, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45015
  br label %.body

"_ZN4core6option15Option$LT$T$GT$6map_or17h03ce90c59345abebE.exit61.i.i": ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h763f252720ed0cc5E.exit.thread"
  %i.jd = ptrtoint ptr %i.bd to i64
  %i.je = sub nuw i64 %i.az, %i.jd
  %i.jf = udiv exact i64 %i.je, 24
  %i.jg = add nuw nsw i64 %i.jf, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hf28d563308425255E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.be, i64 noundef %i.jg, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit" unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc77.thread
  %i.jh = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45016
  br label %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"

"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i": ; preds = %.noexc77.thread, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !45017)
  switch i32 %i.ad, label %default.unreachable1570 [
    i32 0, label %bb.bc
    i32 1, label %bb.bd
    i32 2, label %.loopexit
    i32 3, label %bb.be
  ]

default.unreachable1570:                          ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  unreachable

bb.bc:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45018
  %i.ji = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #66, !noalias !45018 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %.invoke, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i, !prof !49

bb.bd:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45018
  %i.jk = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #66, !noalias !45018 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %.invoke, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i, !prof !49

bb.be:                                            ; preds = %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i"
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !45017, !nonnull !44, !noundef !44 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !45017, !noundef !44 ; 7 uses
  %i.jq = shl nuw nsw i64 %i.jp, 3                ; 2 uses
  %i.jr = icmp eq i64 %i.jp, 0
  br i1 %i.jr, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !45019
  %i.js = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jq, i64 noundef range(i64 1, 9) 8) #66, !noalias !45019 ; 4 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.bg, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.bf
  %min.iters.check = icmp ult i64 %i.jp, 5
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader2102, label %vector.ph

.preheader.i.i.i.i.i.i.i.preheader2102:           ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.preheader
  %.ph2103 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader.i.i.i.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %i.ju = and i64 %i.jp, 3                        ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = select i1 %i.jv, i64 4, i64 %i.ju
  %n.vec = sub i64 %i.jp, %i.jw                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %index
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %index
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %index
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %index
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.ke = load ptr, ptr %i.jx, align 8, !noalias !45020
  %i.kf = load ptr, ptr %i.jz, align 8, !noalias !45020
  %i.kg = insertelement <2 x ptr> poison, ptr %i.ke, i64 0
  %i.kh = insertelement <2 x ptr> %i.kg, ptr %i.kf, i64 1
  %i.ki = load ptr, ptr %i.kb, align 8, !noalias !45020
  %i.kj = load ptr, ptr %i.kd, align 8, !noalias !45020
  %i.kk = insertelement <2 x ptr> poison, ptr %i.ki, i64 0
  %i.kl = insertelement <2 x ptr> %i.kk, ptr %i.kj, i64 1
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <2 x ptr> %i.kh, ptr %i.km, align 8, !noalias !45021
  store <2 x ptr> %i.kl, ptr %i.kn, align 8, !noalias !45021
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %.preheader.i.i.i.i.i.i.i.preheader2102, label %vector.body, !llvm.loop !44846

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.jq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.bg
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader2102, %.preheader.i.i.i.i.i.i.i
  %i.kp = phi i64 [ %i.ks, %.preheader.i.i.i.i.i.i.i ], [ %.ph2103, %.preheader.i.i.i.i.i.i.i.preheader2102 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.kp
  %.val21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !noalias !45020, !nonnull !44, !align !50, !noundef !44
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.kp
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i, ptr %i.kr, align 8, !noalias !45021
  %i.ks = add nuw i64 %i.kp, 1                    ; 2 uses
  %i.kt = icmp eq i64 %i.ks, %i.jp
  br i1 %i.kt, label %.loopexit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !44847

_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i: ; preds = %bb.bd, %bb.bc
  %.sink.i = phi i64 [ 32, %bb.bd ], [ 24, %bb.bc ]
  %.sink15.i = phi ptr [ %i.jk, %bb.bd ], [ %i.ji, %bb.bc ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 %.sink.i
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !45017, !nonnull !44, !align !50, !noundef !44
  store ptr %i.kv, ptr %.sink15.i, align 8, !noalias !45018
  br label %.loopexit

.invoke:                                          ; preds = %bb.bd, %bb.bc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #75
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i", %bb.be, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i
  %.sink14.i = phi i64 [ 1, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i ], [ 0, %bb.be ], [ 0, %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i" ], [ %i.jp, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.sink12.i = phi ptr [ %.sink15.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h6c3ccb2a5473ad02E.exit.sink.split.i ], [ inttoptr (i64 8 to ptr), %bb.be ], [ inttoptr (i64 8 to ptr), %"_ZN4core3ptr257drop_in_place$LT$core..iter..adapters..fuse..Fuse$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$RF$nickel_lang_parser..ast..Ast$GT$$C$nls..field_walker..FieldResolver..resolve_def_with_path..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc1df5faf4fcba204E.exit.i.i" ], [ %i.js, %.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.kw = icmp ult i64 %.sink14.i, 1152921504606846976
  call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i, i64 %.sink14.i ; 2 uses
  store i64 3, ptr %i.t, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store i64 3, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  store ptr %.sink12.i, ptr %.sroa.7.0..sroa_idx30, align 8
  %.sroa.7.sroa.035.sroa.4.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 216 ; 2 uses
  store ptr %.sink12.i, ptr %.sroa.7.sroa.035.sroa.4.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.035.sroa.5.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i64 %.sink14.i, ptr %.sroa.7.sroa.035.sroa.5.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.035.sroa.6.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 232
  store ptr %i.kx, ptr %.sroa.7.sroa.035.sroa.6.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  %.sroa.7.sroa.436.0..sroa.7.0..sroa_idx30.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  store ptr %1, ptr %.sroa.7.sroa.436.0..sroa.7.0..sroa_idx30.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !45022)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %.sroa.04.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.8297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.outer

.outer:                                           ; preds = %.loopexit, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit"
  %.ph = phi ptr [ %.sink12.i, %.loopexit ], [ %i.mt, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit" ] ; 3 uses
  %.ph2073 = phi i64 [ 3, %.loopexit ], [ %.sroa.0295.0.copyload296, %"_ZN4core3ptr414drop_in_place$LT$core..option..Option$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..chain..Chain$LT$core..option..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$C$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$C$nls..field_walker..FieldResolver..resolve_annot..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h845eec903a71e85aE.exit" ]
  %i.lk = load ptr, ptr %i.le, align 8, !nonnull !44
  %i.ll = load ptr, ptr %i.lf, align 8, !nonnull !44, !align !50
  %i.lm = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not.i171 = icmp eq ptr %i.lm, null
  %i.ln = load ptr, ptr %i.lh, align 8, !nonnull !44
  %i.lo = load ptr, ptr %i.lg, align 8
  %.not51.i.i.i.i.i.i = icmp eq ptr %i.lo, null
  %.val4.i59.i.i.i.i.i.i = load ptr, ptr %i.lh, align 8, !nonnull !44
  %i.lp = ptrtoint ptr %.val4.i59.i.i.i.i.i.i to i64
  %.promoted2425 = load ptr, ptr %i.ky, align 8
  %.promoted2428 = load ptr, ptr %i.kz, align 8
  %.promoted2430 = load ptr, ptr %i.la, align 8
  %.promoted2432 = load i64, ptr %i.lb, align 8
  %.promoted2435 = load ptr, ptr %i.lc, align 8
  %.promoted2436 = load ptr, ptr %i.ld, align 8
  %.promoted2439 = load ptr, ptr %i.li, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %.outer, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81"
  %.val.i58.i.i.i.i.i.i2440 = phi ptr [ %.val.i58.i.i.i.i.i.i2441, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2439, %.outer ] ; 5 uses
  %.lcssa22702437 = phi ptr [ %i.ls, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2436, %.outer ]
  %i.lq = phi ptr [ %i.mn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2435, %.outer ]
  %.sroa.0.0.copyload.i.i.i1020.lcssa22642433 = phi i64 [ %.sroa.0.0.copyload.i.i.i1020, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2432, %.outer ]
  %.sroa.4.0.copyload.i.i.i1016.lcssa2431 = phi ptr [ %.val.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2430, %.outer ]
  %.val4.i.i.i.i.i.i.i.lcssa22592429 = phi ptr [ %.val4.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2428, %.outer ]
  %.sroa.4.0.copyload.i.i.i665.lcssa2426 = phi ptr [ %.sroa.4.0.copyload.i.i.i665.lcssa2427, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.promoted2425, %.outer ]
  %i.lr = phi i64 [ %.pr.pre.pre818, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h570336b044c402f0E.exit81" ], [ %.ph2073, %.outer ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7291)
  %.not.i131 = icmp eq i64 %i.lr, 3
  br i1 %.not.i131, label %.loopexit2074, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184"
  %i.ls = phi ptr [ %i.mc, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.lcssa22702437, %bb.bh ] ; 8 uses
  %i.lt = phi ptr [ %i.md, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %i.lq, %bb.bh ] ; 6 uses
  %.sroa.0.0.copyload.i.i.i1020 = phi i64 [ %.sroa.0.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.0.0.copyload.i.i.i1020.lcssa22642433, %bb.bh ] ; 6 uses
  %.sroa.4.0.copyload.i.i.i1014 = phi ptr [ %.sroa.4.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.4.0.copyload.i.i.i1016.lcssa2431, %bb.bh ] ; 6 uses
  %.val4.i.i.i.i.i.i.i = phi ptr [ %i.mg, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.val4.i.i.i.i.i.i.i.lcssa22592429, %bb.bh ] ; 6 uses
  %i.lu = phi i64 [ %i.me, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %i.lr, %bb.bh ] ; 5 uses
  %.sroa.4.0.copyload.i.i.i665 = phi ptr [ %.sroa.4.0.copyload.i.i.i, %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" ], [ %.sroa.4.0.copyload.i.i.i665.lcssa2426, %bb.bh ] ; 4 uses
  %.not.i192 = icmp eq ptr %.sroa.4.0.copyload.i.i.i665, null
  br i1 %.not.i192, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lv = icmp eq ptr %.sroa.4.0.copyload.i.i.i1014, %.val4.i.i.i.i.i.i.i
  br i1 %i.lv, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i193

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i193: ; preds = %bb.bj
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i1014, i64 24 ; 3 uses
  %.sroa.0.0.copyload8.i194 = load i64, ptr %.sroa.4.0.copyload.i.i.i1014, align 8, !noalias !45023 ; 2 uses
  %.not6.i196 = icmp eq i64 %.sroa.0.0.copyload8.i194, 6
  br i1 %.not6.i196, label %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929b61d3dfd10379E.exit.i.thread"

_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i193, %bb.bj
  %.sroa.4.0.copyload.i.i.i1017 = phi ptr [ %i.lw, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i193 ], [ %.sroa.4.0.copyload.i.i.i1014, %bb.bj ] ; 2 uses
  %i.lx = icmp eq i64 %.sroa.0.0.copyload.i.i.i1020, 0
  br i1 %i.lx, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199
  %i.ly = mul nuw i64 %.sroa.0.0.copyload.i.i.i1020, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i665, i64 noundef %i.ly, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !45024
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h929b61d3dfd10379E.exit.i.thread": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.i193
  store ptr %.val4.i.i.i.i.i.i.i, ptr %i.kz, align 8
  store ptr %i.lw, ptr %i.la, align 8
  store i64 %.sroa.0.0.copyload.i.i.i1020, ptr %i.lb, align 8
  store ptr %i.lt, ptr %i.lc, align 8
  store ptr %i.ls, ptr %i.ld, align 8
  store ptr %.sroa.4.0.copyload.i.i.i665, ptr %i.ky, align 8
  store i64 %i.lu, ptr %i.t, align 8
  br label %.thread

_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread: ; preds = %bb.bk, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199, %bb.bi
  %.sroa.4.0.copyload.i.i.i1016 = phi ptr [ %.sroa.4.0.copyload.i.i.i1014, %bb.bi ], [ %.sroa.4.0.copyload.i.i.i1017, %_ZN4core3ops8function6FnOnce9call_once17hae30da012e3c822fE.exit.thread.i199 ], [ %.sroa.4.0.copyload.i.i.i1017, %bb.bk ] ; 3 uses
  switch i64 %i.lu, label %bb.bl [
    i64 2, label %bb.bp
    i64 0, label %bb.bm
  ]

bb.bl:                                            ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread
  %.not.i.i.i189 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i189, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread
  %i.lz = phi ptr [ null, %bb.bl ], [ %i.lt, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread ] ; 2 uses
  %.not.i.i.i.i186 = icmp eq ptr %i.ls, null
  %i.ma = icmp eq ptr %i.ls, %i.lk
  %or.cond.i.i.i.i187 = select i1 %.not.i.i.i.i186, i1 true, i1 %i.ma
  br i1 %or.cond.i.i.i.i187, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 104
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.mc = phi ptr [ %i.ls, %bb.bl ], [ %i.mb, %bb.bn ] ; 2 uses
  %i.md = phi ptr [ null, %bb.bl ], [ %i.lz, %bb.bn ] ; 2 uses
  %i.me = phi i64 [ %i.lu, %bb.bl ], [ 0, %bb.bn ] ; 2 uses
  %.sroa.0.0.i2.i.i.ph = phi ptr [ %i.lt, %bb.bl ], [ %i.ls, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45025
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver12resolve_type17hb954fe2ab5116529E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ll, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0.i2.i.i.ph)
          to label %"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184" unwind label %.body93.loopexit, !inline_history !44874

"_ZN4core3ptr116drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..field_walker..Container$GT$$GT$$GT$17h1738c6495bdf5a85E.exit184": ; preds = %bb.bo
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !45026, !noalias !45025
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !45026, !noalias !45025, !nonnull !44, !noundef !44 ; 3 uses
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !45026, !noalias !45025 ; 2 uses
  %i.mf = icmp ult i64 %.sroa.5.0.copyload.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.mf), !noalias !45027
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.sroa.5.0.copyload.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45025
  br label %bb.bi

bb.bp:                                            ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread, %bb.bm
  %i.mh = phi ptr [ %i.lt, %_ZN4core4iter8adapters7flatten17and_then_or_clear17h8e023a4881c106beE.exit202.thread ], [ %i.lz, %bb.bm ] ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN3nls5usage11UsageLookup4fill28_$u7b$$u7b$closure$u7d$$u7d$17h6aab1f8ac9cd1885E":bb.a
bb.bh:                                            ; preds = %bb.bg
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h08be33abbf9f1988E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.aq), !inline_history !114
  br label %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i"

"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i": ; preds = %bb.bh, %bb.bg
  %i.mk = load ptr, ptr %i.fl, align 8, !alias.scope !50128, !noundef !44 ; 3 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %"_ZN4core3ptr135drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$17h4409ab7485d97b90E.exit", label %bb.bi

bb.bi:                                            ; preds = %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i"
  %i.mm = load i64, ptr %i.mk, align 8, !noalias !50129, !noundef !44
  %i.mn = add i64 %i.mm, -1                       ; 2 uses
  store i64 %i.mn, ptr %i.mk, align 8, !noalias !50129
  %i.mo = icmp eq i64 %i.mn, 0
  br i1 %i.mo, label %bb.bj, label %"_ZN4core3ptr135drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$17h4409ab7485d97b90E.exit"

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3e933a508455fef1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fl), !inline_history !4
  br label %"_ZN4core3ptr135drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$17h4409ab7485d97b90E.exit"

"_ZN4core3ptr135drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$17h4409ab7485d97b90E.exit": ; preds = %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i", %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.az

bb.bk:                                            ; preds = %bb.bf
  %.sroa.0501.0.copyload = load i64, ptr %i.ak, align 8
  %.sroa.5502.0.copyload = load ptr, ptr %.sroa.5502.0..sroa_idx, align 8
  %.sroa.7503.0.copyload = load ptr, ptr %.sroa.7503.0..sroa_idx, align 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit, %bb.bk
  %.sroa.7503.0 = phi ptr [ %.sroa.7503.0.copyload, %bb.bk ], [ %.sroa.7503.1.ph, %_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit ] ; 5 uses
  %.sroa.5502.0 = phi ptr [ %.sroa.5502.0.copyload, %bb.bk ], [ %.sroa.5502.1598.ph, %_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit ] ; 3 uses
  %.sroa.0501.0 = phi i64 [ %.sroa.0501.0.copyload, %bb.bk ], [ %.sroa.0501.1600.ph, %_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit ]
  %i.mp = trunc nuw i64 %.sroa.0501.0 to i1
  br i1 %i.mp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.not.i228 = icmp eq ptr %.sroa.5502.0, null
  br i1 %.not.i228, label %bb.bn, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.5502.1.ph = phi ptr [ %.sroa.5502.0, %bb.bl ], [ null, %bb.bm ]
  %.not.i.i231 = icmp eq ptr %.sroa.7503.0, null
  %i.mq = icmp eq ptr %.sroa.7503.0, %.sroa.9.0.copyload
  %or.cond.i.i = select i1 %.not.i.i231, i1 true, i1 %i.mq
  br i1 %or.cond.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.7503.0, i64 104
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit

_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit: ; preds = %bb.bm, %bb.bo
  %.sroa.0501.1600.ph = phi i64 [ 0, %bb.bo ], [ 1, %bb.bm ]
  %.sroa.5502.1598.ph = phi ptr [ %.sroa.5502.1.ph, %bb.bo ], [ null, %bb.bm ]
  %.sroa.7503.1.ph = phi ptr [ %i.mr, %bb.bo ], [ %.sroa.7503.0, %bb.bm ]
  %.sroa.0.0.i230.ph = phi ptr [ %.sroa.7503.0, %bb.bo ], [ %.sroa.5502.0, %bb.bm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !50130
  store ptr %.pre933.pre, ptr %i.k, align 8, !noalias !50130
  store ptr %i.lx, ptr %i.ly, align 8, !noalias !50130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !50130
  store ptr %i.k, ptr %i.j, align 8, !noalias !50130
  store ptr @962, ptr %i.lz, align 8, !noalias !50130
  %i.ms = invoke fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h4b93c5827fb8262dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0.i230.ph, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @223, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.)
          to label %_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !49716 ; 0 uses

_ZN3nls5usage11UsageLookup9fill_type17h771ff698b0dbf9d5E.exit: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !50130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !50130
  br label %bb.bl

"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit": ; preds = %bb.bn
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0128.0852, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !50131
  store ptr %.pre933.pre, ptr %i.i, align 8, !noalias !50131
  store ptr %i.lx, ptr %i.ma, align 8, !noalias !50131
  %i.mu = invoke fastcc noundef zeroext i1 @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h751abd593916baf2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mt, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @953, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.)
          to label %_ZN3nls5usage11UsageLookup4fill17h0755d2c0d2f58b36E.exit234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !21 ; 0 uses

_ZN3nls5usage11UsageLookup4fill17h0755d2c0d2f58b36E.exit234: ; preds = %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !50131
  %i.mv = icmp eq ptr %.sroa.0128.1853, %i.fq     ; 2 uses
  %.sroa.0128.1.idx = select i1 %i.mv, i64 0, i64 248
  %.sroa.0128.1 = getelementptr inbounds nuw i8, ptr %.sroa.0128.1853, i64 %.sroa.0128.1.idx
  br i1 %i.mv, label %._crit_edge856, label %bb.bf

bb.bp:                                            ; preds = %bb.be
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 8, !alias.scope !50132 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i235, align 8, !alias.scope !50132, !nonnull !44, !noundef !44 ; 6 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i236, align 8, !alias.scope !50132 ; 3 uses
  %i.mw = icmp ult i64 %.sroa.5.0.copyload.i, 37191016277640226
  call void @llvm.assume(i1 %i.mw)
  %.idx862 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 248
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx862 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %.sroa.4.0.copyload.i, ptr %i.ao, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx490, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx491, align 8
  store ptr %i.mx, ptr %.sroa.6.0..sroa_idx, align 8
  %i.my = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.my, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.lr.ph": ; preds = %bb.bp
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0127.0846, i64 200
  %i.na = insertelement <2 x ptr> poison, ptr %.sroa.0127.0846, i64 0
  %i.nb = insertelement <2 x ptr> %i.na, ptr %i.mz, i64 1
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.lr.ph", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit478"
  %i.nc = phi ptr [ %.sroa.4.0.copyload.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.lr.ph" ], [ %i.nd, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit478" ] ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 248 ; 6 uses
  %.sroa.0492.0.copyload493 = load i64, ptr %i.nc, align 8, !noalias !50133 ; 6 uses
  %.not170 = icmp eq i64 %.sroa.0492.0.copyload493, 19
  br i1 %.not170, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread", label %bb.bq

bb.bq:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit"
  %.sroa.7.0..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 %.sroa.0492.0.copyload493, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7.0..sroa_idx494, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.7.0..sroa_idx495, i64 240, i1 false)
  %i.ne = load ptr, ptr %i.fs, align 8, !nonnull !44, !noundef !44 ; 16 uses
  %i.nf = load i64, ptr %i.ft, align 8, !noundef !44 ; 12 uses
  %i.ng = icmp eq i64 %i.nf, 0
  br i1 %i.ng, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2877a0b59cb1f63fE.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nh = shl nuw nsw i64 %i.nf, 2                ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !50134
  %i.ni = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.nh, i64 noundef range(i64 1, 9) 4) #66, !noalias !50134 ; 11 uses
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.bs, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.br
  %min.iters.check = icmp ult i64 %i.nf, 13
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.preheader1162, label %vector.memcheck

.preheader.i.i.i.i.i.i.preheader1162:             ; preds = %vector.body, %vector.memcheck, %.preheader.i.i.i.i.i.i.preheader
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.nk = sub i64 %i.nf, %.ph
  %xtraiter = and i64 %i.nk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.prol:                      ; preds = %.preheader.i.i.i.i.i.i.preheader1162, %.preheader.i.i.i.i.i.i.prol
  %i.nl = phi i64 [ %i.np, %.preheader.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.preheader1162 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.preheader1162 ]
  %i.nm = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %i.nl
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.nn, align 4, !noalias !50135, !noundef !44
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nl
  store i32 %.val21.i.i.i.i.i.i.i.i.i.prol, ptr %i.no, align 4, !noalias !50136
  %i.np = add nuw i64 %i.nl, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol, !llvm.loop !49753

.preheader.i.i.i.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.preheader1162
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.preheader1162 ], [ %i.np, %.preheader.i.i.i.i.i.i.prol ]
  %i.nq = sub i64 %.ph, %i.nf
  %i.nr = icmp ugt i64 %i.nq, -4
  br i1 %i.nr, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2877a0b59cb1f63fE.exit, label %.preheader.i.i.i.i.i.i

vector.memcheck:                                  ; preds = %.preheader.i.i.i.i.i.i.preheader
  %i.ns = shl i64 %i.nf, 2
  %scevgep = getelementptr i8, ptr %i.ni, i64 %i.ns
  %scevgep1143 = getelementptr i8, ptr %i.ne, i64 16
  %i.nt = mul i64 %i.nf, 20
  %scevgep1144 = getelementptr i8, ptr %i.ne, i64 %i.nt
  %bound0 = icmp ult ptr %i.ni, %scevgep1144
  %bound1 = icmp ult ptr %scevgep1143, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.i.i.i.preheader1162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.nu = and i64 %i.nf, 7                        ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0
  %i.nw = select i1 %i.nv, i64 8, i64 %i.nu
  %n.vec = sub i64 %i.nf, %i.nw                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.nx = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.ny = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.nz = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.oa = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.ob = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.oc = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.od = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.oe = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %index
  %i.of = getelementptr i8, ptr %i.nx, i64 16
  %i.og = getelementptr i8, ptr %i.ny, i64 36
  %i.oh = getelementptr i8, ptr %i.nz, i64 56
  %i.oi = getelementptr i8, ptr %i.oa, i64 76
  %i.oj = getelementptr i8, ptr %i.ob, i64 96
  %i.ok = getelementptr i8, ptr %i.oc, i64 116
  %i.ol = getelementptr i8, ptr %i.od, i64 136
  %i.om = getelementptr i8, ptr %i.oe, i64 156
  %i.on = load i32, ptr %i.of, align 4, !alias.scope !50137, !noalias !50135
  %i.oo = load i32, ptr %i.og, align 4, !alias.scope !50137, !noalias !50135
  %i.op = load i32, ptr %i.oh, align 4, !alias.scope !50137, !noalias !50135
  %i.oq = load i32, ptr %i.oi, align 4, !alias.scope !50137, !noalias !50135
  %i.or = insertelement <4 x i32> poison, i32 %i.on, i64 0
  %i.os = insertelement <4 x i32> %i.or, i32 %i.oo, i64 1
  %i.ot = insertelement <4 x i32> %i.os, i32 %i.op, i64 2
  %i.ou = insertelement <4 x i32> %i.ot, i32 %i.oq, i64 3
  %i.ov = load i32, ptr %i.oj, align 4, !alias.scope !50137, !noalias !50135
  %i.ow = load i32, ptr %i.ok, align 4, !alias.scope !50137, !noalias !50135
  %i.ox = load i32, ptr %i.ol, align 4, !alias.scope !50137, !noalias !50135
  %i.oy = load i32, ptr %i.om, align 4, !alias.scope !50137, !noalias !50135
  %i.oz = insertelement <4 x i32> poison, i32 %i.ov, i64 0
  %i.pa = insertelement <4 x i32> %i.oz, i32 %i.ow, i64 1
  %i.pb = insertelement <4 x i32> %i.pa, i32 %i.ox, i64 2
  %i.pc = insertelement <4 x i32> %i.pb, i32 %i.oy, i64 3
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <4 x i32> %i.ou, ptr %i.pd, align 4, !alias.scope !50138, !noalias !50139
  store <4 x i32> %i.pc, ptr %i.pe, align 4, !alias.scope !50138, !noalias !50139
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %.preheader.i.i.i.i.i.i.preheader1162, label %vector.body, !llvm.loop !49757

bb.bs:                                            ; preds = %bb.br
  store ptr %i.nd, ptr %.sroa.4.0..sroa_idx490, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.nh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc237 unwind label %.loopexit.split-lp712

.noexc237:                                        ; preds = %bb.bs
  unreachable

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i
  %i.pg = phi i64 [ %i.pw, %.preheader.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ph = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 16
  %.val21.i.i.i.i.i.i.i.i.i = load i32, ptr %i.pi, align 4, !noalias !50135, !noundef !44
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pg
  store i32 %.val21.i.i.i.i.i.i.i.i.i, ptr %i.pj, align 4, !noalias !50136
  %i.pk = add nuw i64 %i.pg, 1                    ; 2 uses
  %i.pl = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.pm, align 4, !noalias !50135, !noundef !44
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pk
  store i32 %.val21.i.i.i.i.i.i.i.i.i.1, ptr %i.pn, align 4, !noalias !50136
  %i.po = add nuw i64 %i.pg, 2                    ; 2 uses
  %i.pp = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %i.po
  %i.pq = getelementptr i8, ptr %i.pp, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.pq, align 4, !noalias !50135, !noundef !44
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.po
  store i32 %.val21.i.i.i.i.i.i.i.i.i.2, ptr %i.pr, align 4, !noalias !50136
  %i.ps = add nuw i64 %i.pg, 3                    ; 2 uses
  %i.pt = getelementptr inbounds nuw [20 x i8], ptr %i.ne, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.pu, align 4, !noalias !50135, !noundef !44
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ps
  store i32 %.val21.i.i.i.i.i.i.i.i.i.3, ptr %i.pv, align 4, !noalias !50136
  %i.pw = add nuw i64 %i.pg, 4                    ; 2 uses
  %i.px = icmp eq i64 %i.pw, %i.nf
  br i1 %i.px, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2877a0b59cb1f63fE.exit, label %.preheader.i.i.i.i.i.i, !llvm.loop !49758

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit", %bb.bp
  %i.py = phi ptr [ %.sroa.4.0.copyload.i, %bb.bp ], [ %i.nd, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit" ] ; 3 uses
  %i.pz = ptrtoint ptr %i.mx to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub nuw i64 %i.pz, %i.qa
  %i.qc = udiv exact i64 %i.qb, 248
  call void @llvm.experimental.noalias.scope.decl(metadata !50140)
  %i.qd = icmp eq ptr %i.mx, %i.py
  br i1 %i.qd, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i", label %.lr.ph.i.i.i238

.lr.ph.i.i.i238:                                  ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit"
  %.sroa.0.07.i.i.i = phi i64 [ %i.qf, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit" ], [ 0, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread" ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [248 x i8], ptr %i.py, i64 %.sroa.0.07.i.i.i ; 10 uses
  %i.qf = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50141)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 200
  call void @llvm.experimental.noalias.scope.decl(metadata !50142)
  %.val.i.i.i.i.i239 = load i64, ptr %i.qg, align 8, !range !74, !alias.scope !50143, !noalias !50144, !noundef !44 ; 2 uses
  %i.qh = icmp eq i64 %.val.i.i.i.i.i239, 0
  br i1 %i.qh, label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i", label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i238
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 208
  %.val1.i.i.i.i.i = load ptr, ptr %i.qi, align 8, !alias.scope !50143, !noalias !50144, !nonnull !44, !noundef !44
  %i.qj = mul nuw i64 %.val.i.i.i.i.i239, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.qj, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !50145
  br label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i"

"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i": ; preds = %bb.bt, %.lr.ph.i.i.i238
  call void @llvm.experimental.noalias.scope.decl(metadata !50146)
  call void @llvm.experimental.noalias.scope.decl(metadata !50147), !noalias !50144
  call void @llvm.experimental.noalias.scope.decl(metadata !50148), !noalias !50144
  %i.qk = load i64, ptr %i.qe, align 8, !range !95, !alias.scope !50149, !noalias !50144, !noundef !44 ; 4 uses
  %i.ql = icmp eq i64 %i.qk, 18
  br i1 %i.ql, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", label %bb.bu

bb.bu:                                            ; preds = %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !50150), !noalias !50144
  call void @llvm.experimental.noalias.scope.decl(metadata !50151), !noalias !50144
  %i.qm = icmp ne i64 %i.qk, 12
  call void @llvm.assume(i1 %i.qm), !noalias !50144
  %i.qn = icmp samesign ult i64 %i.qk, 3
  br i1 %i.qn, label %bb.bv, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i"

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !50152), !noalias !50144
  switch i64 %i.qk, label %bb.bw [
    i64 0, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i"
    i64 1, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.qo, align 8, !alias.scope !50153, !noalias !50144, !noundef !44 ; 4 uses
  %i.qp = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.qp, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  %i.qq = shl i64 %.val3.i.i.i.i.i.i, 2
  %i.qr = icmp slt i64 %.val3.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.qr), !noalias !50144
  %i.qs = and i64 %i.qq, -16                      ; 2 uses
  %i.qt = add i64 %i.qs, 16                       ; 2 uses
  %i.qu = add nsw i64 %.val3.i.i.i.i.i.i, 17
  %i.qv = add i64 %i.qu, %i.qt                    ; 4 uses
  %i.qw = icmp uge i64 %i.qv, %i.qt
  %i.qx = icmp ult i64 %i.qv, 9223372036854775793
  call void @llvm.assume(i1 %i.qw), !noalias !50144
  call void @llvm.assume(i1 %i.qx), !noalias !50144
  %i.qy = icmp eq i64 %i.qv, 0
  br i1 %i.qy, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ %i.rf, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.qs, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i = phi i64 [ %i.ri, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.qv, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %.val.sink.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i, align 8, !alias.scope !50153, !noalias !50144, !nonnull !44, !noundef !44
  %i.qz = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i
  %i.ra = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i, i64 %i.qz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ra, i64 noundef %.sink7.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !50154
  br label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i"

bb.bx:                                            ; preds = %bb.bv
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.rb, align 8, !alias.scope !50153, !noalias !50144, !noundef !44 ; 4 uses
  %i.rc = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.rc, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %bb.bx
  %i.rd = shl i64 %.val1.i.i.i.i.i.i, 2
  %i.re = icmp slt i64 %.val1.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.re), !noalias !50144
  %i.rf = and i64 %i.rd, -16                      ; 2 uses
  %i.rg = add i64 %i.rf, 16                       ; 2 uses
  %i.rh = add nsw i64 %.val1.i.i.i.i.i.i, 17
  %i.ri = add i64 %i.rh, %i.rg                    ; 4 uses
  %i.rj = icmp uge i64 %i.ri, %i.rg
  %i.rk = icmp ult i64 %i.ri, 9223372036854775793
  call void @llvm.assume(i1 %i.rj), !noalias !50144
  call void @llvm.assume(i1 %i.rk), !noalias !50144
  %i.rl = icmp eq i64 %i.ri, 0
  br i1 %i.rl, label %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %bb.bx, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bw, %bb.bv, %bb.bu, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i"
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qe, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !50155), !noalias !50144
  %i.rn = load i64, ptr %i.rm, align 8, !range !87, !alias.scope !50156, !noalias !50144, !noundef !44 ; 4 uses
  %i.ro = icmp ne i64 %i.rn, -9223372036854775805
  call void @llvm.assume(i1 %i.ro), !noalias !50144
  %i.rp = icmp ult i64 %i.rn, -9223372036854775807
  br i1 %i.rp, label %bb.by, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit"

bb.by:                                            ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !50157), !noalias !50144
  %switch.i.i.i = icmp sgt i64 %i.rn, 0
  br i1 %switch.i.i.i, label %bb.bz, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i"

bb.bz:                                            ; preds = %bb.by
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qe, i64 128
  %.val5.i.i.i = load ptr, ptr %i.rq, align 8, !alias.scope !50158, !noalias !50144, !nonnull !44, !noundef !44
  %i.rr = shl nuw i64 %i.rn, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.rr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !50159
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i": ; preds = %bb.bz, %bb.by
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qe, i64 144
  %.val.i.i.i452 = load i64, ptr %i.rs, align 8, !range !70, !alias.scope !50158, !noalias !50144, !noundef !44 ; 2 uses
  %switch8.i.i.i = icmp sgt i64 %.val.i.i.i452, 0
  br i1 %switch8.i.i.i, label %bb.ca, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit"

bb.ca:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i"
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qe, i64 152
  %.val1.i.i.i453 = load ptr, ptr %i.rt, align 8, !alias.scope !50158, !noalias !50144, !nonnull !44, !noundef !44
  %i.ru = shl nuw i64 %.val.i.i.i452, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i453, i64 noundef %i.ru, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !50159
  br label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit"

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit": ; preds = %"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17haa4985648f7ddb1aE.exit.i", %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h7df5d1c3f5e57d39E.exit.i.i.i", %bb.ca
  %i.rv = icmp eq i64 %i.qf, %i.qc
  br i1 %i.rv, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i", label %.lr.ph.i.i.i238

"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i": ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit478", %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE.exit", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h782d72185aa209ffE.exit.thread"
  %i.rw = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.rw, label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit", label %bb.cb

bb.cb:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i"
  %i.rx = mul nuw i64 %.sroa.0.0.copyload.i, 248
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.rx, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !50144
  br label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit"

"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit": ; preds = %bb.cb, %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i"
end_hunk_2
begin_hunk_3_@_ZN3nls5world5World8get_defs17h186704ee848114feE:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 248 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53468)
  call void @llvm.experimental.noalias.scope.decl(metadata !53469)
  %.val1.i.i.i = load i32, ptr %i.bw, align 8, !alias.scope !53469, !noalias !53466, !noundef !44
  %i.cg = icmp eq i32 %.val1.i.i.i, %i.by
  br i1 %i.cg, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !53470)
  call void @llvm.experimental.noalias.scope.decl(metadata !53471)
  %.val.i.i.i.i.i = load i64, ptr %i.bz, align 8, !range !74, !alias.scope !53472, !noalias !53466, !noundef !44 ; 2 uses
  %i.ch = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ch, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.thread.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !53472, !noalias !53466, !nonnull !44, !noundef !44
  %i.ci = mul nuw i64 %.val.i.i.i.i.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !53473
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.thread.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.thread.i.i": ; preds = %bb.k, %bb.j
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(248) %i.ai), !noalias !53474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !53466
  br label %bb.l

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.i.i": ; preds = %.lr.ph.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.ai, align 8, !alias.scope !53475, !noalias !53466 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !53466
  %.not.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i, 19
  br i1 %.not.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.thread.i.i"
  %.not.i.i = icmp eq ptr %i.cf, %i.cd
  br i1 %.not.i.i, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i", label %.lr.ph.i.i

bb.m:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h5fa3ba93ae6c15e9E.exit.i.i"
  store ptr %i.cf, ptr %i.bu, align 8, !alias.scope !53465, !noalias !53459
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !53459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.8.0..sroa_idx12.i, ptr noundef nonnull align 8 dereferenceable(240) %i.cj, i64 240, i1 false), !noalias !53462
  store i64 %.sroa.07.0.copyload.i.i, ptr %i.ao, align 8, !noalias !53459
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ao, i64 208 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !53459, !nonnull !44, !noundef !44 ; 17 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !53459, !noundef !44 ; 2 uses
  %.not137.i = icmp eq i64 %i.cn, 0               ; 2 uses
  %.idx488.i = mul i64 %i.cn, 20
  %i.co = add i64 %.idx488.i, -20                 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.cl, i64 %i.co
  %.sroa.013.0.i = select i1 %.not137.i, ptr null, ptr %i.cp
  br i1 %.not137.i, label %bb.o, label %bb.s

"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i": ; preds = %bb.l, %bb.i
  %i.cq = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.cq, label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i.i"
  %i.cr = mul nuw i64 %.sroa.0.0.copyload.i.i, 248
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !53476
  br label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit.i"

bb.o:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !53477)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  call void @llvm.experimental.noalias.scope.decl(metadata !53478), !noalias !53462
  %.val.i.i4 = load i64, ptr %i.cs, align 8, !range !74, !alias.scope !53479, !noalias !53462, !noundef !44 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i4, 0
  br i1 %i.ct, label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = mul nuw i64 %.val.i.i4, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !53480
  br label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit"

"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit": ; preds = %bb.o, %bb.p
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(248) %i.ao), !noalias !53462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !53459
  %i.cv = ptrtoint ptr %i.cd to i64
  %i.cw = ptrtoint ptr %i.cf to i64
  %i.cx = sub nuw i64 %i.cv, %i.cw
  %i.cy = udiv exact i64 %i.cx, 248
  call void @llvm.experimental.noalias.scope.decl(metadata !53481), !noalias !53462
  %i.cz = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cz, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i", label %.lr.ph.i.i.i1

.lr.ph.i.i.i1:                                    ; preds = %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit", %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.db, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit" ] ; 2 uses
  %i.da = getelementptr inbounds nuw [248 x i8], ptr %i.cf, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.db = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53482), !noalias !53462
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  call void @llvm.experimental.noalias.scope.decl(metadata !53483), !noalias !53462
  %.val.i.i.i.i.i2 = load i64, ptr %i.dc, align 8, !range !74, !alias.scope !53484, !noalias !53485, !noundef !44 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i.i.i2, 0
  br i1 %i.dd, label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  %.val1.i.i.i.i.i3 = load ptr, ptr %i.de, align 8, !alias.scope !53484, !noalias !53485, !nonnull !44, !noundef !44
  %i.df = mul nuw i64 %.val.i.i.i.i.i2, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i3, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !53486
  br label %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i"

"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i": ; preds = %bb.q, %.lr.ph.i.i.i1
  call void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hb099df7b7786e6deE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(248) %i.da), !noalias !53485
  %i.dg = icmp eq i64 %i.db, %i.cy
  br i1 %i.dg, label %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i", label %.lr.ph.i.i.i1

"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i": ; preds = %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit.i.i.i", %"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE.exit"
  %i.dh = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.dh, label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i"
  %i.di = mul nuw i64 %.sroa.0.0.copyload.i.i, 248
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !53485
  br label %"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit"

"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E.exit": ; preds = %"_ZN4core3ptr85drop_in_place$LT$$u5b$nickel_lang_parser..ast..pattern..bindings..PatBinding$u5d$$GT$17h3ea591a6a1bbc8cbE.exit.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !53459
  br label %.critedge155.critedge.i

bb.s:                                             ; preds = %bb.m
  %i.dj = udiv i64 %i.co, 20                      ; 10 uses
  %i.dk = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %i.dl = icmp eq i64 %i.co, 0
  br i1 %i.dl, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !53487
  %i.dm = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dk, i64 noundef range(i64 1, 9) 4) #66, !noalias !53487 ; 11 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.u, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.co, 500
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader512, label %vector.memcheck

.preheader.i.i.i.i.i.i.i.preheader512:            ; preds = %vector.body, %vector.memcheck, %.preheader.i.i.i.i.i.i.i.preheader
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.do = sub nsw i64 %i.dj, %.ph
  %xtraiter624 = and i64 %i.do, 3                 ; 2 uses
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  br i1 %lcmp.mod625.not, label %.preheader.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.prol:                    ; preds = %.preheader.i.i.i.i.i.i.i.preheader512, %.preheader.i.i.i.i.i.i.i.prol
  %i.dp = phi i64 [ %i.dt, %.preheader.i.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.i.preheader512 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader512 ]
  %i.dq = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.dr, align 4, !noalias !53488, !noundef !44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dp
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.ds, align 4, !noalias !53489
  %i.dt = add nuw i64 %i.dp, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter624
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.prol, !llvm.loop !52922

.preheader.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.preheader.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.preheader512
  %.unr626 = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.i.preheader512 ], [ %i.dt, %.preheader.i.i.i.i.i.i.i.prol ]
  %i.du = sub nsw i64 %.ph, %i.dj
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i, label %.preheader.i.i.i.i.i.i.i

vector.memcheck:                                  ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %i.dw = shl nuw nsw i64 %i.dj, 2
  %i.dx = getelementptr i8, ptr %i.dm, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.cl, i64 16
  %i.dz = mul nuw i64 %i.dj, 20
  %i.ea = getelementptr i8, ptr %i.cl, i64 %i.dz
  %bound0 = icmp ult ptr %i.dm, %i.ea
  %bound1 = icmp ult ptr %i.dy, %i.dx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.i.i.i.i.preheader512, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eb = and i64 %i.dj, 7                        ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = select i1 %i.ec, i64 8, i64 %i.eb
  %n.vec = sub nsw i64 %i.dj, %i.ed               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.ee = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.ef = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.eg = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.eh = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.ei = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.ej = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.ek = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.el = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %index
  %i.em = getelementptr i8, ptr %i.ee, i64 16
  %i.en = getelementptr i8, ptr %i.ef, i64 36
  %i.eo = getelementptr i8, ptr %i.eg, i64 56
  %i.ep = getelementptr i8, ptr %i.eh, i64 76
  %i.eq = getelementptr i8, ptr %i.ei, i64 96
  %i.er = getelementptr i8, ptr %i.ej, i64 116
  %i.es = getelementptr i8, ptr %i.ek, i64 136
  %i.et = getelementptr i8, ptr %i.el, i64 156
  %i.eu = load i32, ptr %i.em, align 4, !alias.scope !53490, !noalias !53488
  %i.ev = load i32, ptr %i.en, align 4, !alias.scope !53490, !noalias !53488
  %i.ew = load i32, ptr %i.eo, align 4, !alias.scope !53490, !noalias !53488
  %i.ex = load i32, ptr %i.ep, align 4, !alias.scope !53490, !noalias !53488
  %i.ey = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 1
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 2
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 3
  %i.fc = load i32, ptr %i.eq, align 4, !alias.scope !53490, !noalias !53488
  %i.fd = load i32, ptr %i.er, align 4, !alias.scope !53490, !noalias !53488
  %i.fe = load i32, ptr %i.es, align 4, !alias.scope !53490, !noalias !53488
  %i.ff = load i32, ptr %i.et, align 4, !alias.scope !53490, !noalias !53488
  %i.fg = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 1
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 2
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %i.fb, ptr %i.fk, align 4, !alias.scope !53491, !noalias !53492
  store <4 x i32> %i.fj, ptr %i.fl, align 4, !alias.scope !53491, !noalias !53492
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %.preheader.i.i.i.i.i.i.i.preheader512, label %vector.body, !llvm.loop !52926

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i unwind label %bb.v, !noalias !53462

.noexc.i:                                         ; preds = %bb.u
  unreachable

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i
  %i.fn = phi i64 [ %i.gd, %.preheader.i.i.i.i.i.i.i ], [ %.unr626, %.preheader.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.fp, align 4, !noalias !53488, !noundef !44
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fn
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i, ptr %i.fq, align 4, !noalias !53489
  %i.fr = add nuw i64 %i.fn, 1                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ft, align 4, !noalias !53488, !noundef !44
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fr
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i.1, ptr %i.fu, align 4, !noalias !53489
  %i.fv = add nuw i64 %i.fn, 2                    ; 2 uses
  %i.fw = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.fx, align 4, !noalias !53488, !noundef !44
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fv
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i.2, ptr %i.fy, align 4, !noalias !53489
  %i.fz = add nuw i64 %i.fn, 3                    ; 2 uses
  %i.ga = getelementptr inbounds nuw [20 x i8], ptr %i.cl, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %.val21.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.gb, align 4, !noalias !53488, !noundef !44
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fz
  store i32 %.val21.i.i.i.i.i.i.i.i.i.i.3, ptr %i.gc, align 4, !noalias !53489
  %i.gd = add nuw i64 %i.fn, 4                    ; 2 uses
  %i.ge = icmp eq i64 %i.gd, %i.dj
  br i1 %i.ge, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !52927

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h3a10c233bc0b31feE.exit.i": ; preds = %bb.w, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Record$GT$$GT$17h5dcb78f4bfeb2f42E.exit.i", %bb.v
  %.pn143.i = phi { ptr, i32 } [ %i.gf, %bb.v ], [ %.pn141.i, %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Record$GT$$GT$17h5dcb78f4bfeb2f42E.exit.i" ], [ %.pn141.i, %bb.w ]
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$17hd4a20608c3e0519bE"(ptr noalias noundef align 8 dereferenceable(248) %i.ao) #77, !noalias !53462
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17hc490cc2de2106c82E"(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #77, !noalias !53462
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..position..RawSpan$GT$$GT$17h847569b033f5c9adE.exit.i"

bb.v:                                             ; preds = %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h3a10c233bc0b31feE.exit.i"

_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i: ; preds = %.preheader.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i, %bb.s
  %.sroa.4.0.i7.i.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.dj, %.preheader.i.i.i.i.i.i.i ], [ %i.dj, %.preheader.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.10.0.i6.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.s ], [ %i.dm, %.preheader.i.i.i.i.i.i.i ], [ %i.dm, %.preheader.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0121.0591.i, i64 200
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i6.i.i.i.i.i, i64 %.sroa.4.0.i7.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !53459
  invoke fastcc void @_ZN3nls12field_walker13FieldResolver18containers_at_path17h030b7d97c1c5d9ffE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noundef nonnull align 8 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gg, ptr noundef nonnull %.sroa.10.0.i6.i.i.i.i.i, ptr noundef nonnull %i.gh)
          to label %bb.y unwind label %bb.x, !noalias !53462

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Record$GT$$GT$17h5dcb78f4bfeb2f42E.exit.i": ; preds = %bb.ar, %.body.i, %bb.x
  %.pn141.i = phi { ptr, i32 } [ %i.gk, %bb.x ], [ %.pn139.i, %.body.i ], [ %.pn139.i, %bb.ar ] ; 2 uses
  %i.gi = icmp eq i64 %.sroa.4.0.i7.i.i.i.i.i, 0
  br i1 %i.gi, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h3a10c233bc0b31feE.exit.i", label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Record$GT$$GT$17h5dcb78f4bfeb2f42E.exit.i"
  %i.gj = shl nuw nsw i64 %.sroa.4.0.i7.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i6.i.i.i.i.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !53462
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h3a10c233bc0b31feE.exit.i"

bb.x:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$nls..field_walker..Record$GT$$GT$17h5dcb78f4bfeb2f42E.exit.i"

bb.y:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2d7cb42b88d84068E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !53493)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !53494, !noalias !53459 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !53494, !noalias !53459, !nonnull !44, !noundef !44 ; 9 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !53494, !noalias !53459 ; 3 uses
  %i.gl = icmp ult i64 %.sroa.5.0.copyload.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.gl)
  %.idx.i.i = mul nuw nsw i64 %.sroa.5.0.copyload.i.i.i, 24
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 %.idx.i.i
  %.not15.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i.i.i, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.y, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.gn = phi ptr [ %i.go, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i.i.i, %bb.y ] ; 4 uses
  %.sroa.4.016.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.pn17.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i.i.i, %bb.y ] ; 7 uses
  %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !noalias !53495 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53495 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24 ; 2 uses
  switch i64 %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i, label %default.unreachable1.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %bb.ab
    i64 1, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i"
    i64 4, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i"
    i64 5, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i"
  ]

default.unreachable1.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.313.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53495
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.aa ], [ %.sroa.313.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ undef, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.aa ], [ 2, %bb.z ], [ %.sroa.012.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53496
  %.sroa.610.16..sroa.3.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.610.16..sroa.3.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53496
  %.sroa.711.16..sroa.3.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.9.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.711.16..sroa.3.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !53496
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.pn17.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gp, %bb.ab ], [ %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.016.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, %i.gm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i:                                      ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i", %bb.y
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i, %bb.y ], [ %.pn17.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hf096604eeb0c12c3E.exit.i.i.i.i.i.i.i.i.i.i" ]
  %i.gq = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i.i.i to i64
  %i.gr = ptrtoint ptr %.sroa.4.0.copyload.i.i.i to i64
  %i.gs = sub nuw i64 %i.gq, %i.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !53459
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 %i.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !53497
  store ptr null, ptr %i.ah, align 8, !alias.scope !53498, !noalias !53499
  %.sroa.4408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.4408.0..sroa_idx.i, align 8, !alias.scope !53498, !noalias !53499
  %.sroa.5410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5410.0..sroa_idx.i, align 8, !alias.scope !53498, !noalias !53499
  %.sroa.6411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store ptr %i.gt, ptr %.sroa.6411.0..sroa_idx.i, align 8, !alias.scope !53498, !noalias !53499
  %.sroa.7412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store ptr %.sroa.013.0.i, ptr %.sroa.7412.0..sroa_idx.i, align 8, !alias.scope !53498, !noalias !53499
  call void @llvm.experimental.noalias.scope.decl(metadata !53500)
  call void @llvm.experimental.noalias.scope.decl(metadata !53501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !53502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !53503
  invoke fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5ce50a4ff8d9c8f2E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %bb.ac unwind label %bb.aq, !noalias !53504

bb.ac:                                            ; preds = %.loopexit.i
  %i.gu = load i32, ptr %i.af, align 4, !range !80, !noalias !53503, !noundef !44
  %i.gv = trunc nuw i32 %i.gu to i1
  br i1 %i.gv, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc508e85c634a4b59E.exit.i.i.i.i.i.i.i.i", label %bb.ad

"_ZN4core6option15Option$LT$T$GT$6map_or17hc508e85c634a4b59E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !53505
  %i.gw = call noundef align 4 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 4) #66, !noalias !53505 ; 4 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !53503
  call void @llvm.experimental.noalias.scope.decl(metadata !53506)
  call void @llvm.experimental.noalias.scope.decl(metadata !53507)
  call void @llvm.experimental.noalias.scope.decl(metadata !53508)
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !53509, !noalias !53497, !noundef !44 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !53509, !noalias !53497 ; 2 uses
  %i.gz = icmp eq ptr %.val4.i.i.i.i.i.i.i.i, null
  %i.ha = icmp eq i64 %.val5.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gz, i1 true, i1 %i.ha
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..identifier..LocIdent$GT$$GT$$GT$17h05467aa3aea6cbd4E.exit.i.i.i.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i.i.i) ]
  %i.hb = mul nuw i64 %.val5.i.i.i.i.i.i.i.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %i.hb, i64 noundef range(i64 1, -9223372036854775807) 4) #66, !noalias !53510
  br label %"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..identifier..LocIdent$GT$$GT$$GT$17h05467aa3aea6cbd4E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr113drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nls..identifier..LocIdent$GT$$GT$$GT$17h05467aa3aea6cbd4E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ae, %bb.ad
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4408.0..sroa_idx.i, align 8, !alias.scope !53509, !noalias !53497, !noundef !44 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.hc, align 8, !alias.scope !53509, !noalias !53497 ; 2 uses
  %i.hd = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
end_hunk_3
