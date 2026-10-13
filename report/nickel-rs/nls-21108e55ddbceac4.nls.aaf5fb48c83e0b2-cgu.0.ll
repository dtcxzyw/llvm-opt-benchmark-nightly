Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h44324d6117e0c00bE":bb.a

_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit.sink.split: ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit98.i", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit94.i", %bb.cz, %bb.dl, %.critedge.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7051
  br label %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit

_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit: ; preds = %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit.sink.split, %bb.eo
  %.pr = load i64, ptr %i.au, align 8, !noalias !7038 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !7038
  %i.nv = icmp eq i64 %.pr, 20
  %.phi.trans.insert415 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre416 = load ptr, ptr %.phi.trans.insert415, align 8, !noalias !7038 ; 2 uses
  br i1 %i.nv, label %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit._crit_edge, label %bb.er

_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit._crit_edge: ; preds = %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit, %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit.thread
  %i.nw = phi ptr [ %i.kr, %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit.thread ], [ %.pre416, %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.nx = load i64, ptr %i.bo, align 8, !range !51, !alias.scope !7098, !noalias !7099, !noundef !44
  %i.ny = icmp samesign ult i64 %i.nx, 18
  br i1 %i.ny, label %bb.eq, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96"

bb.eq:                                            ; preds = %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit._crit_edge
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bo)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96" unwind label %bb.ew, !inline_history !6971

bb.er:                                            ; preds = %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.8.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.617.0..sroa_idx.i, i64 80, i1 false), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !7038
  store i64 %.pr, ptr %i.as, align 8, !noalias !7038
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.pre416, ptr %.sroa.6.0..sroa_idx7.i, align 8, !noalias !7038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false), !noalias !7100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !noalias !7044
  %i.nz = call noundef align 8 ptr @"_ZN108_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..subtyping..SubsumedBy$GT$11subsumed_by17hbff04d6adf22b3baE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aq), !noalias !7053, !inline_history !6972 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !7038
  %.not21.i = icmp eq ptr %i.nz, null
  br i1 %.not21.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.y, ptr noundef nonnull align 8 dereferenceable(232) %i.nz, i64 232, i1 false), !noalias !7102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !7103
  %i.oa = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.x)
          to label %bb.eu unwind label %.thread333, !noalias !7104

.thread333:                                       ; preds = %bb.es
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.nz, i64 noundef 232, i64 noundef 8) #66, !noalias !7105
  br label %.thread199

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ff

bb.eu:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7101
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.nz, i64 noundef 232, i64 noundef 8) #66, !noalias !7105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ff

bb.ev:                                            ; preds = %bb.ez
  %lpad.thr_comm.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %.thread328

bb.ew:                                            ; preds = %bb.eq
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %.thread328

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96": ; preds = %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1fe0db610caadcfeE.exit._crit_edge, %bb.eq
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bp), !inline_history !6972
  br label %bb.ff

bb.ex:                                            ; preds = %bb.bo, %.noexc141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7036
  %.not22.i = icmp eq ptr %.sroa.0.0.i40, null
  br i1 %.not22.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 40, i1 false), !noalias !7044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false), !noalias !7100
  %i.od = call fastcc noundef align 8 ptr @"_ZN87_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17hef388f425cd5f897E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(96) %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ay), !noalias !7053, !inline_history !6972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !7038
  br label %bb.ff

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false), !noalias !7100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !7038
  store i64 3, ptr %i.aw, align 8, !noalias !7038
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i16 1, ptr %i.oe, align 8, !noalias !7038
  %i.of = getelementptr inbounds nuw i8, ptr %i.aw, i64 90
  store i16 0, ptr %i.of, align 2, !noalias !7038
  %i.og = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bp)
          to label %bb.fa unwind label %bb.ev, !noalias !7106, !inline_history !6972 ; 4 uses

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !7038
  %.not23.i = icmp eq ptr %i.og, null
  br i1 %.not23.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.aa, ptr noundef nonnull align 8 dereferenceable(232) %i.og, i64 232, i1 false), !noalias !7108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0143, i64 16, i1 false), !noalias !7109
  %i.oh = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.z)
          to label %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h4950b0b81dd3b302E.exit" unwind label %.thread246, !noalias !7110

.thread246:                                       ; preds = %bb.fb
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.og, i64 noundef 232, i64 noundef 8) #66, !noalias !7111
  br label %.thread328

"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h4950b0b81dd3b302E.exit": ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !7107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7107
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.og, i64 noundef 232, i64 noundef 8) #66, !noalias !7111
  br label %bb.fc

bb.fc:                                            ; preds = %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h4950b0b81dd3b302E.exit", %bb.fa
  %.sroa.0.1.i = phi ptr [ null, %bb.fa ], [ %i.oh, %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h4950b0b81dd3b302E.exit" ]
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bp), !inline_history !6972
  br label %bb.ff

.thread254:                                       ; preds = %bb.by, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96.i", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i114", %.thread269, %bb.bk, %.thread240
  %.pn.i244 = phi { ptr, i32 } [ %i.iz, %.thread240 ], [ %lpad.thr_comm.split-lp261, %bb.bk ], [ %.pn77.i273, %.thread269 ], [ %lpad.thr_comm.split-lp277, %bb.by ], [ %i.mk, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i114" ], [ %.pn.i111, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96.i" ] ; 2 uses
  %i.oj = load i64, ptr %i.bo, align 8, !range !51, !alias.scope !7112, !noalias !7113, !noundef !44
  %i.ok = icmp samesign ult i64 %i.oj, 18
  br i1 %i.ok, label %bb.fd, label %.thread328

bb.fd:                                            ; preds = %.thread254
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bo)
          to label %.thread328 unwind label %bb.fe, !inline_history !6971

bb.fe:                                            ; preds = %bb.fd, %.thread328
  %i.ol = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !7113, !inline_history !6972
  unreachable

.thread328:                                       ; preds = %.thread254, %bb.fd, %.thread246, %bb.ew, %bb.ev
  %.pn.pn.i332 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp339, %bb.ev ], [ %i.oi, %.thread246 ], [ %i.oc, %bb.ew ], [ %.pn.i244, %bb.fd ], [ %.pn.i244, %.thread254 ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bp) #77
          to label %.thread199 unwind label %bb.fe, !noalias !7113, !inline_history !6972

bb.ff:                                            ; preds = %bb.fc, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96", %bb.ey, %bb.eu, %bb.et
  %.sroa.0.0.i51 = phi ptr [ %i.od, %bb.ey ], [ %i.nw, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit96" ], [ null, %bb.et ], [ %i.oa, %bb.eu ], [ %.sroa.0.1.i, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0143)
  br label %.thread194

bb.fg:                                            ; preds = %.noexc47
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %.thread194

.body.thread:                                     ; preds = %.body85.thread207.loopexit, %.body85.thread207.loopexit.split-lp, %.body.i.thread, %.thread230, %.thread222, %.noexc60, %.body.thread190
  %eh.lpad-body185 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread190 ], [ %lpad.thr_comm228, %.thread230 ], [ %lpad.thr_comm.split-lp206, %.noexc60 ], [ %i.ha, %.body.i.thread ], [ %.pn.pn.i69226, %.thread222 ], [ %lpad.loopexit346, %.body85.thread207.loopexit ], [ %lpad.loopexit.split-lp347, %.body85.thread207.loopexit.split-lp ] ; 2 uses
  %.sroa.020.0.lpad-body184 = phi i8 [ %.sroa.020.0.ph, %.body.thread190 ], [ 1, %.thread230 ], [ 1, %.noexc60 ], [ 1, %.body.i.thread ], [ 1, %.thread222 ], [ 1, %.body85.thread207.loopexit ], [ 1, %.body85.thread207.loopexit.split-lp ] ; 2 uses
  %i.om = load i64, ptr %4, align 8, !range !51, !alias.scope !7114, !noundef !44
  %i.on = icmp samesign ult i64 %i.om, 18
  br i1 %i.on, label %bb.fh, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59"

bb.fh:                                            ; preds = %.body.thread
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %4)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59" unwind label %bb.fi, !inline_history !2

bb.fi:                                            ; preds = %bb.fh, %bb.fj
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.thread199:                                       ; preds = %.thread333, %.thread328, %bb.fj, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59"
  %.pn202 = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59" ], [ %.pn, %bb.fj ], [ %i.ob, %.thread333 ], [ %.pn.pn.i332, %.thread328 ]
  resume { ptr, i32 } %.pn202

bb.fj:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59"
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %.thread199 unwind label %bb.fi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h481560f2b419057eE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 1 captures(none) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.031.sroa.5.i = alloca [80 x i8], align 8 ; 2 uses
  %.sroa.641.sroa.0.i = alloca [80 x i8], align 8 ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 10 uses
  %i.n = alloca [104 x i8], align 8               ; 5 uses
  %i.o = alloca [96 x i8], align 8                ; 16 uses
  %i.p = alloca [96 x i8], align 8                ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [96 x i8], align 8                ; 8 uses
  %i.s = alloca [104 x i8], align 8               ; 5 uses
  %i.t = alloca [96 x i8], align 8                ; 19 uses
  %i.u = alloca [112 x i8], align 8               ; 4 uses
  %i.v = alloca [128 x i8], align 8               ; 17 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %i.y = alloca [232 x i8], align 8               ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 4 uses
  %i.aa = alloca [232 x i8], align 8              ; 4 uses
  %i.ab = alloca [16 x i8], align 4               ; 4 uses
  %i.ac = alloca [232 x i8], align 8              ; 4 uses
  %i.ad = alloca [16 x i8], align 4               ; 4 uses
  %i.ae = alloca [232 x i8], align 8              ; 4 uses
  %i.af = alloca [40 x i8], align 8               ; 4 uses
  %i.ag = alloca [96 x i8], align 8               ; 4 uses
  %i.ah = alloca [96 x i8], align 8               ; 7 uses
  %i.ai = alloca [40 x i8], align 8               ; 8 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 4               ; 6 uses
  %i.al = alloca [96 x i8], align 8               ; 6 uses
  %i.am = alloca [96 x i8], align 8               ; 4 uses
  %i.an = alloca [96 x i8], align 8               ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [96 x i8], align 8               ; 4 uses
  %i.as = alloca [96 x i8], align 8               ; 6 uses
  %i.at = alloca [40 x i8], align 8               ; 15 uses
  %i.au = alloca [96 x i8], align 8               ; 18 uses
  %i.av = alloca [16 x i8], align 4               ; 6 uses
  %i.aw = alloca [96 x i8], align 8               ; 6 uses
  %i.ax = alloca [96 x i8], align 8               ; 4 uses
  %i.ay = alloca [96 x i8], align 8               ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 4 uses
  %i.ba = alloca [96 x i8], align 8               ; 11 uses
  %i.bb = alloca [40 x i8], align 8               ; 15 uses
  %.sroa.0161 = alloca [16 x i8], align 8         ; 6 uses
  %i.bc = alloca [96 x i8], align 8               ; 6 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [96 x i8], align 8               ; 6 uses
  %i.bf = alloca [40 x i8], align 8               ; 4 uses
  %i.bg = alloca [96 x i8], align 8               ; 4 uses
  %i.bh = alloca [40 x i8], align 8               ; 4 uses
  %i.bi = alloca [96 x i8], align 8               ; 4 uses
  %i.bj = alloca [40 x i8], align 8               ; 4 uses
  %i.bk = alloca [40 x i8], align 8               ; 6 uses
  %i.bl = alloca [96 x i8], align 8               ; 8 uses
  %i.bm = alloca [40 x i8], align 8               ; 10 uses
  %i.bn = alloca [96 x i8], align 8               ; 10 uses
  %i.bo = alloca [40 x i8], align 8               ; 14 uses
  %.sroa.0143 = alloca [16 x i8], align 8         ; 5 uses
  %i.bp = alloca [48 x i8], align 8               ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !noundef !44
  %i.bs = icmp eq i64 %i.br, 0                    ; 2 uses
  br i1 %i.bs, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !44, !noundef !44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !44
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !noundef !44 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 64051194700380388
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %i.by, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !44, !noundef !44 ; 15 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !44 ; 10 uses
  br i1 %i.ca, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.cf = phi i64 [ %i.bw, %.thread ], [ %i.ce, %bb.b ] ; 2 uses
  %i.cg = phi ptr [ %i.bu, %.thread ], [ %i.cc, %bb.b ]
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ci = icmp eq i64 %i.ce, 0
  br i1 %i.ci, label %bb.g, label %.preheader.preheader, !prof !49

.preheader.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cj = icmp ult i64 %i.ce, 4
  br i1 %i.cj, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.ce, -4
  br label %.preheader

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7306)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !7306, !noalias !7307, !noundef !44 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 64051194700380388
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %.noexc, label %.noexc38

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !7308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !7308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  %i.co = call fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17h4938da9a66628a24E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bi), !inline_history !7121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !7308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !7308
  br label %.thread194

.noexc38:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !7308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !7308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bg, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  %i.cp = call fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord9check_dyn17haf2d5921b4d140fbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bg), !inline_history !7121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !7308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !7308
  br label %.thread194

bb.f:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit", %bb.c
  %i.cq = phi i64 [ %i.ce, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit" ], [ %i.cf, %bb.c ]
  %i.cr = phi ptr [ %i.cc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit" ], [ %i.cg, %bb.c ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 90
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.5.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.617.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.6.0..sroa_idx7.i76 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8.0..sroa_idx9.i77 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 90
  br label %bb.i

.body.thread190:                                  ; preds = %bb.g, %.thread237, %bb.t, %bb.u
  %.sroa.020.0.ph = phi i8 [ 0, %bb.u ], [ 0, %bb.t ], [ 1, %.thread237 ], [ 1, %bb.g ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc47:                                         ; preds = %bb.w, %bb.v
  %i.dq = trunc nuw i8 %.sroa.020.2 to i1
  br i1 %i.dq, label %bb.ff, label %.thread194

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr @30, ptr %i.bp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr null, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.du, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #75
          to label %bb.h unwind label %.body.thread190

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.09.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ew, %.preheader ] ; 5 uses
  %.sroa.07.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ev, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.09.0.i
  %.val.i = load ptr, ptr %i.dv, align 8, !alias.scope !7309, !nonnull !44, !align !50, !noundef !44
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 216
  %i.dx = load i32, ptr %i.dw, align 8, !range !72, !noalias !7310, !noundef !44
  %i.dy = icmp ne i32 %i.dx, 3
  %i.dz = zext i1 %i.dy to i64
  %i.ea = add i64 %.sroa.07.0.i, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.09.0.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.val.i.1 = load ptr, ptr %i.ec, align 8, !alias.scope !7309, !nonnull !44, !align !50, !noundef !44
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 216
  %i.ee = load i32, ptr %i.ed, align 8, !range !72, !noalias !7310, !noundef !44
  %i.ef = icmp ne i32 %i.ee, 3
  %i.eg = zext i1 %i.ef to i64
  %i.eh = add i64 %i.ea, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.09.0.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.val.i.2 = load ptr, ptr %i.ej, align 8, !alias.scope !7309, !nonnull !44, !align !50, !noundef !44
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i.2, i64 216
  %i.el = load i32, ptr %i.ek, align 8, !range !72, !noalias !7310, !noundef !44
  %i.em = icmp ne i32 %i.el, 3
  %i.en = zext i1 %i.em to i64
  %i.eo = add i64 %i.eh, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.09.0.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %.val.i.3 = load ptr, ptr %i.eq, align 8, !alias.scope !7309, !nonnull !44, !align !50, !noundef !44
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 216
  %i.es = load i32, ptr %i.er, align 8, !range !72, !noalias !7310, !noundef !44
  %i.et = icmp ne i32 %i.es, 3
  %i.eu = zext i1 %i.et to i64
  %i.ev = add i64 %i.eo, %i.eu                    ; 3 uses
  %i.ew = add nuw i64 %.sroa.09.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.unr-lcssa", label %.preheader

bb.h:                                             ; preds = %.thread237, %bb.g
  unreachable

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.unr-lcssa": ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit", label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.unr-lcssa", %.preheader.preheader
  %.sroa.09.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ew, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.unr-lcssa" ]
  %.sroa.07.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ev, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.unr-lcssa" ]
  %lcmp.mod665 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod665)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.09.0.i.epil = phi i64 [ %i.fd, %.preheader.epil ], [ %.sroa.09.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.07.0.i.epil = phi i64 [ %i.fc, %.preheader.epil ], [ %.sroa.07.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.09.0.i.epil
  %.val.i.epil = load ptr, ptr %i.ex, align 8, !alias.scope !7309, !nonnull !44, !align !50, !noundef !44
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 216
  %i.ez = load i32, ptr %i.ey, align 8, !range !72, !noalias !7310, !noundef !44
  %i.fa = icmp ne i32 %i.ez, 3
  %i.fb = zext i1 %i.fa to i64
  %i.fc = add i64 %.sroa.07.0.i.epil, %i.fb       ; 2 uses
  %i.fd = add nuw i64 %.sroa.09.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit", label %.preheader.epil, !llvm.loop !7126
end_hunk_0
begin_hunk_1_@"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h481560f2b419057eE":bb.a
  br i1 %i.ff, label %.lr.ph642, label %bb.f

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread": ; preds = %.lr.ph642
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.fe
  br i1 %i.fh, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit", label %.lr.ph642

.lr.ph642:                                        ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread"
  %i.fi = phi ptr [ %i.fg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread" ], [ %i.cc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit" ] ; 2 uses
  %.val.i39 = load ptr, ptr %i.fi, align 8, !noalias !7311, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i39, i64 216
  %i.fk = load i32, ptr %i.fj, align 8, !range !72, !noalias !7311, !noundef !44
  %.not.i.i = icmp eq i32 %i.fk, 3
  br i1 %.not.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit.split.loop.exit606"

bb.i:                                             ; preds = %bb.bg, %bb.f
  %.sroa.026.0 = phi ptr [ %i.cr, %bb.f ], [ %.sroa.026.1, %bb.bg ] ; 3 uses
  %i.fl = icmp eq ptr %.sroa.026.0, %i.cs         ; 2 uses
  %.sroa.026.1.idx = select i1 %i.fl, i64 0, i64 8
  %.sroa.026.1 = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 %.sroa.026.1.idx
  br i1 %i.fl, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fm = load ptr, ptr %.sroa.026.0, align 8, !nonnull !44, !align !50, !noundef !44 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  call void @llvm.experimental.noalias.scope.decl(metadata !7313)
  %.val.i41 = load ptr, ptr %2, align 8, !alias.scope !7313, !noalias !7312, !nonnull !44, !noundef !44 ; 3 uses
  %.val1.i = load ptr, ptr %i.ct, align 8, !alias.scope !7313, !noalias !7312 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i41, align 8, !noalias !7314, !noundef !44 ; 2 uses
  %i.fn = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.fn)
  %i.fo = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.fo, ptr %.val.i41, align 8, !noalias !7314
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.k, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.j
  %.not.i.i42 = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i42, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !7314, !noundef !44 ; 2 uses
  %i.fq = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.fr, ptr %.val1.i, align 8, !noalias !7314
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %bb.m, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.m:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.l, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val2.i = load ptr, ptr %i.cu, align 8, !alias.scope !7313, !noalias !7312, !nonnull !44, !noundef !44 ; 3 uses
  %.val3.i = load ptr, ptr %i.cv, align 8, !alias.scope !7313, !noalias !7312 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !7314, !noundef !44 ; 2 uses
  %i.ft = icmp ne i64 %.val.i.i4.i, 0
  call void @llvm.assume(i1 %i.ft)
  %i.fu = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.fu, ptr %.val2.i, align 8, !noalias !7314
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.n, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.n:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.z, label %bb.o

bb.o:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !7314, !noundef !44 ; 2 uses
  %i.fw = icmp ne i64 %.val.i2.i6.i, 0
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.fx, ptr %.val3.i, align 8, !noalias !7314
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.p, label %bb.z, !prof !49

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ga = load i64, ptr %i.fz, align 8            ; 4 uses
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = icmp ult i64 %i.ga, 64051194700380388
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %bb.v, label %.thread441

.thread441:                                       ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.gd = icmp ult i64 %i.ga, 64051194700380388
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp eq i64 %i.ga, 0
  br i1 %i.ge, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !7315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !7315
  store i64 3, ptr %i.be, align 8, !noalias !7316
  %.sroa.5154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  store i16 1, ptr %.sroa.5154.0..sroa_idx155, align 8, !noalias !7316
  %.sroa.6.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.be, i64 90
  store i16 0, ptr %.sroa.6.0..sroa_idx157, align 2, !noalias !7316
  %i.gf = invoke fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17h4938da9a66628a24E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.be)
          to label %.noexc44 unwind label %.body.thread190, !inline_history !7121

.noexc44:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !7315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !7315
  br label %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46"

bb.u:                                             ; preds = %.thread441, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !7315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false), !noalias !7317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !7315
  store i64 3, ptr %i.bc, align 8, !noalias !7316
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  store i16 1, ptr %.sroa.5154.0..sroa_idx, align 8, !noalias !7316
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 90
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 2, !noalias !7316
  %i.gg = invoke fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord9check_dyn17haf2d5921b4d140fbE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bc)
          to label %.noexc45 unwind label %.body.thread190, !inline_history !7121

.noexc45:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !7315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !7315
  br label %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46"

"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46": ; preds = %.noexc45, %.noexc44
  %.sroa.0.0.i43 = phi ptr [ %i.gf, %.noexc44 ], [ %i.gg, %.noexc45 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.not29 = icmp eq ptr %.sroa.0.0.i43, null
  br i1 %.not29, label %bb.v, label %.loopexit349

bb.v:                                             ; preds = %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46", %bb.r
  %.sroa.020.2 = phi i8 [ 1, %bb.r ], [ 0, %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46" ] ; 2 uses
  %i.gh = load i64, ptr %4, align 8, !range !51, !alias.scope !7318, !noundef !44
  %i.gi = icmp samesign ult i64 %i.gh, 18
  br i1 %i.gi, label %bb.w, label %.noexc47

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %4)
          to label %.noexc47 unwind label %bb.x, !inline_history !2

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59": ; preds = %.body.thread, %bb.fg, %bb.x
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.x ], [ %eh.lpad-body185, %bb.fg ], [ %eh.lpad-body185, %.body.thread ] ; 2 uses
  %.sroa.020.3 = phi i8 [ %.sroa.020.4, %bb.x ], [ %.sroa.020.0.lpad-body184, %bb.fg ], [ %.sroa.020.0.lpad-body184, %.body.thread ]
  %i.gj = trunc nuw i8 %.sroa.020.3 to i1
  br i1 %i.gj, label %bb.fi, label %.thread199

bb.x:                                             ; preds = %bb.y, %bb.w
  %.sroa.020.4 = phi i8 [ %.sroa.020.5, %bb.y ], [ %.sroa.020.2, %bb.w ]
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit59"

.loopexit349:                                     ; preds = %bb.bg, %.thread234, %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46"
  %.sroa.020.5 = phi i8 [ 0, %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46" ], [ 1, %.thread234 ], [ 1, %bb.bg ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i43, %"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ShallowRecord$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h6e2f8b85a0d46314E.exit46" ], [ %.sroa.0.0.i79.ph, %.thread234 ], [ %.sroa.0.0.i79, %bb.bg ] ; 2 uses
  %i.gl = load i64, ptr %4, align 8, !range !51, !alias.scope !7319, !noundef !44
  %i.gm = icmp samesign ult i64 %i.gl, 18
  br i1 %i.gm, label %bb.y, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49"

bb.y:                                             ; preds = %.loopexit349
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %4)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49" unwind label %bb.x, !inline_history !2

bb.z:                                             ; preds = %bb.o, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.gn = load i16, ptr %i.cw, align 8, !range !94, !alias.scope !7313, !noalias !7312, !noundef !44
  store ptr %.val.i41, ptr %i.bm, align 8, !alias.scope !7312, !noalias !7313
  store ptr %.val1.i, ptr %i.cx, align 8, !alias.scope !7312, !noalias !7313
  store ptr %.val2.i, ptr %i.cy, align 8, !alias.scope !7312, !noalias !7313
  store ptr %.val3.i, ptr %i.cz, align 8, !alias.scope !7312, !noalias !7313
  store i16 %i.gn, ptr %i.da, align 8, !alias.scope !7312, !noalias !7313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 3, ptr %i.bl, align 8
  store i16 1, ptr %i.db, align 8
  store i16 0, ptr %i.dc, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !7320)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0161)
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 272
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !7320, !noalias !7321, !noundef !44 ; 2 uses
  %.not.i = icmp eq i64 %i.gp, 0
  br i1 %.not.i, label %bb.aa, label %bb.ab, !prof !49

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #75
          to label %bb.ac unwind label %bb.be, !noalias !7322, !inline_history !7148

bb.ab:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fm, i64 264
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !7320, !noalias !7321, !nonnull !44, !align !50, !noundef !44
  %i.gs = getelementptr [48 x i8], ptr %i.gr, i64 %i.gp ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -48    ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !range !72, !noalias !7322, !noundef !44
  %.not5.i = icmp eq i32 %i.gu, 3
  %i.gv = getelementptr i8, ptr %i.gs, i64 -44
  %.sink = select i1 %.not5.i, ptr %i.gv, ptr %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0161, ptr noundef nonnull align 4 dereferenceable(16) %.sink, i64 16, i1 false), !noalias !7322
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fm, i64 216 ; 4 uses
  %i.gx = load i32, ptr %i.gw, align 8, !range !72, !alias.scope !7320, !noalias !7321, !noundef !44
  %.not6.i = icmp eq i32 %i.gx, 3                 ; 3 uses
  %..i = select i1 %.not6.i, ptr null, ptr %i.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !7322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i64 40, i1 false), !noalias !7323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !7322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, ptr noundef nonnull align 8 dereferenceable(96) %i.bl, i64 96, i1 false), !noalias !7324
  call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  call void @llvm.experimental.noalias.scope.decl(metadata !7326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !7327
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fm)
          to label %bb.ad unwind label %bb.bb, !noalias !7327, !inline_history !7155

.body85.thread207.loopexit:                       ; preds = %bb.az
  %lpad.loopexit346 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body85.thread207.loopexit.split-lp:              ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i"
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ac:                                            ; preds = %bb.aa
  unreachable

.body.i.thread:                                   ; preds = %bb.ar
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.hx, i64 noundef 232, i64 noundef 8) #66, !noalias !7328, !inline_history !7155
  br label %.body.thread

bb.ad:                                            ; preds = %bb.ab
  %i.gz = load i64, ptr %i.ap, align 8, !range !60, !alias.scope !7329, !noalias !7327, !noundef !44
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = load ptr, ptr %i.dd, align 8, !align !50
  %.not.i.i.i = icmp ne ptr %i.hb, null
  %or.cond477.not = select i1 %i.ha, i1 %.not.i.i.i, i1 false
  br i1 %or.cond477.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = load ptr, ptr %i.de, align 8, !alias.scope !7330, !noalias !7331, !noundef !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hc, null
  %i.hd = load ptr, ptr %i.df, align 8, !alias.scope !7330, !noalias !7331, !nonnull !44
  %i.he = icmp eq ptr %i.hc, %i.hd
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.he
  br i1 %or.cond.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h244119326a40d057E.exit.i", label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !7327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %.sroa.0161. = select i1 %.not6.i, ptr %.sroa.0161, ptr %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0161., i64 16, i1 false), !noalias !7332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7327
  call void @llvm.experimental.noalias.scope.decl(metadata !7333), !noalias !7334
  call void @llvm.experimental.noalias.scope.decl(metadata !7335), !noalias !7334
  %.val.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !7336, !noalias !7337, !nonnull !44, !noundef !44 ; 3 uses
  %.val1.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !7336, !noalias !7337 ; 4 uses
  %.val.i.i.i.i = load i64, ptr %.val.i.i, align 8, !noalias !7338, !noundef !44 ; 2 uses
  %i.hf = icmp ne i64 %.val.i.i.i.i, 0
  call void @llvm.assume(i1 %i.hf), !noalias !7334
  %i.hg = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.hg, ptr %.val.i.i, align 8, !noalias !7338
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.ag, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i, !prof !49

bb.ag:                                            ; preds = %bb.af
  call void @llvm.trap(), !noalias !7334
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i: ; preds = %bb.af
  %.not.i.i26.i = icmp eq ptr %.val1.i.i, null
  br i1 %.not.i.i26.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i", label %bb.ah

bb.ah:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i
  %.val.i2.i.i.i = load i64, ptr %.val1.i.i, align 8, !noalias !7338, !noundef !44 ; 2 uses
  %i.hi = icmp ne i64 %.val.i2.i.i.i, 0
  call void @llvm.assume(i1 %i.hi), !noalias !7334
  %i.hj = add i64 %.val.i2.i.i.i, 1               ; 2 uses
  store i64 %i.hj, ptr %.val1.i.i, align 8, !noalias !7338
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.ai, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i", !prof !49

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.trap(), !noalias !7334
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i": ; preds = %bb.ah, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i
  %.val2.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !7336, !noalias !7337, !nonnull !44, !noundef !44 ; 3 uses
  %.val3.i.i = load ptr, ptr %i.di, align 8, !alias.scope !7336, !noalias !7337 ; 4 uses
  %.val.i.i4.i.i = load i64, ptr %.val2.i.i, align 8, !noalias !7338, !noundef !44 ; 2 uses
  %i.hl = icmp ne i64 %.val.i.i4.i.i, 0
  call void @llvm.assume(i1 %i.hl), !noalias !7334
  %i.hm = add i64 %.val.i.i4.i.i, 1               ; 2 uses
  store i64 %i.hm, ptr %.val2.i.i, align 8, !noalias !7338
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.aj, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i, !prof !49

bb.aj:                                            ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i"
  call void @llvm.trap(), !noalias !7334
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i"
  %.not.i5.i.i = icmp eq ptr %.val3.i.i, null
  br i1 %.not.i5.i.i, label %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i", label %bb.ak

bb.ak:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i
  %.val.i2.i6.i.i = load i64, ptr %.val3.i.i, align 8, !noalias !7338, !noundef !44 ; 2 uses
  %i.ho = icmp ne i64 %.val.i2.i6.i.i, 0
  call void @llvm.assume(i1 %i.ho), !noalias !7334
  %i.hp = add i64 %.val.i2.i6.i.i, 1              ; 2 uses
  store i64 %i.hp, ptr %.val3.i.i, align 8, !noalias !7338
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %bb.al, label %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i", !prof !49

bb.al:                                            ; preds = %bb.ak
  call void @llvm.trap(), !noalias !7334
  unreachable

"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i": ; preds = %bb.ak, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i
  %i.hr = load i16, ptr %i.dj, align 8, !range !94, !alias.scope !7336, !noalias !7337, !noundef !44
  store ptr %.val.i.i, ptr %i.ai, align 8, !alias.scope !7333, !noalias !7339
  store ptr %.val1.i.i, ptr %i.dk, align 8, !alias.scope !7333, !noalias !7339
  store ptr %.val2.i.i, ptr %i.dl, align 8, !alias.scope !7333, !noalias !7339
  store ptr %.val3.i.i, ptr %i.dm, align 8, !alias.scope !7333, !noalias !7339
  store i16 %i.hr, ptr %i.dn, align 8, !alias.scope !7333, !noalias !7339
  invoke fastcc void @_ZN16nickel_lang_core9typecheck16infer_with_annot17hc30c9ff4e2362b6dE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %..i)
          to label %bb.am unwind label %bb.bb, !noalias !7340, !inline_history !7155

bb.am:                                            ; preds = %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7327
  %i.hs = load i64, ptr %i.aj, align 8, !range !91, !noalias !7327, !noundef !44 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 20
  %i.hu = load ptr, ptr %.sroa.5.0..sroa_idx.i73, align 8, !noalias !7327 ; 2 uses
  br i1 %i.ht, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.hv = load i64, ptr %i.ba, align 8, !range !51, !alias.scope !7341, !noalias !7342, !noundef !44
  %i.hw = icmp samesign ult i64 %i.hv, 18
  br i1 %i.hw, label %bb.ao, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i"

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ba)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i" unwind label %bb.au, !noalias !7343, !inline_history !7172

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i": ; preds = %bb.ao, %bb.an
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bb)
          to label %.thread234 unwind label %.body85.thread207.loopexit.split-lp, !inline_history !7155

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx9.i77, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.617.0..sroa_idx.i75, i64 80, i1 false), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7327
  store i64 %i.hs, ptr %i.ah, align 8, !noalias !7327
  store ptr %i.hu, ptr %.sroa.6.0..sroa_idx7.i76, align 8, !noalias !7327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !noalias !7342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !7344
  %i.hx = invoke noundef align 8 ptr @"_ZN108_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..subtyping..SubsumedBy$GT$11subsumed_by17hbff04d6adf22b3baE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.af)
          to label %bb.aq unwind label %.thread230, !noalias !7340, !inline_history !7155 ; 4 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7327
  %.not21.i78 = icmp eq ptr %i.hx, null
  br i1 %.not21.i78, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ae, ptr noundef nonnull align 8 dereferenceable(232) %i.hx, i64 232, i1 false), !noalias !7346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ak, i64 16, i1 false), !noalias !7347
  %i.hy = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ad)
          to label %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17hb4f10fdff9fa5558E.exit.i" unwind label %.body.i.thread, !noalias !7348, !inline_history !7155

"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17hb4f10fdff9fa5558E.exit.i": ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7345
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.hx, i64 noundef 232, i64 noundef 8) #66, !noalias !7328, !inline_history !7155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %.thread234

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bg

.thread230:                                       ; preds = %bb.ap, %bb.av
  %lpad.thr_comm228 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.at:                                            ; preds = %bb.aw
  %lpad.thr_comm.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %.thread222

bb.au:                                            ; preds = %bb.ao
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.thread222

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h244119326a40d057E.exit.i": ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !7327
  br i1 %.not6.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h244119326a40d057E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !7344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.an, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !noalias !7342
  %i.ia = invoke fastcc noundef align 8 ptr @"_ZN87_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17hd3be3868aafdaa2cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gw, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ao, ptr noalias noundef nonnull align 1 %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.an)
          to label %bb.ba unwind label %.thread230, !noalias !7340, !inline_history !7155

bb.aw:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h244119326a40d057E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.am, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false), !noalias !7342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !7327
  store i64 3, ptr %i.al, align 8, !noalias !7327
  store i16 1, ptr %i.do, align 8, !noalias !7327
  store i16 0, ptr %i.dp, align 2, !noalias !7327
  %i.ib = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bb)
          to label %bb.ax unwind label %bb.at, !noalias !7349, !inline_history !7155 ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !7327
  %.not23.i81 = icmp eq ptr %i.ib, null
  br i1 %.not23.i81, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ac, ptr noundef nonnull align 8 dereferenceable(232) %i.ib, i64 232, i1 false), !noalias !7351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0161, i64 16, i1 false), !noalias !7352
  %i.ic = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.ab)
          to label %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h967dbb76d14c3f04E.exit.i" unwind label %.body.i.thread.thread, !noalias !7353, !inline_history !7155

.body.i.thread.thread:                            ; preds = %bb.ay
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ib, i64 noundef 232, i64 noundef 8) #66, !noalias !7354, !inline_history !7155
  br label %.thread222

"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h967dbb76d14c3f04E.exit.i": ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7350
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ib, i64 noundef 232, i64 noundef 8) #66, !noalias !7354, !inline_history !7155
  br label %bb.az

bb.az:                                            ; preds = %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h967dbb76d14c3f04E.exit.i", %bb.ax
  %.sroa.0.1.i82 = phi ptr [ null, %bb.ax ], [ %i.ic, %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17h967dbb76d14c3f04E.exit.i" ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bb)
          to label %bb.bg unwind label %.body85.thread207.loopexit, !inline_history !7155

bb.ba:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !7327
  br label %bb.bg

bb.bb:                                            ; preds = %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i", %bb.ab
  %lpad.thr_comm.split-lp214 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load i64, ptr %i.ba, align 8, !range !51, !alias.scope !7355, !noalias !7342, !noundef !44
  %i.if = icmp samesign ult i64 %i.ie, 18
  br i1 %i.if, label %bb.bc, label %.thread222

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ba)
          to label %.thread222 unwind label %bb.bd, !noalias !7356, !inline_history !7172

bb.bd:                                            ; preds = %.thread222, %bb.bc
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !7356, !inline_history !7155
  unreachable

.thread222:                                       ; preds = %bb.bb, %bb.bc, %bb.au, %.body.i.thread.thread, %bb.at
  %.pn.pn.i69226 = phi { ptr, i32 } [ %i.id, %.body.i.thread.thread ], [ %lpad.thr_comm.split-lp229, %bb.at ], [ %i.hz, %bb.au ], [ %lpad.thr_comm.split-lp214, %bb.bc ], [ %lpad.thr_comm.split-lp214, %bb.bb ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bb) #77
          to label %.body.thread unwind label %bb.bd, !noalias !7356, !inline_history !7155

bb.be:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp206 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.bl)
          to label %.noexc60 unwind label %bb.bf, !inline_history !7181

bb.bf:                                            ; preds = %bb.be, %.noexc60
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !inline_history !7148
  unreachable

.noexc60:                                         ; preds = %bb.be
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm) #77
          to label %.body.thread unwind label %bb.bf, !inline_history !7148

.thread234:                                       ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i", %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17hb4f10fdff9fa5558E.exit.i"
  %.sroa.0.0.i79.ph = phi ptr [ %i.hy, %"_ZN114_$LT$$RF$nickel_lang_core..typecheck..FieldDefCheckView$LT$S$GT$$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$17hb4f10fdff9fa5558E.exit.i" ], [ %i.hu, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !7322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !7322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.loopexit349

bb.bg:                                            ; preds = %bb.az, %bb.as, %bb.ba
  %.sroa.0.0.i79 = phi ptr [ %i.ia, %bb.ba ], [ %.sroa.0.1.i82, %bb.az ], [ null, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !7322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !7322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.not31 = icmp eq ptr %.sroa.0.0.i79, null
  br i1 %.not31, label %bb.i, label %.loopexit349

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49": ; preds = %.loopexit349, %bb.y
  %i.ii = trunc nuw i8 %.sroa.020.5 to i1
  br i1 %i.ii, label %bb.bh, label %.thread194

.thread194:                                       ; preds = %.noexc, %.noexc38, %bb.fe, %bb.ff, %bb.bh, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49", %.noexc47
  %.sroa.0.2 = phi ptr [ null, %bb.ff ], [ null, %.noexc47 ], [ %.sroa.0.1, %bb.bh ], [ %.sroa.0.1, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49" ], [ %.sroa.0.0.i51, %bb.fe ], [ %i.co, %.noexc ], [ %i.cp, %.noexc38 ]
  ret ptr %.sroa.0.2

bb.bh:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit49"
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %.thread194

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit.split.loop.exit606": ; preds = %.lr.ph642
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i39, i64 216
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit.split.loop.exit606"
  %.sroa.0.0.i40 = phi ptr [ %i.ij, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit.split.loop.exit606" ], [ null, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hf8c82eaf619ceda9E.exit.thread" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0143)
  %i.ik = load ptr, ptr %i.cc, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 272
  %i.im = load i64, ptr %i.il, align 8, !noundef !44 ; 2 uses
  %.not33 = icmp eq i64 %i.im, 0
  br i1 %.not33, label %.thread237, label %bb.bi

bb.bi:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit"
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 264
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !44, !align !50, !noundef !44
  %i.ip = getelementptr [48 x i8], ptr %i.io, i64 %i.im ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 -48    ; 3 uses
  %.not34 = icmp eq ptr %i.iq, null
  br i1 %.not34, label %.thread237, label %bb.bj, !prof !61

bb.bj:                                            ; preds = %bb.bi
  %i.ir = load i32, ptr %i.iq, align 8, !range !72, !noundef !44
  %.not35 = icmp eq i32 %i.ir, 3
  %i.is = getelementptr i8, ptr %i.ip, i64 -44
  %.sink475 = select i1 %.not35, ptr %i.is, ptr %i.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0143, ptr noundef nonnull align 4 dereferenceable(16) %.sink475, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.bl

.thread237:                                       ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hf0a45a192f105a92E.exit", %bb.bi
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @42, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #75
          to label %bb.h unwind label %.body.thread190

bb.bk:                                            ; preds = %bb.en, %bb.eg
  %lpad.thr_comm.split-lp261 = landingpad { ptr, i32 }
          cleanup
  br label %.thread254

bb.bl:                                            ; preds = %bb.bp, %bb.bj
  %.sroa.12.0 = phi ptr [ undef, %bb.bj ], [ %.sroa.12.0.copyload, %bb.bp ]
  %.sroa.10.0 = phi ptr [ undef, %bb.bj ], [ %.sroa.10.0.copyload, %bb.bp ] ; 2 uses
  %.sroa.8169.0 = phi ptr [ undef, %bb.bj ], [ %.sroa.8169.0.copyload, %bb.bp ]
  %.sroa.0168.0 = phi i64 [ 2, %bb.bj ], [ %.pr.i.i, %bb.bp ]
  %i.it = phi ptr [ %i.cc, %bb.bj ], [ %i.iw, %bb.bp ] ; 3 uses
  switch i64 %.sroa.0168.0, label %bb.bm [
    i64 2, label %bb.bo
    i64 0, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.8169.0, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %.sroa.10.0, null
  %i.iu = icmp eq ptr %.sroa.10.0, %.sroa.12.0
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i138, i1 true, i1 %i.iu
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7357
  %i.iv = icmp eq ptr %i.it, %i.fe
  br i1 %i.iv, label %bb.ew, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.i.i": ; preds = %bb.bo
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.val.i.i.i.i140 = load ptr, ptr %i.it, align 8, !noalias !7358, !nonnull !44, !align !50, !noundef !44
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.val.i.i.i.i140)
          to label %.noexc141 unwind label %.thread240

.noexc141:                                        ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.i.i"
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !7357 ; 2 uses
  %.not1.i.i = icmp eq i64 %.pr.i.i, 2
  br i1 %.not1.i.i, label %bb.ew, label %bb.bp

bb.bp:                                            ; preds = %.noexc141
  %.sroa.8169.0.copyload = load ptr, ptr %.sroa.8169.0..sroa_idx, align 8, !noalias !7359
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !7359
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !7359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7357
  br label %bb.bl

.thread240:                                       ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.i.i"
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.thread254

bb.bq:                                            ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %.not20.i = icmp eq ptr %.sroa.0.0.i40, null    ; 5 uses
  %.sroa.0143..sroa.0.0.i40 = select i1 %.not20.i, ptr %.sroa.0143, ptr %.sroa.0.0.i40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0143..sroa.0.0.i40, i64 16, i1 false), !noalias !7360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !7359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !7359
  call void @llvm.experimental.noalias.scope.decl(metadata !7361)
  call void @llvm.experimental.noalias.scope.decl(metadata !7362)
  %.val.i124 = load ptr, ptr %i.bo, align 8, !alias.scope !7362, !noalias !7363, !nonnull !44, !noundef !44 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val1.i125 = load ptr, ptr %i.iy, align 8, !alias.scope !7362, !noalias !7363 ; 4 uses
  %.val.i.i.i126 = load i64, ptr %.val.i124, align 8, !noalias !7364, !noundef !44 ; 2 uses
  %i.iz = icmp ne i64 %.val.i.i.i126, 0
  call void @llvm.assume(i1 %i.iz), !noalias !7365
  %i.ja = add i64 %.val.i.i.i126, 1               ; 2 uses
  store i64 %i.ja, ptr %.val.i124, align 8, !noalias !7364
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %bb.br, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i127, !prof !49

bb.br:                                            ; preds = %bb.bq
  call void @llvm.trap(), !noalias !7365
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i127: ; preds = %bb.bq
  %.not.i.i128 = icmp eq ptr %.val1.i125, null
  br i1 %.not.i.i128, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i130", label %bb.bs

bb.bs:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i127
  %.val.i2.i.i129 = load i64, ptr %.val1.i125, align 8, !noalias !7364, !noundef !44 ; 2 uses
  %i.jc = icmp ne i64 %.val.i2.i.i129, 0
  call void @llvm.assume(i1 %i.jc), !noalias !7365
  %i.jd = add i64 %.val.i2.i.i129, 1              ; 2 uses
  store i64 %i.jd, ptr %.val1.i125, align 8, !noalias !7364
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.bt, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i130", !prof !49

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.trap(), !noalias !7365
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i130": ; preds = %bb.bs, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i127
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val2.i131 = load ptr, ptr %i.jf, align 8, !alias.scope !7362, !noalias !7363, !nonnull !44, !noundef !44 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.val3.i132 = load ptr, ptr %i.jg, align 8, !alias.scope !7362, !noalias !7363 ; 4 uses
  %.val.i.i4.i133 = load i64, ptr %.val2.i131, align 8, !noalias !7364, !noundef !44 ; 2 uses
  %i.jh = icmp ne i64 %.val.i.i4.i133, 0
  call void @llvm.assume(i1 %i.jh), !noalias !7365
  %i.ji = add i64 %.val.i.i4.i133, 1              ; 2 uses
  store i64 %i.ji, ptr %.val2.i131, align 8, !noalias !7364
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %bb.bu, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i134, !prof !49

bb.bu:                                            ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i130"
  call void @llvm.trap(), !noalias !7365
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i134: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i130"
  %.not.i5.i135 = icmp eq ptr %.val3.i132, null
  br i1 %.not.i5.i135, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i134
  %.val.i2.i6.i136 = load i64, ptr %.val3.i132, align 8, !noalias !7364, !noundef !44 ; 2 uses
  %i.jk = icmp ne i64 %.val.i2.i6.i136, 0
  call void @llvm.assume(i1 %i.jk), !noalias !7365
  %i.jl = add i64 %.val.i2.i6.i136, 1             ; 2 uses
  store i64 %i.jl, ptr %.val3.i132, align 8, !noalias !7364
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.bw, label %bb.bx, !prof !49

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.trap(), !noalias !7365
  unreachable

bb.bx:                                            ; preds = %bb.bv, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i134
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.jo = load i16, ptr %i.jn, align 8, !range !94, !alias.scope !7362, !noalias !7363, !noundef !44
  store ptr %.val.i124, ptr %i.at, align 8, !alias.scope !7361, !noalias !7366
  %i.jp = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %.val1.i125, ptr %i.jp, align 8, !alias.scope !7361, !noalias !7366
  %i.jq = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  store ptr %.val2.i131, ptr %i.jq, align 8, !alias.scope !7361, !noalias !7366
  %i.jr = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  store ptr %.val3.i132, ptr %i.jr, align 8, !alias.scope !7361, !noalias !7366
  %i.js = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store i16 %i.jo, ptr %i.js, align 8, !alias.scope !7361, !noalias !7366
  call void @llvm.experimental.noalias.scope.decl(metadata !7367)
  call void @llvm.experimental.noalias.scope.decl(metadata !7368)
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.11177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  br label %.outer

.thread278:                                       ; preds = %bb.dm, %bb.dl, %bb.el, %bb.ej, %bb.dj, %bb.cu, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i"
  %lpad.thr_comm276 = landingpad { ptr, i32 }
          cleanup
  br label %.thread269

bb.by:                                            ; preds = %bb.dg, %bb.di, %bb.ef
  %lpad.thr_comm.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %.thread254

bb.bz:                                            ; preds = %bb.cl, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.thread.i.i.i"
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.thread269

bb.ca:                                            ; preds = %.outer, %bb.eo
  %.sroa.11177.1 = phi ptr [ %.sroa.11177.2294, %bb.eo ], [ %.sroa.11177.1.ph, %.outer ] ; 5 uses
  %.sroa.8176.1 = phi ptr [ %.sroa.8176.3295, %bb.eo ], [ %.sroa.8176.1.ph, %.outer ] ; 3 uses
  %.sroa.0175.1 = phi i64 [ %.sroa.0175.3296, %bb.eo ], [ %.sroa.0175.1.ph, %.outer ] ; 2 uses
  switch i64 %.sroa.0175.1, label %bb.cb [
    i64 2, label %_ZN4core3ops8function6FnOnce9call_once17h6e85b0ec10e37a05E.exit.i.i.i.i
    i64 0, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.8176.1, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cc, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8857e5e75ed6f2e3E.exit.i.thread"

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sroa.8176.2 = phi ptr [ %.sroa.8176.1, %bb.ca ], [ null, %bb.cb ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11177.1, null
  %i.jy = icmp eq ptr %.sroa.11177.1, %.sroa.13178.1.ph
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.jy
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h6e85b0ec10e37a05E.exit.i.i.i.i, label %bb.cd
end_hunk_1
begin_hunk_2_@"_ZN109_$LT$$RF$nickel_lang_core..typecheck..record..ResolvedField$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17h481560f2b419057eE":bb.a
  %.sroa.24.1.ph = phi ptr [ %i.cc, %bb.bx ], [ %i.kb, %bb.ce ] ; 3 uses
  %.sroa.13178.1.ph = phi ptr [ undef, %bb.bx ], [ %.sroa.13178.0.copyload, %bb.ce ]
  %.sroa.11177.1.ph = phi ptr [ undef, %bb.bx ], [ %.sroa.11177.0.copyload, %bb.ce ]
  %.sroa.8176.1.ph = phi ptr [ undef, %bb.bx ], [ %.sroa.8176.0.copyload, %bb.ce ]
  %.sroa.0175.1.ph = phi i64 [ 2, %bb.bx ], [ %.pr.i.i.i, %bb.ce ]
  br label %bb.ca

.loopexit:                                        ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread269

.loopexit.split-lp:                               ; preds = %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i110"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread269

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8857e5e75ed6f2e3E.exit.i.thread": ; preds = %bb.cb, %bb.cd
  %.sroa.0.0.i.i.i297 = phi ptr [ %.sroa.11177.1, %bb.cd ], [ %.sroa.8176.1, %bb.cb ]
  %.sroa.0175.3296 = phi i64 [ 0, %bb.cd ], [ %.sroa.0175.1, %bb.cb ]
  %.sroa.8176.3295 = phi ptr [ %.sroa.8176.2, %bb.cd ], [ null, %bb.cb ]
  %.sroa.11177.2294 = phi ptr [ %i.jz, %bb.cd ], [ %.sroa.11177.1, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7372
  call void @llvm.experimental.noalias.scope.decl(metadata !7373), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7375), !noalias !7374
  %.val.i.i97 = load ptr, ptr %i.at, align 8, !alias.scope !7376, !noalias !7377, !nonnull !44, !noundef !44 ; 3 uses
  %.val1.i.i98 = load ptr, ptr %i.jp, align 8, !alias.scope !7376, !noalias !7377 ; 4 uses
  %.val.i.i.i.i99 = load i64, ptr %.val.i.i97, align 8, !noalias !7378, !noundef !44 ; 2 uses
  %i.kc = icmp ne i64 %.val.i.i.i.i99, 0
  call void @llvm.assume(i1 %i.kc), !noalias !7374
  %i.kd = add i64 %.val.i.i.i.i99, 1              ; 2 uses
  store i64 %i.kd, ptr %.val.i.i97, align 8, !noalias !7378
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.cf, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i100, !prof !49

bb.cf:                                            ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8857e5e75ed6f2e3E.exit.i.thread"
  call void @llvm.trap(), !noalias !7374
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i100: ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8857e5e75ed6f2e3E.exit.i.thread"
  %.not.i.i.i101 = icmp eq ptr %.val1.i.i98, null
  br i1 %.not.i.i.i101, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i103", label %bb.cg

bb.cg:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i100
  %.val.i2.i.i.i102 = load i64, ptr %.val1.i.i98, align 8, !noalias !7378, !noundef !44 ; 2 uses
  %i.kf = icmp ne i64 %.val.i2.i.i.i102, 0
  call void @llvm.assume(i1 %i.kf), !noalias !7374
  %i.kg = add i64 %.val.i2.i.i.i102, 1            ; 2 uses
  store i64 %i.kg, ptr %.val1.i.i98, align 8, !noalias !7378
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.ch, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i103", !prof !49

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.trap(), !noalias !7374
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i103": ; preds = %bb.cg, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i.i100
  %.val2.i.i104 = load ptr, ptr %i.jq, align 8, !alias.scope !7376, !noalias !7377, !nonnull !44, !noundef !44 ; 3 uses
  %.val3.i.i105 = load ptr, ptr %i.jr, align 8, !alias.scope !7376, !noalias !7377 ; 4 uses
  %.val.i.i4.i.i106 = load i64, ptr %.val2.i.i104, align 8, !noalias !7378, !noundef !44 ; 2 uses
  %i.ki = icmp ne i64 %.val.i.i4.i.i106, 0
  call void @llvm.assume(i1 %i.ki), !noalias !7374
  %i.kj = add i64 %.val.i.i4.i.i106, 1            ; 2 uses
  store i64 %i.kj, ptr %.val2.i.i104, align 8, !noalias !7378
  %i.kk = icmp eq i64 %i.kj, 0
  br i1 %i.kk, label %bb.ci, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i107, !prof !49

bb.ci:                                            ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i103"
  call void @llvm.trap(), !noalias !7374
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i107: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i.i103"
  %.not.i5.i.i108 = icmp eq ptr %.val3.i.i105, null
  br i1 %.not.i5.i.i108, label %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i110", label %bb.cj

bb.cj:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i107
  %.val.i2.i6.i.i109 = load i64, ptr %.val3.i.i105, align 8, !noalias !7378, !noundef !44 ; 2 uses
  %i.kl = icmp ne i64 %.val.i2.i6.i.i109, 0
  call void @llvm.assume(i1 %i.kl), !noalias !7374
  %i.km = add i64 %.val.i2.i6.i.i109, 1           ; 2 uses
  store i64 %i.km, ptr %.val3.i.i105, align 8, !noalias !7378
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %bb.ck, label %"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i110", !prof !49

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.trap(), !noalias !7374
  unreachable

"_ZN75_$LT$nickel_lang_core..typecheck..Context$u20$as$u20$core..clone..Clone$GT$5clone17h934bea9ef19b62a2E.exit.i110": ; preds = %bb.cj, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i.i107
  %i.ko = load i16, ptr %i.js, align 8, !range !94, !alias.scope !7376, !noalias !7377, !noundef !44
  store ptr %.val.i.i97, ptr %i.w, align 8, !alias.scope !7373, !noalias !7379
  store ptr %.val1.i.i98, ptr %i.jt, align 8, !alias.scope !7373, !noalias !7379
  store ptr %.val2.i.i104, ptr %i.ju, align 8, !alias.scope !7373, !noalias !7379
  store ptr %.val3.i.i105, ptr %i.jv, align 8, !alias.scope !7373, !noalias !7379
  store i16 %i.ko, ptr %i.jw, align 8, !alias.scope !7373, !noalias !7379
  %i.kp = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0.i.i.i297, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 1 %3)
          to label %bb.eo unwind label %.loopexit.split-lp, !noalias !7371, !inline_history !7218 ; 2 uses

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.thread.i.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h6e85b0ec10e37a05E.exit.i.i.i.i, %.noexc.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7369
  %i.kq = invoke noundef align 8 dereferenceable_or_null(104) ptr @"_ZN120_$LT$$RF$$u5b$$RF$nickel_lang_parser..ast..record..FieldDef$u5d$$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$3typ17h8e6a3130a7211f48E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.cl unwind label %bb.bz, !noalias !7371, !inline_history !7218 ; 3 uses

bb.cl:                                            ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h843bcc1a85a45788E.exit.thread.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7372
  invoke void @"_ZN120_$LT$$RF$$u5b$$RF$nickel_lang_parser..ast..record..FieldDef$u5d$$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$9contracts17h44622bd9111c0470E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.cm unwind label %bb.bz, !noalias !7371, !inline_history !7218

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !7380), !noalias !7374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.u, i64 112, i1 false), !alias.scope !7381, !noalias !7372
  %i.kr = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  store i64 0, ptr %i.kr, align 8, !alias.scope !7382, !noalias !7383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7372
  %.not64.i = icmp eq ptr %i.kq, null
  br i1 %.not64.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not20.i, label %bb.dj, label %bb.dl

bb.co:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !7384), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7385), !noalias !7374
  %i.ks = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !7386), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7387), !noalias !7374
  %i.kt = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7388), !noalias !7374
  %i.ku = load i64, ptr %i.kt, align 8, !range !71, !alias.scope !7389, !noalias !7390, !noundef !44
  %.not.i.i.i.i.i = icmp eq i64 %i.ku, 2
  br i1 %.not.i.i.i.i.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !7391), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7392), !noalias !7374
  %i.kv = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !alias.scope !7393, !noalias !7390, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i85.i = icmp eq i64 %i.kw, 0
  br i1 %.not.i.i.i.i.i.i85.i, label %bb.cq, label %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.i.i.i.i.i, !prof !46

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !7394), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7395), !noalias !7374
  %i.kx = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !alias.scope !7396, !noalias !7390 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !7397, !noalias !7390, !nonnull !44
  %.not.i.i.i.i.i.i.i.i.i.i376 = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i376, label %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cq, %bb.cr
  %i.la = phi ptr [ %i.lc, %bb.cr ], [ %.promoted.i.i.i.i.i.i.i.i.i, %bb.cq ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7398), !noalias !7374
  %i.lb = icmp eq ptr %i.la, %i.kz
  br i1 %i.lb, label %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i.loopexit, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.la, align 8, !noalias !7399, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.ld = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !95, !noalias !7399, !noundef !44
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ld, 18
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i.loopexit

_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.i.i.i.i.i: ; preds = %bb.cp
  store i64 0, ptr %i.kv, align 8, !alias.scope !7393, !noalias !7390
  %i.le = call fastcc noundef align 8 dereferenceable_or_null(104) ptr @_ZN4core4iter6traits8iterator8Iterator3nth17h226a2adeb9430201E(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.kt, i64 noundef %i.kw), !noalias !7400, !inline_history !7218 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.le, null
  br i1 %.not6.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i.loopexit: ; preds = %.lr.ph, %bb.cq
  %.lcssa374 = phi ptr [ null, %bb.cq ], [ %i.la, %.lr.ph ]
  store ptr %.lcssa374, ptr %i.kx, align 8
  br label %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i.loopexit, %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.i.i.i.i.i
  store i64 2, ptr %i.kt, align 8, !alias.scope !7389, !noalias !7390
  br label %bb.cs

_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i.loopexit: ; preds = %bb.cr
  store ptr %i.lc, ptr %i.kx, align 8
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i.loopexit, %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.le, %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.i.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7401), !noalias !7374
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i"

bb.cs:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfdbb59c71153b4feE.exit.thread.i.i.i.i.i, %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !7402), !noalias !7374
  %i.lf = load i64, ptr %i.v, align 8, !range !60, !alias.scope !7403, !noalias !7404, !noundef !44
  %i.lg = trunc nuw i64 %i.lf to i1
  br i1 %i.lg, label %bb.ct, label %select.unfold

bb.ct:                                            ; preds = %bb.cs
  %i.lh = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7405), !noalias !7374
  call void @llvm.experimental.noalias.scope.decl(metadata !7406), !noalias !7374
  %i.li = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !7407, !noalias !7404 ; 3 uses
  %.promoted20.i.i.i.i.i.i.i.i = load ptr, ptr %i.lh, align 8, !alias.scope !7407, !noalias !7404 ; 5 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !7407, !noalias !7404, !nonnull !44 ; 2 uses
  %.promoted21.i.i.i.i.i.i.i.i = load ptr, ptr %i.lj, align 8, !alias.scope !7407, !noalias !7404 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i511 = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, null
  %i.lm = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %.promoted21.i.i.i.i.i.i.i.i
  %or.cond512 = select i1 %.not.i.i.i.i.i.i.i.i.i511, i1 true, i1 %i.lm
  br i1 %or.cond512, label %select.unfold.i.i.i.i.i.i.i.i.preheader, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit"

select.unfold.i.i.i.i.i.i.i.i.preheader:          ; preds = %bb.ct
  %.not.i5.i.i.i.i.i.i.i.i643 = icmp eq ptr %.promoted20.i.i.i.i.i.i.i.i, null
  %i.ln = icmp eq ptr %.promoted20.i.i.i.i.i.i.i.i, %i.ll
  %or.cond476644 = select i1 %.not.i5.i.i.i.i.i.i.i.i643, i1 true, i1 %i.ln
  br i1 %or.cond476644, label %select.unfold.i.i.i.i.i.i.i.i._crit_edge, label %.lr.ph645

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph645
  %5 = icmp eq ptr %i.lo, %i.ll
  br i1 %5, label %select.unfold.i.i.i.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph645

.lr.ph645:                                        ; preds = %select.unfold.i.i.i.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i.i.i.i
  %6 = phi ptr [ %i.lo, %select.unfold.i.i.i.i.i.i.i.i ], [ %.promoted20.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i.a = load ptr, ptr %6, align 8, !noalias !7408, !nonnull !44, !align !50, !noundef !44 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.a, i64 112
  %i.lq = load i64, ptr %i.lp, align 8, !noalias !7408, !noundef !44 ; 3 uses
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %select.unfold.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit"

select.unfold.i.i.i.i.i.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.i.i.i.i
  %7 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.a, i64 104
  %8 = load ptr, ptr %7, align 8, !noalias !7408, !nonnull !44, !align !50, !noundef !44
  %.idx515.le689 = mul nuw nsw i64 %i.lq, 104
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx515.le689
  br label %select.unfold.i.i.i.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i.i.i.i._crit_edge:         ; preds = %select.unfold.i.i.i.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.i.i.i.preheader
  %.lcssa610 = phi ptr [ %.promoted20.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.preheader ], [ %i.lo, %select.unfold.i.i.i.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa608 = phi ptr [ %.promoted21.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.preheader ], [ %9, %select.unfold.i.i.i.i.i.i.i.i._crit_edge.loopexit ]
  store ptr null, ptr %i.li, align 8
  store ptr %.lcssa610, ptr %i.lh, align 8
  store ptr %.lcssa608, ptr %i.lj, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !7409, !noalias !7404, !noundef !44 ; 4 uses
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %select.unfold, label %.sink.split.i8.i.i.i.i.i.i.i.i

.sink.split.i8.i.i.i.i.i.i.i.i:                   ; preds = %select.unfold.i.i.i.i.i.i.i.i._crit_edge
  %i.lu = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !7410, !noalias !7404, !nonnull !44, !noundef !44
  %i.lw = icmp eq ptr %i.lt, %i.lv                ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 104
  %spec.select.i9.i.i.i.i.i.i.i.i = select i1 %i.lw, ptr null, ptr %i.lx
  store ptr %spec.select.i9.i.i.i.i.i.i.i.i, ptr %i.ls, align 8, !alias.scope !7409, !noalias !7404
  br i1 %i.lw, label %select.unfold, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit": ; preds = %.lr.ph645
  %10 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.a, i64 104
  %11 = load ptr, ptr %10, align 8, !noalias !7408, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %.idx515.le = mul nuw nsw i64 %i.lq, 104
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx515.le
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit", %bb.ct
  %.lcssa480 = phi ptr [ %.promoted21.i.i.i.i.i.i.i.i, %bb.ct ], [ %12, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit" ]
  %.lcssa = phi ptr [ %.promoted20.i.i.i.i.i.i.i.i, %bb.ct ], [ %i.lo, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit" ]
  %spec.select.i19.i.i.i.i.i.i.i.i.lcssa = phi ptr [ %.promoted.i.i.i.i.i.i.i.i, %bb.ct ], [ %11, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit.loopexit" ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %spec.select.i19.i.i.i.i.i.i.i.i.lcssa, i64 104
  store ptr %i.ly, ptr %i.li, align 8
  store ptr %.lcssa, ptr %i.lh, align 8
  store ptr %.lcssa480, ptr %i.lj, align 8
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit", %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i, %.sink.split.i8.i.i.i.i.i.i.i.i
  %.sroa.0.0.i2.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h10557de5c8a0df71E.exit.i.i.i.i ], [ %i.lt, %.sink.split.i8.i.i.i.i.i.i.i.i ], [ %spec.select.i19.i.i.i.i.i.i.i.i.lcssa, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i.loopexit" ] ; 3 uses
  store ptr %.sroa.0.0.i2.i.i.i.i, ptr %i.ks, align 8, !alias.scope !7384, !noalias !7411
  store i64 0, ptr %i.kr, align 8, !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7372
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i2.i.i.i.i)
          to label %bb.cu unwind label %.thread278, !noalias !7371, !inline_history !7218

select.unfold:                                    ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i, %bb.cs, %select.unfold.i.i.i.i.i.i.i.i._crit_edge
  br i1 %.not20.i, label %bb.dj, label %bb.di

bb.cu:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1d52db704f950defE.exit.i"
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !7372
  %i.ma = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7372
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9from_type17h6d541a2dbc1fb7dfE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jq)
          to label %bb.cv unwind label %.thread278, !noalias !7371, !inline_history !7218

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7372
  br i1 %.not20.i, label %.critedge84.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7372
  %i.mb = load i64, ptr %i.o, align 8, !range !51, !noalias !7372, !noundef !44
  %i.mc = call i64 @llvm.usub.sat.i64(i64 %i.mb, i64 17)
  switch i64 %i.mc, label %default.unreachable571 [
    i64 0, label %bb.cy
    i64 1, label %bb.cz
    i64 2, label %bb.da
  ]

bb.cx:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7372
  br label %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1047008dea843f04E.exit.sink.split

default.unreachable571:                           ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit103.i, %bb.dn, %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7372
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.o)
          to label %bb.dd unwind label %bb.db, !noalias !7371, !inline_history !7218

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !7372
  %i.md = load i64, ptr %i.m, align 8, !range !51, !alias.scope !7412, !noalias !7372, !noundef !44
  %i.me = icmp samesign ult i64 %i.md, 18
  br i1 %i.me, label %.invoke.invoke, label %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i

bb.da:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !7372
  %i.mf = load i64, ptr %i.m, align 8, !range !51, !alias.scope !7413, !noalias !7372, !noundef !44
  %i.mg = icmp samesign ult i64 %i.mf, 18
  br i1 %i.mg, label %.invoke.invoke, label %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i

.invoke.invoke:                                   ; preds = %bb.cz, %bb.da, %bb.dd
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i unwind label %bb.db, !noalias !7371, !inline_history !7218

bb.db:                                            ; preds = %.invoke.invoke, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i, %bb.cy
  %.sroa.048.3.i = phi i1 [ false, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i ], [ true, %.invoke.invoke ], [ true, %bb.cy ]
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = load i64, ptr %i.o, align 8, !range !51, !alias.scope !7414, !noalias !7372, !noundef !44
  %i.mj = icmp samesign ult i64 %i.mi, 18
  br i1 %i.mj, label %bb.dc, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i114"

bb.dc:                                            ; preds = %bb.db
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i114" unwind label %bb.dh, !noalias !7415, !inline_history !7275

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.i114": ; preds = %bb.dc, %bb.db
  br i1 %.sroa.048.3.i, label %.thread269, label %.thread254

bb.dd:                                            ; preds = %bb.cy
  %i.mk = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !7372
  %i.ml = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.mm = load <2 x i16>, ptr %i.mk, align 8, !noalias !7372
  store <2 x i16> %i.mm, ptr %i.ml, align 8, !noalias !7372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7372
  %i.mn = load i64, ptr %i.m, align 8, !range !51, !alias.scope !7416, !noalias !7372, !noundef !44
  %i.mo = icmp samesign ult i64 %i.mn, 18
  br i1 %i.mo, label %.invoke.invoke, label %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i

_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i: ; preds = %.invoke.invoke, %bb.dd, %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !7417
  %i.mp = invoke fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h14a8c2aa4bfef9d8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 1 %3)
          to label %bb.de unwind label %bb.db, !noalias !7415, !inline_history !7218 ; 2 uses

bb.de:                                            ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor10visit_term17h9c6b6a973fd33279E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7372
  %.not70.i = icmp eq ptr %i.mp, null
  br i1 %.not70.i, label %bb.cx, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.mp, ptr %i.mq, align 8, !alias.scope !7367, !noalias !7418
  store i64 20, ptr %i.au, align 8, !alias.scope !7367, !noalias !7418
  %i.mr = load i64, ptr %i.o, align 8, !range !51, !alias.scope !7419, !noalias !7372, !noundef !44
  %i.ms = icmp samesign ult i64 %i.mr, 18
  br i1 %i.ms, label %bb.dg, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit99.i"

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit99.i" unwind label %bb.by, !noalias !7415, !inline_history !7275

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit99.i": ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7372
  br label %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1047008dea843f04E.exit.sink.split

bb.dh:                                            ; preds = %.thread269, %bb.eh, %bb.ds, %bb.dc
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !7415, !inline_history !7218
  unreachable

bb.di:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !7417
  invoke fastcc void @"_ZN83_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Infer$GT$5infer17h0a629387178f6eedE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 1 %3)
          to label %bb.dk unwind label %bb.by, !noalias !7374, !inline_history !7218

bb.dj:                                            ; preds = %select.unfold, %bb.cn
  call void @llvm.assume(i1 %.not20.i), !noalias !7374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.sroa.0.i)
  %i.mu = invoke noundef align 8 dereferenceable_or_null(104) ptr @"_ZN120_$LT$$RF$$u5b$$RF$nickel_lang_parser..ast..record..FieldDef$u5d$$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$5first17h81725fea31a38531E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %bb.ei unwind label %.thread278, !noalias !7371, !inline_history !7218 ; 3 uses

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7372
  br label %_ZN16nickel_lang_core9typecheck16infer_with_annot17h1047008dea843f04E.exit.sink.split

bb.dl:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7372
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.kq)
          to label %bb.dm unwind label %.thread278, !noalias !7371, !inline_history !7218

bb.dm:                                            ; preds = %bb.dl
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kq, i64 88
  %i.mw = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i64 16, i1 false), !noalias !7371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !7372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7372
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9from_type17h6d541a2dbc1fb7dfE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jq)
          to label %bb.dn unwind label %.thread278, !noalias !7371, !inline_history !7218

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7372
  %i.mx = load i64, ptr %i.t, align 8, !range !51, !noalias !7372, !noundef !44
  %i.my = call i64 @llvm.usub.sat.i64(i64 %i.mx, i64 17)
  switch i64 %i.my, label %default.unreachable571 [
    i64 0, label %bb.do
    i64 1, label %bb.dp
    i64 2, label %bb.dq
  ]

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7372
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t)
          to label %bb.du unwind label %bb.dt, !noalias !7371, !inline_history !7218

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !7372
  br label %bb.dv

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !7372
  br label %bb.dv

bb.dr:                                            ; preds = %bb.ea, %bb.eh, %bb.dt
  %.sroa.048.6.i = phi i1 [ false, %bb.eh ], [ false, %bb.ea ], [ true, %bb.dt ]
  %.pn.i111 = phi { ptr, i32 } [ %i.nr, %bb.eh ], [ %i.nj, %bb.ea ], [ %i.nb, %bb.dt ] ; 2 uses
  %i.mz = load i64, ptr %i.t, align 8, !range !51, !alias.scope !7420, !noalias !7372, !noundef !44
  %i.na = icmp samesign ult i64 %i.mz, 18
  br i1 %i.na, label %bb.ds, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101.i"

bb.ds:                                            ; preds = %bb.dr
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101.i" unwind label %bb.dh, !noalias !7415, !inline_history !7275

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101.i": ; preds = %bb.ds, %bb.dr
  br i1 %.sroa.048.6.i, label %.thread269, label %.thread254
end_hunk_2
begin_hunk_3_@"_ZN110_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17hf82ae61aafa39fc6E":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 5 uses
  %i.g = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf525dfc726094817E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %bb.c unwind label %.loopexit.split-lp.i, !noalias !14150 ; 2 uses

.body.i:                                          ; preds = %bb.h, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.o, %bb.h ], [ %lpad.loopexit.i, %.loopexit.i ]
  invoke fastcc void @"_ZN4core3ptr876drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb7f32c3b288dda67E"(ptr noalias noundef align 8 dereferenceable(184) %i.b) #77
          to label %.body.thread unwind label %bb.x, !noalias !14155

.loopexit.i:                                      ; preds = %bb.w, %bb.v, %bb.s, %bb.r, %bb.n, %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.o, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.e, align 8, !alias.scope !14156, !noalias !14157
  store ptr %i.g, ptr %i.f, align 8, !alias.scope !14156, !noalias !14157
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !alias.scope !14149, !noalias !14155, !noundef !44
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i", %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14150
  store i64 1, ptr %i.a, align 8, !noalias !14150
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !14150
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !14150
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !14150
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !14158
  %i.m = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !14158 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i", !prof !47

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #75
          to label %.noexc11.i unwind label %bb.h, !noalias !14150

.noexc11.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h950ffcace6aea9cdE"(ptr noalias noundef align 8 dereferenceable(280) %i.l)
          to label %.body.i unwind label %bb.i, !noalias !14150

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !14150
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h995816004d9ccde7E.exit.i": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.m, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !14150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14150
  store ptr %i.m, ptr %0, align 8, !alias.scope !14149, !noalias !14155
  br label %bb.e

bb.j:                                             ; preds = %.backedge, %bb.e
  %i.q = load i64, ptr %i.e, align 8, !range !60, !alias.scope !14159, !noalias !14160, !noundef !44
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15thread-pre-split.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf525dfc726094817E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !14155 ; 2 uses

.noexc14.i:                                       ; preds = %bb.k
  store i64 1, ptr %i.e, align 8, !alias.scope !14159, !noalias !14160
  store ptr %i.s, ptr %i.f, align 8, !alias.scope !14159, !noalias !14160
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15thread-pre-split.i": ; preds = %bb.j
  %.pr.i = load ptr, ptr %i.f, align 8, !noalias !14150
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15thread-pre-split.i", %.noexc14.i
  %i.t = phi ptr [ %.pr.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15thread-pre-split.i" ], [ %i.s, %.noexc14.i ]
  %.not7.i = icmp eq ptr %i.t, null
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15.i"
  %i.u = load ptr, ptr %0, align 8, !alias.scope !14149, !noalias !14155, !noundef !44
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %bb.o, label %bb.n, !prof !49

bb.m:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit15.i"
  call fastcc void @"_ZN4core3ptr876drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb7f32c3b288dda67E"(ptr noalias noundef align 8 dereferenceable(184) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14150
  %i.v = load i64, ptr %i.j, align 8, !noundef !44
  store i64 %i.v, ptr %i.c, align 8
  ret void

bb.n:                                             ; preds = %bb.l
  %i.w = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h2c600cc88c2d579cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.q unwind label %.loopexit.i, !noalias !14155 ; 4 uses

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #75
          to label %bb.p unwind label %.loopexit.split-lp.i, !noalias !14155

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.x = load i64, ptr %i.w, align 8, !range !60, !noalias !14155, !noundef !44
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br i1 %i.y, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aa = load i8, ptr %i.i, align 8, !alias.scope !14149, !noalias !14155, !noundef !44
  %i.ab = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h37cd42daed0c6241E"(ptr noalias noundef align 8 dereferenceable(184) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.z, i8 noundef %i.aa)
          to label %bb.u unwind label %.loopexit.i, !noalias !14155

bb.s:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 272 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !14155, !noundef !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 264 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !14155, !noundef !44
  %i.ag = sub i64 %i.ad, %i.af                    ; 2 uses
  %i.ah = sub i64 32, %i.ag
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h52d30d4d1386337dE"(ptr noalias noundef align 8 dereferenceable(272) %i.z, ptr noalias noundef align 8 dereferenceable(184) %i.b, i64 noundef %i.ah)
          to label %bb.t unwind label %.loopexit.i, !noalias !14155

bb.t:                                             ; preds = %bb.s
  %i.ai = load i64, ptr %i.ac, align 8, !noalias !14155, !noundef !44
  %i.aj = load i64, ptr %i.ae, align 8, !noalias !14155, !noundef !44
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = sub i64 %i.ai, %i.ak
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.sroa.03.0.i = phi i64 [ %i.al, %bb.t ], [ %i.ab, %bb.r ]
  %i.am = load i64, ptr %i.j, align 8, !alias.scope !14149, !noalias !14155, !noundef !44
  %i.an = add i64 %i.am, %.sroa.03.0.i
  store i64 %i.an, ptr %i.j, align 8, !alias.scope !14149, !noalias !14155
  %i.ao = load i64, ptr %i.e, align 8, !range !60, !alias.scope !14161, !noalias !14162, !noundef !44
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17thread-pre-split.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf525dfc726094817E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.b)
          to label %.noexc16.i unwind label %.loopexit.i, !noalias !14155 ; 2 uses

.noexc16.i:                                       ; preds = %bb.v
  store i64 1, ptr %i.e, align 8, !alias.scope !14161, !noalias !14162
  store ptr %i.aq, ptr %i.f, align 8, !alias.scope !14161, !noalias !14162
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17thread-pre-split.i": ; preds = %bb.u
  %.pr18.i = load ptr, ptr %i.f, align 8, !noalias !14150
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17thread-pre-split.i", %.noexc16.i
  %i.ar = phi ptr [ %.pr18.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17thread-pre-split.i" ], [ %i.aq, %.noexc16.i ]
  %.not9.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i, label %.backedge, label %bb.w

bb.w:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hb7996dbbd61742eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.backedge unwind label %.loopexit.i, !noalias !14155

.backedge:                                        ; preds = %bb.w, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h2ea87fb05bbd79c7E.exit17.i"
  br label %bb.j

bb.x:                                             ; preds = %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !14155
  unreachable

.body.thread:                                     ; preds = %bb.y, %.body.i
  %eh.lpad-body4 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.at, %bb.y ]
  resume { ptr, i32 } %eh.lpad-body4

bb.y:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr828drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..flatten..FlatMap$LT$core..option..IntoIter$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..value..Container$LT$$RF$nickel_lang_core..eval..value..ArrayData$GT$..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h4be43c4c2da9d8b9E"(ptr noalias noundef align 8 dereferenceable(168) %1) #77
  br label %.body.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN112_$LT$$RF$nickel_lang_parser..ast..record..Include$u20$as$u20$nickel_lang_core..typecheck..record..CheckSplit$GT$11check_split17h0040ebb7b4b5c6e0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %2, ptr noalias noundef nonnull align 1 captures(none) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [232 x i8], align 8               ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [96 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 4 uses
  %i.o = alloca [96 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [96 x i8], align 8                ; 7 uses
  %i.r = alloca [96 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 14 uses
  %i.t = alloca [104 x i8], align 8               ; 2 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [104 x i8], align 8               ; 15 uses
  %i.y = alloca [20 x i8], align 4                ; 4 uses
  %i.z = alloca [96 x i8], align 8                ; 7 uses
  %i.aa = alloca [96 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.y)
          to label %bb.b unwind label %.split.thread

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105": ; preds = %bb.bp, %bb.bq, %.thread121
  %.sroa.036.0 = phi i1 [ %.sroa.036.2114, %bb.bp ], [ %.sroa.036.2, %.thread121 ], [ %.sroa.036.2114, %bb.bq ]
  %.pn59 = phi { ptr, i32 } [ %.pn57115, %bb.bp ], [ %.pn57, %.thread121 ], [ %.pn57115, %bb.bq ] ; 2 uses
  br i1 %.sroa.036.0, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread", label %bb.bv

.split.thread:                                    ; preds = %bb.bn, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread"

.split:                                           ; preds = %bb.ax
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ac = load i64, ptr %i.z, align 8, !range !91, !noundef !44 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103"

bb.d:                                             ; preds = %bb.b
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.640.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ac, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.e unwind label %.thread

.thread121:                                       ; preds = %bb.bo, %bb.av, %bb.am, %bb.i
  %.sroa.036.2 = phi i1 [ %.sroa.036.4.lpad-body, %bb.i ], [ %.sroa.036.4.lpad-body, %bb.bo ], [ false, %bb.av ], [ false, %bb.am ] ; 2 uses
  %.sroa.028.0 = phi i8 [ %.sroa.028.3.lpad-body, %bb.i ], [ %.sroa.028.3.lpad-body, %bb.bo ], [ %.sroa.028.6, %bb.av ], [ %.sroa.028.6, %bb.am ]
  %.pn57 = phi { ptr, i32 } [ %eh.lpad-body99, %bb.i ], [ %eh.lpad-body99, %bb.bo ], [ %i.dk, %bb.av ], [ %i.da, %bb.am ] ; 2 uses
  %i.ag = trunc nuw i8 %.sroa.028.0 to i1
  br i1 %i.ag, label %bb.bp, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105"

.thread:                                          ; preds = %bb.d, %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.w, align 8, !range !60, !alias.scope !14208, !noundef !44
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !align !50 ; 2 uses
  %.not.i = icmp ne ptr %i.al, null
  %or.cond201.not = select i1 %i.aj, i1 %.not.i, i1 false
  br i1 %or.cond201.not, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !14209, !noalias !14210, !noundef !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !14209, !noalias !14210, !nonnull !44
  %i.aq = icmp eq ptr %i.an, %i.ap
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aq
  br i1 %or.cond.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit", label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit

_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i64.ph = phi ptr [ %i.al, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i64.ph)
          to label %bb.h unwind label %.thread

"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit": ; preds = %bb.f
  store i64 18, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.j unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64.ph, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.g

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb
  %.sroa.036.4.lpad-body = phi i1 [ false, %bb.bb ], [ true, %.loopexit ], [ %.sroa.036.4.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.031.1.lpad-body = phi i1 [ true, %bb.bb ], [ true, %.loopexit ], [ %.sroa.031.1.ph, %.loopexit.split-lp ]
  %.sroa.028.3.lpad-body = phi i8 [ 0, %bb.bb ], [ 1, %.loopexit ], [ %.sroa.028.3.ph, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.dr, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.at = load i64, ptr %i.x, align 8, !range !95, !noundef !44
  %i.au = icmp ne i64 %i.at, 18
  %or.cond3 = and i1 %.sroa.031.1.lpad-body, %i.au
  br i1 %or.cond3, label %bb.bo, label %.thread121

.loopexit:                                        ; preds = %bb.be
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g, %bb.u, %bb.v, %bb.ao
  %.sroa.036.4.ph = phi i1 [ true, %bb.u ], [ true, %bb.ao ], [ true, %bb.g ], [ false, %bb.v ]
  %.sroa.031.1.ph = phi i1 [ false, %bb.u ], [ false, %bb.ao ], [ true, %bb.g ], [ true, %bb.v ]
  %.sroa.028.3.ph = phi i8 [ 1, %bb.u ], [ 0, %bb.ao ], [ 1, %bb.g ], [ 0, %bb.v ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.j:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.8108.0.copyload = load ptr, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.bf, %bb.j
  %.sroa.8108.0 = phi ptr [ %.sroa.8108.0.copyload, %bb.j ], [ %.sroa.8108.1.ph, %bb.bf ] ; 5 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.j ], [ %.sroa.6.1131.ph, %bb.bf ] ; 3 uses
  %.sroa.0.0109 = phi i64 [ %.sroa.0.0.copyload, %bb.j ], [ %.sroa.0.1110133.ph, %bb.bf ]
  %i.be = trunc nuw i64 %.sroa.0.0109 to i1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not.i66 = icmp eq ptr %.sroa.6.0, null
  br i1 %.not.i66, label %bb.m, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.6.1.ph = phi ptr [ %.sroa.6.0, %bb.k ], [ null, %bb.l ]
  %.not.i.i70 = icmp eq ptr %.sroa.8108.0, null
  %i.bf = icmp eq ptr %.sroa.8108.0, %.sroa.10.0.copyload
  %or.cond.i.i71 = select i1 %.not.i.i70, i1 true, i1 %i.bf
  br i1 %or.cond.i.i71, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit72", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.8108.0, i64 104
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67

_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67: ; preds = %bb.l, %bb.n
  %.sroa.0.1110133.ph = phi i64 [ 0, %bb.n ], [ 1, %bb.l ]
  %.sroa.6.1131.ph = phi ptr [ %.sroa.6.1.ph, %bb.n ], [ null, %bb.l ]
end_hunk_3
begin_hunk_4_@"_ZN112_$LT$$RF$nickel_lang_parser..ast..record..Include$u20$as$u20$nickel_lang_core..typecheck..record..CheckSplit$GT$11check_split17h0040ebb7b4b5c6e0E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.bu, i64 232, i1 false), !noalias !14231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !noalias !14232
  %i.dq = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.bc unwind label %bb.bb, !noalias !14233

bb.bb:                                            ; preds = %bb.ba
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.bu, i64 noundef 232, i64 noundef 8) #66, !noalias !14234
  br label %bb.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14230
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.bu, i64 noundef 232, i64 noundef 8) #66, !noalias !14234
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit95.sink.split"

bb.bd:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit95"
  %.sink = phi ptr [ %i.fe, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit" ], [ %i.av, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit95" ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit" ], [ %.sroa.0.2, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit95" ]
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %.sink)
  ret ptr %.sroa.0.3

bb.be:                                            ; preds = %bb.s, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.ds = load i16, ptr %i.az, align 8, !range !94, !alias.scope !14212, !noalias !14211, !noundef !44
  store ptr %.val.i, ptr %i.u, align 8, !alias.scope !14211, !noalias !14212
  store ptr %.val1.i, ptr %i.ba, align 8, !alias.scope !14211, !noalias !14212
  store ptr %.val2.i, ptr %i.bb, align 8, !alias.scope !14211, !noalias !14212
  store ptr %.val3.i, ptr %i.bc, align 8, !alias.scope !14211, !noalias !14212
  store i16 %i.ds, ptr %i.bd, align 8, !alias.scope !14211, !noalias !14212
  %i.dt = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0.i69.ph, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.u, ptr noalias noundef nonnull align 1 %3)
          to label %bb.bf unwind label %.loopexit ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not55 = icmp eq ptr %i.dt, null
  br i1 %.not55, label %bb.k, label %bb.ap

bb.bg:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103"

bb.bh:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !14235)
  call void @llvm.experimental.noalias.scope.decl(metadata !14236)
  %i.du = icmp ne i64 %i.de, 12
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp samesign ult i64 %i.de, 3
  br i1 %i.dv, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !14237)
  switch i64 %i.de, label %bb.bj [
    i64 0, label %bb.bm
    i64 1, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val3.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !14238, !noundef !44 ; 4 uses
  %i.dx = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.dx, label %bb.bm, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bj
  %i.dy = shl i64 %.val3.i.i.i, 2
  %i.dz = icmp slt i64 %.val3.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.dz)
  %i.ea = and i64 %i.dy, -16                      ; 2 uses
  %i.eb = add i64 %i.ea, 16                       ; 2 uses
  %i.ec = add nsw i64 %.val3.i.i.i, 17
  %i.ed = add i64 %i.ec, %i.eb                    ; 4 uses
  %i.ee = icmp uge i64 %i.ed, %i.eb
  %i.ef = icmp ult i64 %i.ed, 9223372036854775793
  call void @llvm.assume(i1 %i.ee)
  call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %bb.bm, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.en, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.ea, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.eq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i ], [ %i.ed, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.sink.i.i.i = load ptr, ptr %.val.sink.in.i.i.i, align 8, !alias.scope !14238, !nonnull !44, !noundef !44
  %i.eh = sub nuw nsw i64 -16, %.sink.i.i.i
  %i.ei = getelementptr inbounds i8, ptr %.val.sink.i.i.i, i64 %i.eh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ei, i64 noundef %.sink7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !14238
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !14238, !noundef !44 ; 4 uses
  %i.ek = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ek, label %bb.bm, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i: ; preds = %bb.bk
  %i.el = shl i64 %.val1.i.i.i, 2
  %i.em = icmp slt i64 %.val1.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.em)
  %i.en = and i64 %i.el, -16                      ; 2 uses
  %i.eo = add i64 %i.en, 16                       ; 2 uses
  %i.ep = add nsw i64 %.val1.i.i.i, 17
  %i.eq = add i64 %i.ep, %i.eo                    ; 4 uses
  %i.er = icmp uge i64 %i.eq, %i.eo
  %i.es = icmp ult i64 %i.eq, 9223372036854775793
  call void @llvm.assume(i1 %i.er)
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %bb.bm, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103": ; preds = %bb.bm, %bb.bn, %bb.bg, %bb.c
  %.sroa.0.4 = phi ptr [ %i.af, %bb.c ], [ %i.cy, %bb.bg ], [ %i.dt, %bb.bn ], [ %i.dt, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.eu = load i64, ptr %4, align 8, !range !51, !alias.scope !14239, !noundef !44
  %i.ev = icmp samesign ult i64 %i.eu, 18
  br i1 %i.ev, label %bb.bl, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101"

bb.bl:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103"
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %4)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101" unwind label %bb.br, !inline_history !2

bb.bm:                                            ; preds = %bb.ap, %bb.bh, %bb.bi, %bb.bj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h66e472a0eefa73acE.exit.sink.split.i.i.i", %bb.bk, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ew = load i64, ptr %i.aa, align 8, !range !51, !alias.scope !14240, !noundef !44
  %i.ex = icmp samesign ult i64 %i.ew, 18
  br i1 %i.ex, label %bb.bn, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103"

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aa)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103" unwind label %.split.thread, !inline_history !2

bb.bo:                                            ; preds = %bb.i
  call fastcc void @"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h86cda43f73756d90E"(ptr noalias noundef align 8 dereferenceable(104) %i.x) #77
  br label %.thread121

bb.bp:                                            ; preds = %.thread, %.thread121
  %.pn57115 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %.pn57, %.thread121 ] ; 2 uses
  %.sroa.036.2114 = phi i1 [ true, %.thread ], [ %.sroa.036.2, %.thread121 ] ; 2 uses
  %i.ey = load i64, ptr %i.aa, align 8, !range !51, !alias.scope !14241, !noundef !44
  %i.ez = icmp samesign ult i64 %i.ey, 18
  br i1 %i.ez, label %bb.bq, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105"

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.aa)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105" unwind label %bb.aq, !inline_history !2

bb.br:                                            ; preds = %bb.bl
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101": ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103", %bb.bl
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %2)
          to label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit" unwind label %bb.bs

bb.bs:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101"
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.fc) #77
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

common.resume:                                    ; preds = %bb.bv, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %bb.bs ], [ %.pn61179, %bb.bv ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit": ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit101"
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.bd

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread": ; preds = %.split.thread, %bb.ay, %.thread152, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105"
  %.pn59186 = phi { ptr, i32 } [ %.pn59, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105" ], [ %.pn51161, %.thread152 ], [ %.pn51161, %bb.ay ], [ %lpad.thr_comm, %.split.thread ] ; 2 uses
  %i.ff = load i64, ptr %4, align 8, !range !51, !alias.scope !14242, !noundef !44
  %i.fg = icmp samesign ult i64 %i.ff, 18
  br i1 %i.fg, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread"
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.bw unwind label %bb.aq, !inline_history !2

bb.bv:                                            ; preds = %.split, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105", %bb.bw
  %.pn61179 = phi { ptr, i32 } [ %.pn61.ph, %bb.bw ], [ %.pn59, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105" ], [ %lpad.thr_comm.split-lp, %.split ]
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.fh) #77
          to label %common.resume unwind label %bb.aq

bb.bw:                                            ; preds = %bb.br, %bb.bu, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread"
  %.pn61.ph = phi { ptr, i32 } [ %i.fa, %bb.br ], [ %.pn59186, %bb.bu ], [ %.pn59186, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread" ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.bv unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN112_$LT$$RF$nickel_lang_parser..ast..record..Include$u20$as$u20$nickel_lang_core..typecheck..record..CheckSplit$GT$11check_split17h522613d8216e5bb3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %2, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(96) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [232 x i8], align 8               ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [96 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [96 x i8], align 8                ; 4 uses
  %i.o = alloca [96 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [96 x i8], align 8                ; 7 uses
  %i.r = alloca [96 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 14 uses
  %i.t = alloca [104 x i8], align 8               ; 2 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [104 x i8], align 8               ; 15 uses
  %i.y = alloca [20 x i8], align 4                ; 4 uses
  %i.z = alloca [96 x i8], align 8                ; 7 uses
  %i.aa = alloca [96 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i64 20, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck7Context8get_type17hc5ce89a73169ad2dE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.y)
          to label %bb.b unwind label %.split.thread

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105": ; preds = %bb.bp, %bb.bq, %.thread121
  %.sroa.036.0 = phi i1 [ %.sroa.036.2114, %bb.bp ], [ %.sroa.036.2, %.thread121 ], [ %.sroa.036.2114, %bb.bq ]
  %.pn59 = phi { ptr, i32 } [ %.pn57115, %bb.bp ], [ %.pn57, %.thread121 ], [ %.pn57115, %bb.bq ] ; 2 uses
  br i1 %.sroa.036.0, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread", label %bb.bv

.split.thread:                                    ; preds = %bb.bn, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105.thread"

.split:                                           ; preds = %bb.ax
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.ac = load i64, ptr %i.z, align 8, !range !91, !noundef !44 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit103"

bb.d:                                             ; preds = %bb.b
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.640.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.ac, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.e unwind label %.thread

.thread121:                                       ; preds = %bb.bo, %bb.av, %bb.am, %bb.i
  %.sroa.036.2 = phi i1 [ %.sroa.036.4.lpad-body, %bb.i ], [ %.sroa.036.4.lpad-body, %bb.bo ], [ false, %bb.av ], [ false, %bb.am ] ; 2 uses
  %.sroa.028.0 = phi i8 [ %.sroa.028.3.lpad-body, %bb.i ], [ %.sroa.028.3.lpad-body, %bb.bo ], [ %.sroa.028.6, %bb.av ], [ %.sroa.028.6, %bb.am ]
  %.pn57 = phi { ptr, i32 } [ %eh.lpad-body99, %bb.i ], [ %eh.lpad-body99, %bb.bo ], [ %i.dk, %bb.av ], [ %i.da, %bb.am ] ; 2 uses
  %i.ag = trunc nuw i8 %.sroa.028.0 to i1
  br i1 %i.ag, label %bb.bp, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit105"

.thread:                                          ; preds = %bb.d, %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.w, align 8, !range !60, !alias.scope !14288, !noundef !44
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !align !50 ; 2 uses
  %.not.i = icmp ne ptr %i.al, null
  %or.cond201.not = select i1 %i.aj, i1 %.not.i, i1 false
  br i1 %or.cond201.not, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !14289, !noalias !14290, !noundef !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !14289, !noalias !14290, !nonnull !44
  %i.aq = icmp eq ptr %i.an, %i.ap
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aq
  br i1 %or.cond.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit", label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit

_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i64.ph = phi ptr [ %i.al, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hafab6b2ca88b0039E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.0.i64.ph)
          to label %bb.h unwind label %.thread

"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit": ; preds = %bb.f
  store i64 18, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @"_ZN100_$LT$$RF$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..AnnotSeqRef$GT$4iter17h5b29a8e47d93cff3E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.j unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64.ph, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.g

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.bb
  %.sroa.036.4.lpad-body = phi i1 [ false, %bb.bb ], [ true, %.loopexit ], [ %.sroa.036.4.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.031.1.lpad-body = phi i1 [ true, %bb.bb ], [ true, %.loopexit ], [ %.sroa.031.1.ph, %.loopexit.split-lp ]
  %.sroa.028.3.lpad-body = phi i8 [ 0, %bb.bb ], [ 1, %.loopexit ], [ %.sroa.028.3.ph, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.dr, %bb.bb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.at = load i64, ptr %i.x, align 8, !range !95, !noundef !44
  %i.au = icmp ne i64 %i.at, 18
  %or.cond3 = and i1 %.sroa.031.1.lpad-body, %i.au
  br i1 %or.cond3, label %bb.bo, label %.thread121

.loopexit:                                        ; preds = %bb.be
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g, %bb.u, %bb.v, %bb.ao
  %.sroa.036.4.ph = phi i1 [ true, %bb.u ], [ true, %bb.ao ], [ true, %bb.g ], [ false, %bb.v ]
  %.sroa.031.1.ph = phi i1 [ false, %bb.u ], [ false, %bb.ao ], [ true, %bb.g ], [ true, %bb.v ]
  %.sroa.028.3.ph = phi i8 [ 1, %bb.u ], [ 0, %bb.ao ], [ 1, %bb.g ], [ 0, %bb.v ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.j:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.8108.0.copyload = load ptr, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.bf, %bb.j
  %.sroa.8108.0 = phi ptr [ %.sroa.8108.0.copyload, %bb.j ], [ %.sroa.8108.1.ph, %bb.bf ] ; 5 uses
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.j ], [ %.sroa.6.1131.ph, %bb.bf ] ; 3 uses
  %.sroa.0.0109 = phi i64 [ %.sroa.0.0.copyload, %bb.j ], [ %.sroa.0.1110133.ph, %bb.bf ]
  %i.be = trunc nuw i64 %.sroa.0.0109 to i1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not.i66 = icmp eq ptr %.sroa.6.0, null
  br i1 %.not.i66, label %bb.m, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.6.1.ph = phi ptr [ %.sroa.6.0, %bb.k ], [ null, %bb.l ]
  %.not.i.i70 = icmp eq ptr %.sroa.8108.0, null
  %i.bf = icmp eq ptr %.sroa.8108.0, %.sroa.10.0.copyload
  %or.cond.i.i71 = select i1 %.not.i.i70, i1 true, i1 %i.bf
  br i1 %or.cond.i.i71, label %"_ZN4core6option15Option$LT$T$GT$7or_else17hbd084661ed5b6deeE.exit72", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.8108.0, i64 104
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67

_ZN4core4iter8adapters5chain17and_then_or_clear17h5b5457389fed6ba4E.exit67: ; preds = %bb.l, %bb.n
  %.sroa.0.1110133.ph = phi i64 [ 0, %bb.n ], [ 1, %bb.l ]
  %.sroa.6.1131.ph = phi ptr [ %.sroa.6.1.ph, %bb.n ], [ null, %bb.l ]
end_hunk_4
begin_hunk_5_@"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h03c2a925b59aae0bE":bb.a

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !20327
  store i8 1, ptr %i.i, align 8, !noalias !20327
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i
  %.pre-phi9 = phi i64 [ %i.n, %.noexc ], [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ]
  %.pre-phi = phi i64 [ %i.m, %.noexc ], [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h668ba387f5b47fbaE.exit_crit_edge.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !20326
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h318e8bca999215caE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 noundef 4, i64 noundef %.pre-phi, i64 noundef %.pre-phi9)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %i.g, i64 272, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !20328, !noalias !20330, !noundef !44
  %i.s = icmp eq i64 %i.r, 0
  %.val4.i = load i64, ptr %i.e, align 8, !noalias !20329, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val5.i = load i64, ptr %i.t, align 8, !noalias !20329, !noundef !44
  %i.u = sub i64 %.val5.i, %.val4.i               ; 2 uses
  %i.v = add i64 %i.u, 1
  %i.w = lshr i64 %i.v, 1
  %.sroa.0.0.i = select i1 %i.s, i64 %i.u, i64 %i.w ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !20331, !noalias !20332, !noundef !44
  %i.aa = icmp ugt i64 %.sroa.0.0.i, %i.z
  br i1 %i.aa, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i", !prof !49

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = load i64, ptr %i.x, align 8, !alias.scope !20333, !noalias !20330, !noundef !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !20333, !noalias !20330, !nonnull !44, !noundef !44
  %i.af = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ae, i64 noundef %i.ac, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i" unwind label %bb.j, !noalias !20330 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i": ; preds = %bb.d, %bb.c
  %i.ag = load i64, ptr %i.f, align 8, !range !74, !alias.scope !20333, !noalias !20330, !noundef !44
  %i.ah = load i64, ptr %i.x, align 8, !alias.scope !20333, !noalias !20330, !noundef !44 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 128102389400760776
  call void @llvm.assume(i1 %i.ai)
  %i.aj = sub nsw i64 %i.ag, %i.ah
  %i.ak = icmp ugt i64 %.sroa.0.0.i, %i.aj
  br i1 %i.ak, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i"
  %i.al = load i64, ptr %i.q, align 8, !alias.scope !20333, !noalias !20330, !noundef !44
  %i.am = load i64, ptr %i.y, align 8, !alias.scope !20333, !noalias !20330, !noundef !44
  %i.an = add i64 %i.am, %i.al
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17he56c989533b795b4E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %.sroa.0.0.i, i64 noundef %i.an)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i" unwind label %bb.j, !noalias !20330

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hba826d3f4dbc7aceE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(272) %i.g, i64 272, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !20334)
  call void @llvm.experimental.noalias.scope.decl(metadata !20335)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !20336)
  %i.ap = load i64, ptr %i.d, align 8, !alias.scope !20337, !noalias !20338, !noundef !44 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !20337, !noalias !20338, !noundef !44 ; 3 uses
  %i.as = icmp ule i64 %i.ap, %i.ar
  call void @llvm.assume(i1 %i.as)
  %.not2.i.i.i.i = icmp eq i64 %i.ap, %i.ar
  br i1 %.not2.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i"
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.av = phi i64 [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.aw, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i" ] ; 3 uses
  %i.aw = add nuw nsw i64 %i.av, 1                ; 3 uses
  store i64 %i.aw, ptr %i.d, align 8, !alias.scope !20337, !noalias !20338
  %i.ax = icmp ult i64 %i.av, 4
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %i.av ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i64 64, i1 false), !noalias !20340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20341
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h0aa4167ee4bf70c8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ay, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.at)
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !20330

.noexc.i.i.i:                                     ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !20341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20341
  %i.az = load i64, ptr %i.b, align 8, !range !70, !alias.scope !20342, !noalias !20341, !noundef !44
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  br i1 %i.ba, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hb5c1dc5fa0711f78E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i" unwind label %bb.h, !noalias !20343

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i": ; preds = %bb.g, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20339
  %.not.i.i.i.i = icmp eq i64 %i.aw, %i.ar
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$C$4_usize$GT$$GT$17h34f146d6a33d349eE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.d) #77
          to label %.body unwind label %bb.i, !noalias !20330

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !20330
  unreachable

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$C$4_usize$GT$$GT$17h34f146d6a33d349eE"(ptr noalias noundef align 8 dereferenceable(272) %i.e) #77
          to label %.body unwind label %bb.k, !noalias !20330

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !20330
  unreachable

.body:                                            ; preds = %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.bd, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17hc51ead1719b4a96eE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #77
          to label %bb.m unwind label %bb.l

.loopexit:                                        ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hafb5f1be08c32da8E.exit.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcfd5b765bed8990eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.l:                                             ; preds = %bb.n, %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.m:                                             ; preds = %.body, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn6

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h910dc175fbe29d29E.exit.i.i.i", %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$C$4_usize$GT$$GT$17h34f146d6a33d349eE"(ptr noalias noundef align 8 dereferenceable(272) %i.g) #77
          to label %bb.m unwind label %bb.l
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN124_$LT$$LT$url..Url$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..UrlVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str28_$u7b$$u7b$closure$u7d$$u7d$17hf0227b3dbe8ac1e3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i8 noundef range(i8 0, 10) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN62_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h8011906dcd6db6f2E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h6faeb81cce992febE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20351
  store ptr @143, ptr %i.a, align 8, !noalias !20352
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !20352
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !20352
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20352
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !20352
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !20353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = call fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h7997f843e1ab3f58E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h37c4d710efb388e2E"(ptr dead_on_unwind noalias noundef nonnull writable align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 6 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [16 x i8], align 4                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 4                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7177 = alloca [12 x i8], align 4         ; 3 uses
  %.sroa.8349 = alloca [12 x i8], align 4         ; 6 uses
  %i.m = alloca [16 x i8], align 4                ; 6 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [12 x i8], align 4            ; 6 uses
  %i.p = alloca [16 x i8], align 4                ; 5 uses
  %i.q = alloca [16 x i8], align 4                ; 5 uses
  %i.r = alloca [16 x i8], align 4                ; 6 uses
  %i.s = alloca [16 x i8], align 4                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 4                ; 7 uses
  %i.v = alloca [16 x i8], align 4                ; 6 uses
  %i.w = alloca [16 x i8], align 4                ; 6 uses
  %i.x = alloca [16 x i8], align 4                ; 5 uses
  %i.y = alloca [16 x i8], align 4                ; 5 uses
  %i.z = alloca [16 x i8], align 4                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 6 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !44, !nonnull !44
  call void %i.ad(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aa, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4)
  %i.ae = load i32, ptr %i.aa, align 4, !range !55, !noundef !44 ; 2 uses
  %i.af = add nsw i32 %i.ae, -3
  %.inv = icmp samesign ult i32 %i.ae, 3
  %narrow = select i1 %.inv, i32 3, i32 %i.af
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.f
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4
  br label %bb.bc

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false)
  br label %bb.bc

bb.f:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.a ] ; 2 uses
  store i8 %storemerge, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ag = trunc nuw i8 %storemerge to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.0.0 = select i1 %i.ag, ptr %i.ah, ptr %4 ; 25 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !range !93, !noundef !44
  switch i8 %i.aj, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.j
    i8 6, label %bb.m
    i8 7, label %bb.r
    i8 8, label %bb.g
    i8 9, label %bb.u
    i8 10, label %bb.v
    i8 11, label %bb.ab
    i8 12, label %bb.ag
    i8 13, label %bb.ao
    i8 14, label %bb.ar
    i8 15, label %bb.au
    i8 16, label %bb.g
    i8 17, label %bb.az
    i8 18, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i32 3, ptr %0, align 4
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h25626371904a405cE.exit"

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !44 ; 2 uses
  %.idx298 = mul nuw nsw i64 %i.an, 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx298
  call void @llvm.experimental.noalias.scope.decl(metadata !20603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %._crit_edge297, label %.lr.ph296

.lr.ph296:                                        ; preds = %bb.h, %.backedge
  %.sroa.073.0294 = phi ptr [ %i.aq, %.backedge ], [ %i.al, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.073.0294, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20604)
  call void @llvm.experimental.noalias.scope.decl(metadata !20605)
  %i.ar = load i32, ptr %.sroa.073.0294, align 8, !range !72, !alias.scope !20605, !noalias !20606, !noundef !44
  %.not.i45 = icmp eq i32 %i.ar, 3
  br i1 %.not.i45, label %.critedge, label %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h2ace40f64b21a5d4E.exit"

"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h2ace40f64b21a5d4E.exit": ; preds = %.lr.ph296
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h37c4d710efb388e2E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.073.0294, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !noalias !20607, !inline_history !20361
  %.pr = load i32, ptr %i.w, align 4, !noalias !20608
  %i.as = icmp eq i32 %.pr, 3
  br i1 %i.as, label %.backedge, label %bb.i

.backedge:                                        ; preds = %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h2ace40f64b21a5d4E.exit", %.critedge
  %i.at = icmp eq ptr %i.aq, %i.ao
  br i1 %i.at, label %._crit_edge297, label %.lr.ph296

.critedge:                                        ; preds = %.lr.ph296
  store i32 3, ptr %i.w, align 4, !alias.scope !20604, !noalias !20609
  br label %.backedge

._crit_edge297:                                   ; preds = %.backedge, %bb.h
  store i32 3, ptr %0, align 4, !alias.scope !20603, !noalias !20610
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h48c42fc57271a4f2E.exit"

bb.i:                                             ; preds = %"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref28_$u7b$$u7b$closure$u7d$$u7d$17h2ace40f64b21a5d4E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !20610
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h48c42fc57271a4f2E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h48c42fc57271a4f2E.exit": ; preds = %._crit_edge297, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h25626371904a405cE.exit"

bb.j:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !44, !align !50, !noundef !44
  %.idx436 = shl nuw nsw i64 %i.ax, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.bb = icmp eq i64 %i.ax, 0
  br i1 %i.bb, label %._crit_edge430, label %.lr.ph429

bb.k:                                             ; preds = %.lr.ph429
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.082.0427, i64 64 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %._crit_edge430, label %.lr.ph429

.lr.ph429:                                        ; preds = %bb.j, %bb.k
  %.sroa.082.0427 = phi ptr [ %i.bc, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  call fastcc void @"_ZN141_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h2a09f1f8504f9093E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.082.0427, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !noalias !20611, !inline_history !20368
  %i.be = load i32, ptr %i.v, align 4, !range !72, !noalias !20612, !noundef !44 ; 2 uses
  %.not3.i27 = icmp eq i32 %i.be, 3
  br i1 %.not3.i27, label %bb.k, label %bb.l

bb.l:                                             ; preds = %.lr.ph429
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4140.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.680.0..sroa_idx, i64 12, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i32 %i.be, ptr %0, align 4, !noalias !20613
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h25626371904a405cE.exit"

._crit_edge430:                                   ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h37c4d710efb388e2E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !noalias !20614, !inline_history !20375
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h25626371904a405cE.exit"

bb.m:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !44 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !44, !align !50, !noundef !44
  %.idx435 = mul nuw nsw i64 %i.bi, 248
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bo = icmp eq i64 %i.bi, 0
  br i1 %i.bo, label %._crit_edge426, label %.lr.ph425

end_hunk_5
begin_hunk_6_@"_ZN13generic_array3hex91_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$generic_array..GenericArray$LT$u8$C$T$GT$$GT$3fmt17hf5704820c052df76E":bb.a
  %i.ge = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.01.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h4b93c5827fb8262dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !44, !nonnull !44
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  %i.g = load i64, ptr %i.c, align 8, !range !92, !noundef !44
  switch i64 %i.g, label %default.unreachable17 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.t
    i64 3, label %bb.e
  ]

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.f
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load <2 x ptr>, ptr %i.h, align 8
  store <2 x ptr> %i.i, ptr %i.d, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.t

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not = phi ptr [ %3, %bb.d ], [ %i.d, %bb.c ]  ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i64, ptr %0, align 8, !range !48, !noundef !44 ; 3 uses
  %i.k = icmp ne i64 %i.j, 12
  call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i64 %i.j, -3
  %i.m = icmp samesign ugt i64 %i.j, 2
  %i.n = select i1 %i.m, i64 %i.l, i64 9
  switch i64 %i.n, label %bb.b [
    i64 0, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 1, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 2, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 3, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 4, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 5, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 9, label %.invoke
    i64 10, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
    i64 11, label %bb.i
    i64 12, label %bb.k
    i64 13, label %bb.k
    i64 14, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21798
  store ptr %1, ptr %i.b, align 8, !noalias !21798
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.q, align 8, !noalias !21798
  %i.r = invoke fastcc noundef zeroext i1 @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h751abd593916baf2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @218, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.not)
          to label %"_ZN134_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hbf33481b06b7d036E.exit" unwind label %bb.l, !inline_history !21778

"_ZN134_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hbf33481b06b7d036E.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21798
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !44, !align !50, !noundef !44
  %i.u = invoke fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h4b93c5827fb8262dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.not)
          to label %bb.q unwind label %bb.l

bb.i:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !21799)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !range !56, !alias.scope !21799, !noalias !21800, !noundef !44 ; 2 uses
  %i.x = icmp ne i32 %i.w, 4
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp samesign ult i32 %i.w, 3
  br i1 %i.y, label %bb.j, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !21799, !noalias !21800, !nonnull !44, !align !50, !noundef !44
  %i.ab = invoke fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h4b93c5827fb8262dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.aa, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.not)
          to label %.noexc unwind label %bb.l, !inline_history !5

.noexc:                                           ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21801
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !21799, !noalias !21800, !nonnull !44, !align !50, !noundef !44
  store ptr %i.ad, ptr %i.a, align 8, !noalias !21801
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.ae, align 8, !noalias !21801
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.af, align 8, !noalias !21801
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.not, ptr %i.ag, align 8, !noalias !21801
  %i.ah = invoke fastcc noundef zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7or_else17hb630a30eef50d49dE"(i1 noundef zeroext %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc9 unwind label %bb.l, !inline_history !5

.noexc9:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21801
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"

bb.k:                                             ; preds = %bb.f, %bb.f
  br label %.invoke

bb.l:                                             ; preds = %.invoke, %.noexc, %bb.j, %bb.g, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE"(ptr noalias noundef align 8 dereferenceable(16) %i.d) #77
          to label %bb.s unwind label %bb.r

"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit": ; preds = %.invoke, %bb.q, %.noexc9, %bb.i, %"_ZN134_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hbf33481b06b7d036E.exit", %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.f ], [ false, %bb.i ], [ %i.aw, %.invoke ], [ %i.r, %"_ZN134_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17hbf33481b06b7d036E.exit" ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ false, %bb.f ], [ %i.ah, %.noexc9 ], [ true, %bb.q ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21802)
  %i.aj = load ptr, ptr %i.d, align 16, !alias.scope !21802, !noundef !44 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !21803)
  %i.al = load i64, ptr %i.aj, align 8, !noalias !21804, !noundef !44
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.aj, align 8, !noalias !21804
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.n, label %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h08be33abbf9f1988E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d), !inline_history !114
  br label %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i"

"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i": ; preds = %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !21805, !noundef !44 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i"
  %i.ar = load i64, ptr %i.ap, align 8, !noalias !21806, !noundef !44
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.ap, align 8, !noalias !21806
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.p, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit"

bb.p:                                             ; preds = %bb.o
  call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3e933a508455fef1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ao), !inline_history !4
  br label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit"

bb.q:                                             ; preds = %bb.h
  br i1 %i.u, label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit", label %.invoke

.invoke:                                          ; preds = %bb.q, %bb.k, %bb.f
  %.sink.sink = phi i64 [ 8, %bb.k ], [ 56, %bb.f ], [ 16, %bb.q ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.sink
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !44, !align !50, !noundef !44
  %i.aw = invoke fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h4b93c5827fb8262dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.av, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.not)
          to label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit" unwind label %bb.l, !inline_history !21797

bb.r:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.s:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ai

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit": ; preds = %bb.p, %bb.o, %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i", %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit", %bb.t
  %.sroa.0.1 = phi i1 [ %.sroa.0.2, %bb.t ], [ %.sroa.0.0.shrunk, %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h37348f4bbee748d8E.exit" ], [ %.sroa.0.0.shrunk, %"_ZN4core3ptr148drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hbedfabb13a07d347E.exit.i.i" ], [ %.sroa.0.0.shrunk, %bb.o ], [ %.sroa.0.0.shrunk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1

bb.t:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.2 = phi i1 [ true, %bb.e ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nls..field_walker..Def$GT$$GT$$GT$17hfa5a68bf8f8aae8eE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h695736424bf27701E"(ptr dead_on_unwind noalias noundef nonnull writable align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noundef nonnull align 1 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !44, !nonnull !44
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %4)
  %i.i = load i32, ptr %i.e, align 4, !range !55, !noundef !44 ; 2 uses
  %i.j = add nsw i32 %i.i, -3
  %.inv = icmp samesign ult i32 %i.i, 3
  %narrow = select i1 %.inv, i32 3, i32 %i.j
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.f
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.f, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  br label %bb.q

bb.f:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.a ] ; 2 uses
  store i8 %storemerge, ptr %i.f, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = trunc nuw i8 %storemerge to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.0.0 = select i1 %i.k, ptr %i.l, ptr %4   ; 6 uses
  %i.m = load i64, ptr %1, align 8, !range !48, !noundef !44 ; 3 uses
  %i.n = icmp ne i64 %i.m, 12
  call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i64 %i.m, -3
  %i.p = icmp samesign ugt i64 %i.m, 2
  %i.q = select i1 %i.p, i64 %i.o, i64 9
  switch i64 %i.q, label %bb.b [
    i64 0, label %bb.g
    i64 1, label %bb.g
    i64 2, label %bb.g
    i64 3, label %bb.g
    i64 4, label %bb.g
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.g
    i64 9, label %bb.p
    i64 10, label %bb.g
    i64 11, label %bb.l
    i64 12, label %bb.o
    i64 13, label %bb.o
    i64 14, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i32 3, ptr %0, align 4
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21825
  store ptr %2, ptr %i.c, align 8, !noalias !21825
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.t, align 8, !noalias !21825
  call fastcc void @"_ZN128_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..Ast$GT$$GT$12traverse_ref17h37c4d710efb388e2E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @220, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !inline_history !21812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21825
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h695736424bf27701E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.v, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.experimental.noalias.scope.decl(metadata !21826)
  %i.y = load i32, ptr %i.d, align 4, !range !72, !alias.scope !21826, !noalias !21827, !noundef !44
  %.not.i = icmp eq i32 %i.y, 3
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !21828
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h190f4799b7c67730E.exit"

bb.k:                                             ; preds = %bb.i
  call fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h695736424bf27701E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.x, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !noalias !21829, !inline_history !21819
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h190f4799b7c67730E.exit"

"_ZN4core6option15Option$LT$T$GT$7or_else17h190f4799b7c67730E.exit": ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

bb.l:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !21830)
  call void @llvm.experimental.noalias.scope.decl(metadata !21831)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !range !56, !alias.scope !21831, !noalias !21832, !noundef !44 ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 4
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp samesign ult i32 %i.aa, 3
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21833
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !21831, !noalias !21832, !nonnull !44, !align !50, !noundef !44
  call fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h695736424bf27701E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0), !noalias !21834, !inline_history !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21833
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !21831, !noalias !21832, !nonnull !44, !align !50, !noundef !44
  store ptr %i.ag, ptr %i.a, align 8, !noalias !21833
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.ah, align 8, !noalias !21833
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.ai, align 8, !noalias !21833
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.0.0, ptr %i.aj, align 8, !noalias !21833
  call fastcc void @"_ZN4core6option15Option$LT$T$GT$7or_else17h5d9260b82ebd4415E"(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a), !noalias !21831, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21833
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

bb.n:                                             ; preds = %bb.l
  store i32 3, ptr %0, align 4, !alias.scope !21830, !noalias !21835
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

bb.o:                                             ; preds = %bb.f, %bb.f
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.o
  %.sink = phi i64 [ 56, %bb.f ], [ 8, %bb.o ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !44, !align !50, !noundef !44
  call fastcc void @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h695736424bf27701E"(ptr noalias noundef align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.al, ptr noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0)
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"

"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit": ; preds = %bb.g, %"_ZN4core6option15Option$LT$T$GT$7or_else17h190f4799b7c67730E.exit", %bb.p, %bb.h, %bb.m, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.q:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN146_$LT$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h729a213c9edc6f33E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN140_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_parser..traverse..TraverseAlloc$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$12traverse_ref17h87327448468a7c7cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !44, !nonnull !44
  %i.f = tail call noundef i8 %i.e(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3)
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.e
    i8 1, label %bb.c
    i8 2, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6deb8fc9330c5177E.exit"
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.e, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6deb8fc9330c5177E.exit"

bb.e:                                             ; preds = %bb.a, %bb.c
  %storemerge = phi i8 [ 0, %bb.c ], [ 1, %bb.a ] ; 2 uses
  store i8 %storemerge, ptr %i.c, align 1
  %i.g = trunc nuw i8 %storemerge to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.02.0 = select i1 %i.g, ptr %i.h, ptr %3  ; 6 uses
  %i.i = load i64, ptr %0, align 8, !range !48, !noundef !44 ; 3 uses
  %i.j = icmp ne i64 %i.i, 12
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %i.i, -3
  %i.l = icmp samesign ugt i64 %i.i, 2
  %i.m = select i1 %i.l, i64 %i.k, i64 9
  switch i64 %i.m, label %bb.b [
    i64 0, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h6deb8fc9330c5177E.exit"
end_hunk_6
begin_hunk_7_@_ZN16nickel_lang_core9typecheck16infer_with_annot17hf321c13c265583f8E:bb.a

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  br label %bb.as

bb.ao:                                            ; preds = %bb.ax, %bb.bd, %bb.aq
  %.sroa.048.6 = phi i1 [ false, %bb.bd ], [ false, %bb.ax ], [ true, %bb.aq ]
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.bd ], [ %i.by, %bb.ax ], [ %i.bs, %bb.aq ] ; 2 uses
  %i.bq = load i64, ptr %i.r, align 8, !range !51, !alias.scope !36780, !noundef !44
  %i.br = icmp samesign ult i64 %i.bq, 18
  br i1 %i.br, label %bb.ap, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92"

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92" unwind label %bb.ag, !inline_history !2

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92": ; preds = %bb.ap, %bb.ao
  br i1 %.sroa.048.6, label %.thread, label %bb.bm

bb.aq:                                            ; preds = %bb.as, %bb.al
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ar:                                            ; preds = %bb.al
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.bv = load <2 x i16>, ptr %i.bt, align 8
  store <2 x i16> %i.bv, ptr %i.bu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an, %bb.am
  invoke fastcc void @"_ZN94_$LT$nls..analysis..TypeCollector$u20$as$u20$nickel_lang_core..typecheck..TypecheckVisitor$GT$10visit_term17h7877c0ed82516253E"(ptr noalias noundef align 8 dereferenceable(96) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.p)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bw = load i64, ptr %i.r, align 8, !range !51, !noundef !44
  %i.bx = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 17)
  switch i64 %i.bx, label %default.unreachable [
    i64 0, label %bb.au
    i64 1, label %bb.av
    i64 2, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.r)
          to label %bb.ay unwind label %bb.bd

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  br label %bb.az

bb.aw:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  br label %bb.az

bb.ax:                                            ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ay:                                            ; preds = %bb.au
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.cb = load <2 x i16>, ptr %i.bz, align 8
  store <2 x i16> %i.cb, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.av
  %i.cc = invoke fastcc noundef align 8 ptr @"_ZN87_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check17hef388f425cd5f897E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef align 8 dereferenceable(96) %3, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.n)
          to label %bb.ba unwind label %bb.ax     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not75 = icmp eq ptr %i.cc, null
  br i1 %.not75, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cc, ptr %i.cd, align 8
  store i64 20, ptr %0, align 8
  %i.ce = load i64, ptr %i.r, align 8, !range !51, !alias.scope !36781, !noundef !44
  %i.cf = icmp samesign ult i64 %i.ce, 18
  br i1 %i.cf, label %bb.bc, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit94"

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r), !inline_history !2
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit94"

.critedge:                                        ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread126

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit94": ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread126

bb.bd:                                            ; preds = %bb.au
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %i.o) #77
          to label %bb.ao unwind label %bb.ag

bb.be:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.641.sroa.0)
  br label %.critedge81

bb.bf:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.039.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.641.sroa.0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.641.0..sroa_idx, i64 80, i1 false)
  %.sroa.641.sroa.4.0..sroa.641.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ch = load <2 x i16>, ptr %.sroa.641.sroa.4.0..sroa.641.0..sroa_idx.sroa_idx, align 8
  %.sroa.641.sroa.6.0..sroa.641.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %.sroa.641.sroa.6.0.copyload = load i32, ptr %.sroa.641.sroa.6.0..sroa.641.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not73 = icmp eq i64 %.sroa.039.0.copyload, 20
  br i1 %.not73, label %.critedge81, label %bb.bh

bb.bg:                                            ; preds = %.thread137
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9from_type17h6d541a2dbc1fb7dfE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.bf unwind label %.thread106

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.031.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.641.sroa.0, i64 80, i1 false)
  br label %.critedge81

.critedge81:                                      ; preds = %bb.be, %bb.bf, %bb.bh
  %.sroa.031.sroa.0.0 = phi i64 [ %.sroa.039.0.copyload, %bb.bh ], [ 3, %bb.bf ], [ 3, %bb.be ]
  %.sroa.7.0 = phi i32 [ %.sroa.641.sroa.6.0.copyload, %bb.bh ], [ undef, %bb.bf ], [ undef, %bb.be ]
  %i.ck = phi <2 x i16> [ %i.ch, %bb.bh ], [ <i16 1, i16 0>, %bb.bf ], [ <i16 1, i16 0>, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.sroa.0)
  store i64 %.sroa.031.sroa.0.0, ptr %0, align 8
  %.sroa.045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.045.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.031.sroa.5, i64 80, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x i16> %i.ck, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.7.0, ptr %.sroa.647.0..sroa_idx, align 4
  br label %bb.bi

.critedge84:                                      ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.bi

bb.bi:                                            ; preds = %.critedge84, %.critedge81
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %.thread126

bb.bj:                                            ; preds = %bb.n, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.cl = load i16, ptr %i.y, align 8, !range !94, !alias.scope !36775, !noalias !36774, !noundef !44
  store ptr %.val.i, ptr %i.s, align 8, !alias.scope !36774, !noalias !36775
  store ptr %.val1.i, ptr %i.z, align 8, !alias.scope !36774, !noalias !36775
  store ptr %.val2.i, ptr %i.aa, align 8, !alias.scope !36774, !noalias !36775
  store ptr %.val3.i, ptr %i.ab, align 8, !alias.scope !36774, !noalias !36775
  store i16 %i.cl, ptr %i.ac, align 8, !alias.scope !36774, !noalias !36775
  %i.cm = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.0.0.i2.i.ph, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef align 8 dereferenceable(96) %3)
          to label %bb.bk unwind label %bb.h      ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not79 = icmp eq ptr %i.cm, null
  br i1 %.not79, label %bb.d, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  store i64 20, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %.thread126

bb.bm:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit", %.thread
  %.pn77103 = phi { ptr, i32 } [ %.pn77104, %.thread ], [ %.pn, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92" ], [ %i.bb, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" ]
  resume { ptr, i32 } %.pn77103

.thread:                                          ; preds = %bb.b, %bb.h, %.thread106, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92", %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  %.pn77104 = phi { ptr, i32 } [ %.pn, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit92" ], [ %lpad.thr_comm, %.thread106 ], [ %i.bb, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" ], [ %i.u, %bb.b ], [ %i.ag, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.bm unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17h4938da9a66628a24E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull align 1 captures(none) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [232 x i8], align 8               ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 8 uses
  %i.j = alloca [96 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [56 x i8], align 8                ; 11 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.8.i = alloca [36 x i8], align 4          ; 11 uses
  %i.n = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [88 x i8], align 8        ; 6 uses
  %i.o = alloca [96 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [96 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [88 x i8], align 8                ; 4 uses
  %i.v = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.699 = alloca [80 x i8], align 8          ; 5 uses
  %i.w = alloca [88 x i8], align 8                ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 4 uses
  %i.y = alloca [88 x i8], align 8                ; 4 uses
  %i.z = alloca [88 x i8], align 8                ; 4 uses
  %i.aa = alloca [88 x i8], align 8               ; 4 uses
  %i.ab = alloca [88 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [96 x i8], align 8               ; 4 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [96 x i8], align 8               ; 4 uses
  %i.ag = alloca [96 x i8], align 8               ; 7 uses
  %i.ah = alloca [4 x i8], align 4                ; 4 uses
  %.sroa.650.sroa.0 = alloca [80 x i8], align 8   ; 5 uses
  %i.ai = alloca [96 x i8], align 8               ; 9 uses
  %i.aj = alloca [96 x i8], align 8               ; 15 uses
  %.sroa.13 = alloca [88 x i8], align 8           ; 7 uses
  %i.ak = alloca [64 x i8], align 8               ; 11 uses
  %i.al = alloca [88 x i8], align 8               ; 7 uses
  %i.am = alloca [96 x i8], align 8               ; 4 uses
  %i.an = alloca [96 x i8], align 8               ; 6 uses
  %.sroa.9365 = alloca [36 x i8], align 4         ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 9 uses
  %i.ap = alloca [96 x i8], align 8               ; 4 uses
  %i.aq = alloca [96 x i8], align 8               ; 8 uses
  %i.ar = alloca [40 x i8], align 8               ; 8 uses
  %i.as = alloca [96 x i8], align 8               ; 7 uses
  %i.at = alloca [96 x i8], align 8               ; 6 uses
  %i.au = alloca [96 x i8], align 8               ; 14 uses
  %i.av = alloca [104 x i8], align 8              ; 2 uses
  %i.aw = alloca [112 x i8], align 8              ; 14 uses
  %i.ax = alloca [96 x i8], align 8               ; 12 uses
  %i.ay = alloca [20 x i8], align 4               ; 4 uses
  %i.az = alloca [96 x i8], align 8               ; 7 uses
  %i.ba = alloca [96 x i8], align 8               ; 12 uses
  %i.bb = alloca [96 x i8], align 8               ; 5 uses
  %i.bc = alloca [96 x i8], align 8               ; 7 uses
  %i.bd = alloca [112 x i8], align 8              ; 4 uses
  %i.be = alloca [96 x i8], align 8               ; 10 uses
  %i.bf = alloca [20 x i8], align 4               ; 4 uses
  %i.bg = alloca [112 x i8], align 8              ; 6 uses
  %i.bh = alloca [48 x i8], align 8               ; 16 uses
  %i.bi = alloca [96 x i8], align 8               ; 7 uses
  %i.bj = alloca [80 x i8], align 8               ; 14 uses
  %i.bk = alloca [96 x i8], align 8               ; 7 uses
  %i.bl = alloca [40 x i8], align 8               ; 9 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [80 x i8], align 8               ; 29 uses
  %i.bo = alloca [96 x i8], align 8               ; 7 uses
  %i.bp = alloca [96 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.bq = load i64, ptr %6, align 8, !range !51, !noundef !44
  %i.br = tail call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 17)
  switch i64 %i.br, label %default.unreachable1199 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1199:                          ; preds = %bb.iy, %bb.hz, %bb.gz, %bb.co, %bb.bo, %bb.bc, %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.fm
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %6)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bo, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bo, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit", %bb.jm, %bb.jl, %.body199, %bb.f
  %.sroa.089.0 = phi i1 [ %.sroa.089.1, %bb.f ], [ false, %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit" ], [ false, %bb.jl ], [ false, %bb.jm ], [ false, %.body199 ] ; 2 uses
  %.sroa.072.0 = phi i8 [ %.sroa.072.1, %bb.f ], [ %.sroa.072.2, %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit" ], [ %.sroa.072.2, %bb.jl ], [ %.sroa.072.2, %bb.jm ], [ %.sroa.072.2, %.body199 ]
  %.pn169 = phi { ptr, i32 } [ %i.bt, %bb.f ], [ %.pn167, %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit" ], [ %.pn167, %bb.jl ], [ %.pn167, %bb.jm ], [ %.pn167, %.body199 ]
  %i.bs = trunc nuw i8 %.sroa.072.0 to i1
  br i1 %i.bs, label %bb.jq, label %bb.fa

bb.f:                                             ; preds = %bb.ir, %bb.ey, %bb.h, %bb.b
  %.sroa.089.1 = phi i1 [ false, %bb.ir ], [ false, %bb.ey ], [ true, %bb.h ], [ true, %bb.b ]
  %.sroa.072.1 = phi i8 [ %.sroa.072.7, %bb.ir ], [ %.sroa.072.6, %bb.ey ], [ 1, %bb.h ], [ 1, %bb.b ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bo, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bw = load <2 x i16>, ptr %i.bu, align 8
  store <2 x i16> %i.bw, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !44, !align !50, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck8UnifType9into_root17h1daadbbb871a5ab7E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.by)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !36984)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !36984, !noalias !36985, !nonnull !44, !noundef !44 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.bz, align 8, !alias.scope !36984, !noalias !36985 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !36986, !noundef !44 ; 2 uses
  %i.ca = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.cb, ptr %.val.i, align 8, !noalias !36986
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.j, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.j:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.i
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.k

bb.k:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !36986, !noundef !44 ; 2 uses
  %i.cd = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.ce, ptr %.val1.i, align 8, !noalias !36986
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.l:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.k, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.cg, align 8, !alias.scope !36984, !noalias !36985, !nonnull !44, !noundef !44 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.ch, align 8, !alias.scope !36984, !noalias !36985 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !36986, !noundef !44 ; 2 uses
  %i.ci = icmp ne i64 %.val.i.i4.i, 0
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add i64 %.val.i.i4.i, 1                 ; 2 uses
  store i64 %i.cj, ptr %.val2.i, align 8, !noalias !36986
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.m, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.m:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !36986, !noundef !44 ; 2 uses
  %i.cl = icmp ne i64 %.val.i2.i6.i, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.cm, ptr %.val3.i, align 8, !noalias !36986
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.q, !prof !49

bb.o:                                             ; preds = %bb.n
end_hunk_7
begin_hunk_8_@_ZN16nickel_lang_core9typecheck6record13ShallowRecord10check_stat17hf4377a37d5589a34E:bb.a

bb.im:                                            ; preds = %bb.ii, %bb.id
  %lpad.thr_comm545 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uo = icmp samesign ult i64 %i.uf, 18
  br i1 %i.uo, label %bb.in, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329"

bb.in:                                            ; preds = %bb.im
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ax)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329" unwind label %bb.bn, !inline_history !2

bb.io:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit329"
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ba)
          to label %.body217 unwind label %bb.bn, !inline_history !2

"_ZN4core3ptr105drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hd227e4c514522883E.exit": ; preds = %bb.gs, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.bx

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211": ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.up = load i64, ptr %i.bp, align 8, !range !51, !noundef !44 ; 3 uses
  %i.uq = icmp samesign ult i64 %i.up, 18
  br i1 %i.uq, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211"
  %i.ur = icmp ne i64 %i.up, 12
  call void @llvm.assume(i1 %i.ur)
  %i.us = icmp eq i64 %i.up, 15
  br i1 %i.us, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ir, %bb.ip, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E.exit211"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.ut = trunc nuw i8 %.sroa.072.7 to i1
  br i1 %i.ut, label %bb.is, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.ir:                                            ; preds = %bb.ip
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef align 8 dereferenceable(88) %i.bp)
          to label %bb.iq unwind label %bb.f

bb.is:                                            ; preds = %bb.iq
  %i.uu = load i64, ptr %6, align 8, !range !51, !alias.scope !37424, !noundef !44
  %i.uv = icmp samesign ult i64 %i.uu, 18
  br i1 %i.uv, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit.sink.split", label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.it:                                            ; preds = %bb.ce
  %i.uw = load i64, ptr %i.bg, align 8, !range !92, !noundef !44
  %i.ux = icmp eq i64 %i.uw, 3
  br i1 %i.ux, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bf, ptr noundef nonnull align 4 dereferenceable(20) %i.hr, i64 20, i1 false)
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h020986c0990a11d9E"(ptr noalias noundef align 8 dereferenceable(48) %i.bh, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.bf)
          to label %bb.ix unwind label %bb.jj

bb.iv:                                            ; preds = %bb.ix, %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.bg, i64 112, i1 false)
  invoke void @_ZN16nickel_lang_core9typecheck17apparent_or_infer17h47a451039b30b837E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, i1 noundef zeroext true)
          to label %bb.iy unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.iv

bb.iy:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0342.0690, i64 160
  %i.va = load i32, ptr %i.uz, align 4, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.vb = load i64, ptr %i.be, align 8, !range !51, !noundef !44 ; 2 uses
  %i.vc = call i64 @llvm.usub.sat.i64(i64 %i.vb, i64 17)
  switch i64 %i.vc, label %default.unreachable1196 [
    i64 0, label %bb.iz
    i64 1, label %bb.ja
    i64 2, label %bb.jb
  ]

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.be)
          to label %bb.jd unwind label %bb.jh

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(96) %i.be, i64 96, i1 false)
  br label %bb.je

bb.jb:                                            ; preds = %bb.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(96) %i.be, i64 96, i1 false)
  br label %bb.je

bb.jc:                                            ; preds = %bb.jf
  %lpad.thr_comm.split-lp560 = landingpad { ptr, i32 }
          cleanup
  br label %.body217

bb.jd:                                            ; preds = %bb.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false)
  %i.vd = load <2 x i16>, ptr %i.hb, align 8
  store <2 x i16> %i.vd, ptr %i.hc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jb, %bb.ja
  invoke fastcc void @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17ha40f46b795719fa6E"(ptr noalias noundef align 8 dereferenceable(16) %i.ct, i32 noundef %i.va, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bc)
          to label %bb.jf unwind label %bb.jh

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bb, ptr noundef nonnull align 8 dereferenceable(96) %i.be, i64 96, i1 false)
  invoke fastcc void @"_ZN94_$LT$nls..analysis..TypeCollector$u20$as$u20$nickel_lang_core..typecheck..TypecheckVisitor$GT$11visit_ident17h7b40eb7148202a68E"(ptr noalias noundef align 8 dereferenceable(96) %5, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hr, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bb)
          to label %bb.jg unwind label %bb.jc

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.ve = icmp eq ptr %i.hq, %i.gx
  br i1 %i.ve, label %._crit_edge, label %bb.ce

bb.jh:                                            ; preds = %bb.je, %bb.iz
  %lpad.thr_comm559 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vf = icmp samesign ult i64 %i.vb, 18
  br i1 %i.vf, label %bb.ji, label %.body217

bb.ji:                                            ; preds = %bb.jh
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be)
          to label %.body217 unwind label %bb.bn, !inline_history !2

bb.jj:                                            ; preds = %bb.iu
  %i.vg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..ApparentType$GT$17heaf80799d1c25e86E"(ptr noalias noundef align 8 dereferenceable(112) %i.bg) #77
          to label %.body217 unwind label %bb.bn

bb.jk:                                            ; preds = %.body199
  %i.vh = icmp ne i64 %i.co, 12
  call void @llvm.assume(i1 %i.vh)
  %i.vi = icmp eq i64 %i.co, 15
  br i1 %i.vi, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  br i1 %.sroa.088.0, label %bb.jn, label %bb.e

bb.jm:                                            ; preds = %bb.jk
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef align 8 dereferenceable(88) %i.bp) #77
          to label %bb.e unwind label %bb.bn

bb.jn:                                            ; preds = %bb.jl
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !37425)
  %i.vk = load ptr, ptr %i.vj, align 8, !alias.scope !37425, !nonnull !44, !noundef !44 ; 4 uses
  %i.vl = load i64, ptr %i.vk, align 8, !range !51, !alias.scope !37426, !noalias !37425, !noundef !44
  %i.vm = icmp samesign ult i64 %i.vl, 18
  br i1 %i.vm, label %bb.jo, label %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit"

bb.jo:                                            ; preds = %bb.jn
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.vk) #78
          to label %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit" unwind label %bb.jp, !noalias !37425, !inline_history !11

bb.jp:                                            ; preds = %bb.jo
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef 96, i64 noundef 8) #66, !noalias !37425, !inline_history !139
  br label %.body924

"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hcfbfc776cd39aac4E.exit": ; preds = %bb.jn, %bb.jo
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vk, i64 noundef 96, i64 noundef 8) #66, !noalias !37425, !inline_history !139
  br label %bb.e

bb.jq:                                            ; preds = %bb.e
  %i.vo = load i64, ptr %6, align 8, !range !51, !alias.scope !37427, !noundef !44
  %i.vp = icmp samesign ult i64 %i.vo, 18
  br i1 %i.vp, label %bb.jr, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit337"

bb.jr:                                            ; preds = %bb.jq
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %6)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit337" unwind label %bb.bn, !inline_history !2

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit337": ; preds = %bb.jr, %bb.jq
  br i1 %.sroa.089.0, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit337", %bb.jt, %bb.fa
  resume { ptr, i32 } %.pn169

bb.jt:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit337", %bb.fa
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.js unwind label %bb.bn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN16nickel_lang_core9typecheck6record13ShallowRecord9check_dyn17haf2d5921b4d140fbE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull align 1 captures(none) %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [232 x i8], align 8               ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [96 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 14 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [96 x i8], align 8                ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [96 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [96 x i8], align 8                ; 8 uses
  %i.r = alloca [96 x i8], align 8                ; 7 uses
  %i.s = alloca [96 x i8], align 8                ; 7 uses
  %i.t = alloca [96 x i8], align 8                ; 4 uses
  %i.u = alloca [96 x i8], align 8                ; 6 uses
  %i.v = alloca [96 x i8], align 8                ; 36 uses
  %i.w = alloca [80 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_ZN16nickel_lang_core9typecheck13RecordContext10from_outer17hade1258c082d6612E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %2)
          to label %bb.c unwind label %.body85

bb.b:                                             ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"
  br i1 %.sroa.036.2, label %bb.df, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit112"

.body85:                                          ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !44, !align !50, !noundef !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !range !94, !noundef !44
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable15fresh_type_uvar17h7428aa8e403527f3E(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(144) %i.y, i16 noundef %i.aa)
          to label %bb.e unwind label %bb.d

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %.body, %bb.q, %bb.d
  %.pn56 = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %.pn, %bb.q ], [ %.pn, %.body ] ; 2 uses
  %.sroa.036.2 = phi i1 [ %.sroa.036.3, %bb.d ], [ false, %bb.q ], [ false, %.body ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..typecheck..RecordContext$GT$17hc1677dc8408b2ea4E"(ptr noalias noundef align 8 dereferenceable(80) %i.w) #77
          to label %bb.b unwind label %bb.bn

bb.d:                                             ; preds = %bb.bl, %bb.ba, %bb.c
  %.sroa.036.3 = phi i1 [ false, %bb.bl ], [ false, %bb.ba ], [ true, %bb.c ]
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ac = load i64, ptr %i.v, align 8, !range !51, !noundef !44
  %i.ad = call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 17)
  switch i64 %i.ad, label %default.unreachable198 [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable198:                           ; preds = %bb.cu, %bb.v, %bb.cg, %bb.bo, %bb.bd, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN100_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h41568499b311325fE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.v)
          to label %bb.j unwind label %bb.dd

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %lpad.thr_comm.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.ag = load <2 x i16>, ptr %i.ae, align 8
  store <2 x i16> %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  invoke fastcc void @_ZN16nickel_lang_core9typecheck11mk_uniftype4dict17h91b62e2b1b36ab8dE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.s)
          to label %bb.l unwind label %bb.dd

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ah = invoke noundef align 8 ptr @"_ZN98_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h7177d98b41b74c07E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w)
          to label %bb.m unwind label %bb.i       ; 4 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef nonnull align 8 dereferenceable(232) %i.ah, i64 232, i1 false), !noalias !37465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37464
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !noalias !37466
  %i.aj = invoke noundef nonnull align 8 ptr @_ZN16nickel_lang_core9typecheck5error13UnifErrorKind18into_typecheck_err17h1e2d55b8971be6b4E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.p unwind label %bb.o, !noalias !37467

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ah, i64 noundef 232, i64 noundef 8) #66, !noalias !37468
  br label %.body

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37464
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.ah, i64 noundef 232, i64 noundef 8) #66, !noalias !37468
  br label %.loopexit156

.body:                                            ; preds = %.loopexit160, %.loopexit.split-lp, %bb.dd, %bb.de, %bb.ck, %bb.bs, %bb.bh, %bb.o, %bb.i, %bb.co, %bb.bw, %bb.bm
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp125, %bb.i ], [ %i.ge, %bb.co ], [ %i.gb, %bb.ck ], [ %i.fj, %bb.bw ], [ %i.fg, %bb.bs ], [ %i.fb, %bb.bm ], [ %i.ew, %bb.bh ], [ %i.ak, %bb.o ], [ %lpad.thr_comm124, %bb.dd ], [ %lpad.thr_comm124, %bb.de ], [ %lpad.loopexit, %.loopexit160 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.al = load i64, ptr %i.v, align 8, !range !51, !alias.scope !37469, !noundef !44
  %i.am = icmp samesign ult i64 %i.al, 18
  br i1 %i.am, label %bb.q, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit"

bb.q:                                             ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit" unwind label %bb.bn, !inline_history !2

.loopexit160:                                     ; preds = %bb.bx
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cp, %bb.ct, %bb.cv, %bb.da
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !44 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aq, 168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.as = getelementptr inbounds nuw [224 x i8], ptr %3, i64 %4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  br label %bb.s

bb.s:                                             ; preds = %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit, %bb.r
  %.sroa.0113.0 = phi ptr [ %i.ao, %bb.r ], [ %.sroa.0113.1135.ph, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %3, %bb.r ], [ %.sroa.8.1.ph, %_ZN16nickel_lang_core9typecheck16TypecheckVisitor11visit_ident17h47cdd9ff5a2a608dE.exit ] ; 4 uses
  %.not.i = icmp eq ptr %.sroa.0113.0, null
  %i.ax = icmp eq ptr %.sroa.0113.0, %i.ar
  %or.cond = select i1 %.not.i, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.t, label %_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit

_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit: ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 144
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ba = icmp eq ptr %.sroa.8.0, %i.as
  br i1 %i.ba, label %"_ZN4core6option15Option$LT$T$GT$7or_else17ha180e27bdec4e0a4E.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 224
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 200
  br label %bb.v

bb.v:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit, %bb.u
  %.sroa.0113.1135.ph = phi ptr [ %i.ay, %_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit ], [ null, %bb.u ]
  %.sroa.8.1.ph = phi ptr [ %.sroa.8.0, %_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit ], [ %i.bb, %bb.u ]
  %.sroa.0.0.i65.ph = phi ptr [ %i.az, %_ZN4core4iter8adapters5chain17and_then_or_clear17haea0c50b198ae72cE.exit ], [ %i.bc, %bb.u ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i65.ph, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bf = load i64, ptr %i.v, align 8, !range !51, !noundef !44
end_hunk_8
begin_hunk_9_@"_ZN90_$LT$nickel_lang_parser..error..InvalidRecordTypeError$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha0f6c63ec0d9e744E":bb.a
  br label %bb.c

bb.m:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noundef !44
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.n, label %bb.c

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !44
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !44
  %i.al = icmp eq i32 %i.ai, %i.ak
  br label %bb.c

bb.o:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr %i.am, align 4, !noundef !44
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !44
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.c

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !noundef !44
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !noundef !44
  %i.av = icmp eq i32 %i.as, %i.au
  br label %bb.c

bb.q:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !44
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !noundef !44
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.r, label %bb.c

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !noundef !44
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !noundef !44
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.s, label %bb.c

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !44
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !44
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.t, label %bb.c

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !44
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !44
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.u, label %bb.c

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !44
  %i.bu = icmp eq i32 %i.br, %i.bt
  br label %bb.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN90_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc8a2fca2b1318dfE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !44
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5ac34cfa85700fdbE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115992)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !115992, !noalias !115993, !nonnull !44, !noundef !44 ; 3 uses
  %.val3.i.i = load <16 x i8>, ptr %i.e, align 16, !noalias !115994
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115995)
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5ac34cfa85700fdbE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !115995, !noalias !115996
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !115995, !noalias !115996
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !115995, !noalias !115996 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !115995, !noalias !115996, !nonnull !44 ; 2 uses
  br label %.lr.ph.split.i

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i
  %.not25.i = icmp eq i64 %i.w, 0
  br i1 %.not25.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5ac34cfa85700fdbE.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i"
  %.lcssa24.i = phi ptr [ %.lcssa23.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i" ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.n = phi i16 [ %i.v, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i" ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.o = phi i64 [ %i.w, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i" ], [ %i.b, %.lr.ph.i ]
  %.lcssa131819.i = phi ptr [ %.lcssa1317.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i" ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %.not13.i.i.i.i = icmp eq i16 %i.n, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i.i.i.i
  %i.p = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %.lcssa24.i, %.lr.ph.split.i ] ; 2 uses
  %i.q = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.lcssa131819.i, %.lr.ph.split.i ]
  %.val11.i.i.i.i = load <16 x i8>, ptr %i.p, align 16, !noalias !115997
  %i.r = icmp sgt <16 x i8> %.val11.i.i.i.i, splat (i8 -1)
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.r to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge20.i.i.i.i

._crit_edge20.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i
  %.lcssa23.i = phi ptr [ %.lcssa24.i, %.lr.ph.split.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %.lcssa1317.i = phi ptr [ %.lcssa131819.i, %.lr.ph.split.i ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.n, %.lr.ph.split.i ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i.i.i, -1
  %i.v = and i16 %i.u, %.lcssa.i.i.i.i
  %i.w = add i64 %i.o, -1                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116000)
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %.lcssa1317.i, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ac = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h95947379ff9a57f9E(i64 %.val.i.i.i.i, i64 %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ab), !noalias !116001 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116002)
  %i.ad = lshr i64 %i.ac, 57
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !116003, !noalias !116004
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge20.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge20.i.i.i.i ], [ %i.av, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ac, %._crit_edge20.i.i.i.i ], [ %i.aw, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !116005 ; 2 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.au, %bb.d ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %i.l
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ao, align 4, !noalias !116006, !noundef !44
  %i.ap = icmp eq i32 %.val.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.ap, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i", label %bb.d, !prof !46

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.e, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h5ac34cfa85700fdbE.exit, !prof !49

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.au = and i16 %i.at, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.av = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.aw = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.av
  br label %bb.c

_ZN4core4iter6traits8iterator8Iterator8try_fold17h5ac34cfa85700fdbE.exit: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i", %._crit_edge.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %._crit_edge.i.i.i.i.i ], [ true, %bb.b ], [ true, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h9f9853480b5d1300E.exit.loopexit.i" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 1 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = load i64, ptr %0, align 8, !range !48, !noundef !44 ; 3 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.v
    i64 1, label %bb.v
    i64 2, label %bb.v
    i64 3, label %bb.v
    i64 4, label %bb.v
    i64 5, label %bb.v
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 8, label %bb.v
    i64 9, label %bb.r
    i64 10, label %bb.v
    i64 11, label %bb.k
    i64 12, label %bb.l
    i64 13, label %bb.l
    i64 14, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.m = call fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h14a8c2aa4bfef9d8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116011)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !116011, !noalias !116010, !nonnull !44, !noundef !44 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !116011, !noalias !116010 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !116012, !noundef !44 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8, !noalias !116012
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !116012, !noundef !44 ; 2 uses
  %i.t = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.u, ptr %.val1.i, align 8, !noalias !116012
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.w, align 8, !alias.scope !116011, !noalias !116010, !nonnull !44, !noundef !44 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.x, align 8, !alias.scope !116011, !noalias !116010 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !116012, !noundef !44 ; 2 uses
  %i.y = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.i4.i, 1                  ; 2 uses
  store i64 %i.z, ptr %.val2.i, align 8, !noalias !116012
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !116012, !noundef !44 ; 2 uses
  %i.ab = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.ac, ptr %.val3.i, align 8, !noalias !116012
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n, !prof !49

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.af = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hf76495930e4db4e6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.v, %bb.r, %bb.k, %bb.q, %bb.p, %bb.c
  %.sroa.0.0 = phi ptr [ %i.m, %bb.c ], [ %i.am, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.r ], [ %i.af, %bb.k ], [ null, %bb.v ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i16, ptr %i.ag, align 8, !range !94, !alias.scope !116011, !noalias !116010, !noundef !44
  store ptr %.val.i, ptr %i.e, align 8, !alias.scope !116010, !noalias !116011
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val1.i, ptr %i.ai, align 8, !alias.scope !116010, !noalias !116011
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.val2.i, ptr %i.aj, align 8, !alias.scope !116010, !noalias !116011
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.val3.i, ptr %i.ak, align 8, !alias.scope !116010, !noalias !116011
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i16 %i.ah, ptr %i.al, align 8, !alias.scope !116010, !noalias !116011
  %i.am = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 1 %3)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ap = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ao, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.r:                                             ; preds = %bb.a, %bb.l
  %.sink = phi i64 [ 56, %bb.a ], [ 8, %bb.l ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.as = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.t:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = load i64, ptr %0, align 8, !range !48, !noundef !44 ; 3 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.v
    i64 1, label %bb.v
    i64 2, label %bb.v
    i64 3, label %bb.v
    i64 4, label %bb.v
    i64 5, label %bb.v
    i64 6, label %bb.c
    i64 7, label %bb.d
    i64 8, label %bb.v
    i64 9, label %bb.r
    i64 10, label %bb.v
    i64 11, label %bb.k
    i64 12, label %bb.l
    i64 13, label %bb.l
    i64 14, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.m = call fastcc noundef align 8 ptr @"_ZN86_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17h7db4038e885b0499E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116017)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !116017, !noalias !116016, !nonnull !44, !noundef !44 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !116017, !noalias !116016 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !116018, !noundef !44 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8, !noalias !116018
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.f

bb.f:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !116018, !noundef !44 ; 2 uses
  %i.t = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.u, ptr %.val1.i, align 8, !noalias !116018
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.f, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.w, align 8, !alias.scope !116017, !noalias !116016, !nonnull !44, !noundef !44 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.x, align 8, !alias.scope !116017, !noalias !116016 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !116018, !noundef !44 ; 2 uses
  %i.y = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %.val.i.i4.i, 1                  ; 2 uses
  store i64 %i.z, ptr %.val2.i, align 8, !noalias !116018
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.h:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !116018, !noundef !44 ; 2 uses
  %i.ab = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i2.i6.i, 1                ; 2 uses
  store i64 %i.ac, ptr %.val3.i, align 8, !noalias !116018
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.n, !prof !49

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.af = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hba5a43c18ee4c1caE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %bb.a, %bb.a
  br label %bb.r

bb.m:                                             ; preds = %bb.v, %bb.r, %bb.k, %bb.q, %bb.p, %bb.c
  %.sroa.0.0 = phi ptr [ %i.m, %bb.c ], [ %i.am, %bb.p ], [ %i.ap, %bb.q ], [ %i.as, %bb.r ], [ %i.af, %bb.k ], [ null, %bb.v ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.i, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i16, ptr %i.ag, align 8, !range !94, !alias.scope !116017, !noalias !116016, !noundef !44
  store ptr %.val.i, ptr %i.e, align 8, !alias.scope !116016, !noalias !116017
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val1.i, ptr %i.ai, align 8, !alias.scope !116016, !noalias !116017
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.val2.i, ptr %i.aj, align 8, !alias.scope !116016, !noalias !116017
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.val3.i, ptr %i.ak, align 8, !alias.scope !116016, !noalias !116017
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i16 %i.ah, ptr %i.al, align 8, !alias.scope !116016, !noalias !116017
  %i.am = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef align 8 dereferenceable(96) %3)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ap = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ao, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.r:                                             ; preds = %bb.a, %bb.l
  %.sink = phi i64 [ 56, %bb.a ], [ 8, %bb.l ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.as = call fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ar, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.t:                                             ; preds = %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN92_$LT$std..sync..mpsc..TryIter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hae1a05ecc9f44400E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.738.i.i.sroa.5 = alloca [59 x i8], align 1 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %.sroa.416.i.i.sroa.4 = alloca [59 x i8], align 1 ; 4 uses
end_hunk_9
begin_hunk_10_@"_ZN97_$LT$toml..de..deserializer..value..ValueDeserializer$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h90854213ea47f1b4E":bb.a
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !119029, !inline_history !118795
  unreachable

.thread267:                                       ; preds = %bb.fd, %bb.ez, %.body.i405, %bb.ek, %bb.ej, %bb.ej, %bb.eh, %.thread279.loopexit, %.thread279.loopexit.split-lp, %bb.fp
  %.pn.i190270 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread279.loopexit.split-lp ], [ %lpad.thr_comm.split-lp278, %bb.fp ], [ %lpad.loopexit, %.thread279.loopexit ], [ %lpad.thr_comm.split-lp, %bb.fd ], [ %i.lp, %bb.ek ], [ %i.ma, %bb.eh ], [ %i.lp, %bb.ej ], [ %i.lp, %bb.ej ], [ %eh.lpad-body.i, %bb.ez ], [ %eh.lpad-body.i, %.body.i405 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119094)
  call void @llvm.experimental.noalias.scope.decl(metadata !119095), !noalias !119029
  %i.od = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.val1.i.i695 = load i64, ptr %i.od, align 8, !alias.scope !119096, !noalias !119029, !noundef !44 ; 4 uses
  %i.oe = icmp eq i64 %.val1.i.i695, 0
  br i1 %i.oe, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h6cea07d17f6d7e24E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %.thread267
  %.val.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i189, align 8, !alias.scope !119096, !noalias !119029, !nonnull !44, !noundef !44
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i695, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i), !noalias !119029
  %i.of = shl i64 %.val1.i.i695, 3
  %i.og = and i64 %i.of, -16                      ; 2 uses
  %i.oh = add i64 %i.og, 16                       ; 2 uses
  %i.oi = add nsw i64 %.val1.i.i695, 17
  %i.oj = add i64 %i.oi, %i.oh                    ; 3 uses
  %i.ok = icmp uge i64 %i.oj, %i.oh
  call void @llvm.assume(i1 %i.ok), !noalias !119029
  %i.ol = icmp ult i64 %i.oj, 9223372036854775793
  call void @llvm.assume(i1 %i.ol), !noalias !119029
  %i.om = sub nuw nsw i64 -16, %i.og
  %i.on = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.om
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.on, i64 noundef %i.oj, i64 noundef range(i64 1, -9223372036854775807) 16) #66, !noalias !119097
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h6cea07d17f6d7e24E.exit.i.i"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h6cea07d17f6d7e24E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %.thread267
  call void @llvm.experimental.noalias.scope.decl(metadata !119098), !noalias !119029
  %.val4.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i187, align 8, !alias.scope !119099, !noalias !119029, !nonnull !44, !noundef !44 ; 3 uses
  %.val5.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i188, align 8, !alias.scope !119099, !noalias !119029, !noundef !44
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h52b34e193259c0d5E"(ptr noalias noundef nonnull readonly align 8 %.val4.i.i.i, i64 noundef %.val5.i.i.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80e4ba52d42d4556E.exit.i.i.i" unwind label %bb.gb, !noalias !119100

bb.gb:                                            ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h6cea07d17f6d7e24E.exit.i.i"
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.s, align 8, !range !74, !alias.scope !119099, !noalias !119029, !noundef !44 ; 2 uses
  %i.op = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.op, label %.body694, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.oq = mul nuw i64 %.val2.i.i.i, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.oq, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !119100
  br label %.body694

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80e4ba52d42d4556E.exit.i.i.i": ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17h6cea07d17f6d7e24E.exit.i.i"
  %.val.i.i.i696 = load i64, ptr %i.s, align 8, !range !74, !alias.scope !119099, !noalias !119029, !noundef !44 ; 2 uses
  %i.or = icmp eq i64 %.val.i.i.i696, 0
  br i1 %i.or, label %.body.i, label %bb.gd

bb.gd:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80e4ba52d42d4556E.exit.i.i.i"
  %i.os = mul nuw i64 %.val.i.i.i696, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.os, i64 noundef range(i64 1, -9223372036854775807) 8) #66, !noalias !119100
  br label %.body.i

bb.ge:                                            ; preds = %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i45.i", %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i43.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !119028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !119101)
  call void @llvm.experimental.noalias.scope.decl(metadata !119102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !119103
  invoke void @_ZN4toml2de5error5Error4span17hf117a0c5f36e09cbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bd)
          to label %bb.gg unwind label %bb.gf, !noalias !119101

bb.gf:                                            ; preds = %bb.ge
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17h014a8a8d2648d757E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bd) #77
          to label %.body unwind label %bb.gi, !noalias !119101

bb.gg:                                            ; preds = %bb.ge
  %i.ou = load i64, ptr %i.y, align 8, !range !60, !noalias !119103, !noundef !44
  %.not.i161 = icmp eq i64 %i.ou, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !119103
  br i1 %.not.i161, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  store i64 1, ptr %i.bd, align 8, !alias.scope !119102, !noalias !119101
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.val53, ptr %.sroa.4.0..sroa_idx.i162, align 8, !alias.scope !119102, !noalias !119101
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %.val54, ptr %.sroa.5.0..sroa_idx.i163, align 8, !alias.scope !119102, !noalias !119101
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gf
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !119101
  unreachable

bb.gj:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i.i", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !119028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nu, ptr %i.ow, align 8
  store i64 2, ptr %0, align 8
  br label %bb.an

bb.gk:                                            ; preds = %bb.gh, %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 88, i1 false), !alias.scope !119103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.be, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.an

.body:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i", %bb.gf, %bb.fx, %bb.ft, %bb.dm, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i", %bb.cn, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ot, %bb.gf ], [ %i.nv, %bb.ft ], [ %i.ka, %bb.dm ], [ %.pn.i, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i" ], [ %i.nz, %bb.fx ], [ %i.hx, %bb.cn ], [ %i.bq, %bb.b ], [ %.pn37.i, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i" ], [ %.pn37.i, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i" ] ; 14 uses
  %.sroa.026.1 = phi i1 [ false, %bb.gf ], [ false, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i" ], [ false, %bb.fx ], [ true, %bb.cn ], [ %.sroa.026.0, %bb.b ], [ false, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i" ], [ false, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i" ]
  %.sroa.025.1 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ false, %bb.dm ], [ false, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i" ], [ true, %bb.fx ], [ true, %bb.cn ], [ %.sroa.025.0, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i" ]
  %.sroa.024.3 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i" ], [ true, %bb.fx ], [ %.sroa.024.2, %bb.cn ], [ true, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i" ]
  %.sroa.023.3 = phi i1 [ true, %bb.gf ], [ true, %bb.ft ], [ true, %bb.dm ], [ true, %"_ZN4core3ptr93drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8e226ca705b6952aE.exit.i.i" ], [ true, %bb.fx ], [ %.sroa.023.2, %bb.cn ], [ true, %bb.b ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17hf8acc13eb538bb61E.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h6161cd29a8645016E.exit.i" ]
  switch i8 %i.bp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit" [
    i8 0, label %.body.thread
    i8 1, label %bb.gl
    i8 2, label %bb.gm
    i8 5, label %bb.gn
    i8 6, label %bb.go
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit": ; preds = %bb.ai, %bb.aj, %bb.gt, %bb.gr, %.body116, %.body108, %bb.ac, %bb.ab, %bb.br, %bb.aq, %.thread.i, %bb.gu, %bb.gs, %bb.gq, %bb.gp, %bb.gw, %bb.gv, %bb.go, %bb.gn, %bb.gm, %bb.gl, %.body.thread, %.body
  %.pn290 = phi { ptr, i32 } [ %.pn, %bb.gs ], [ %.pn, %bb.gq ], [ %eh.lpad-body109, %bb.aq ], [ %.pn, %bb.gw ], [ %.pn, %bb.gv ], [ %.pn, %bb.go ], [ %.pn, %bb.gn ], [ %.pn, %bb.gm ], [ %.pn, %bb.gl ], [ %.pn, %.body.thread ], [ %.pn, %.body ], [ %.pn, %bb.gu ], [ %.pn56.i, %.thread.i ], [ %.pn, %bb.gp ], [ %eh.lpad-body117, %bb.br ], [ %.pn, %bb.gr ], [ %eh.lpad-body117, %.body116 ], [ %.pn, %bb.gt ], [ %i.dy, %bb.ac ], [ %eh.lpad-body109, %.body108 ], [ %i.dy, %bb.ab ], [ %i.ek, %bb.aj ], [ %i.ek, %bb.ai ]
  resume { ptr, i32 } %.pn290

.body.thread:                                     ; preds = %.body
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre362 = load i64, ptr %.phi.trans.insert, align 8, !range !70 ; 3 uses
  %.not334 = icmp eq i64 %.pre362, -9223372036854775808
  br i1 %.not334, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", label %bb.gp

bb.gl:                                            ; preds = %.body
  br i1 %.sroa.023.3, label %bb.gr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gm:                                            ; preds = %.body
  br i1 %.sroa.024.3, label %bb.gt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gn:                                            ; preds = %.body
  br i1 %.sroa.025.1, label %bb.gv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.go:                                            ; preds = %.body
  br i1 %.sroa.026.1, label %bb.gw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gp:                                            ; preds = %.body.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !119104)
  call void @llvm.experimental.noalias.scope.decl(metadata !119105)
  %i.ox = icmp eq i64 %.pre362, 0
  br i1 %i.ox, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit", label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load ptr, ptr %i.oy, align 8, !alias.scope !119106, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.pre362, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !119106
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gr:                                            ; preds = %bb.gl
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val55 = load i64, ptr %i.oz, align 8, !range !70, !noundef !44 ; 2 uses
  %switch332 = icmp sgt i64 %.val55, 0
  br i1 %switch332, label %bb.gs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gs:                                            ; preds = %bb.gr
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val56 = load ptr, ptr %i.pa, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %.val55, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !119107
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gt:                                            ; preds = %bb.gm
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val61 = load i64, ptr %i.pb, align 8, !range !70, !noundef !44 ; 2 uses
  %switch333 = icmp sgt i64 %.val61, 0
  br i1 %switch333, label %bb.gu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gu:                                            ; preds = %bb.gt
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val62 = load ptr, ptr %i.pc, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val61, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !119108
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit"

bb.gv:                                            ; preds = %bb.gn
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$toml..de..parser..dearray..DeArray$GT$17hdbc59443148c04f6E"(ptr noalias noundef align 8 dereferenceable(32) %i.pd) #77
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit" unwind label %bb.bp

bb.gw:                                            ; preds = %bb.go
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr187drop_in_place$LT$toml..map..Map$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h545382a755d0f1ddE"(ptr noalias noundef align 8 dereferenceable(32) %i.pe) #77
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit" unwind label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hba5a43c18ee4c1caE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !56, !noundef !44 ; 2 uses
  %i.e = icmp ne i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %i.d, 3
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !44, !align !50, !noundef !44
  %i.i = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119113)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !119113, !noalias !119112, !nonnull !44, !noundef !44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !119113, !noalias !119112 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !119114, !noundef !44 ; 2 uses
  %i.k = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.l, ptr %.val.i, align 8, !noalias !119114
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !119114, !noundef !44 ; 2 uses
  %i.n = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.o, ptr %.val1.i, align 8, !noalias !119114
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.q, align 8, !alias.scope !119113, !noalias !119112, !nonnull !44, !noundef !44 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !119113, !noalias !119112 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !119114, !noundef !44 ; 2 uses
  %i.s = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.val.i.i4.i, 1                  ; 2 uses
  store i64 %i.t, ptr %.val2.i, align 8, !noalias !119114
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.f:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !119114, !noundef !44 ; 2 uses
  %i.v = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %.val.i2.i6.i, 1                 ; 2 uses
  store i64 %i.w, ptr %.val3.i, align 8, !noalias !119114
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load i16, ptr %i.y, align 8, !range !94, !alias.scope !119113, !noalias !119112, !noundef !44
  store ptr %.val.i, ptr %i.b, align 8, !alias.scope !119112, !noalias !119113
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val1.i, ptr %i.aa, align 8, !alias.scope !119112, !noalias !119113
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val2.i, ptr %i.ab, align 8, !alias.scope !119112, !noalias !119113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val3.i, ptr %i.ac, align 8, !alias.scope !119112, !noalias !119113
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 %i.z, ptr %i.ad, align 8, !alias.scope !119112, !noalias !119113
  %i.ae = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb8a73bef5480a03bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef align 8 dereferenceable(96) %3)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.af = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hba5a43c18ee4c1caE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(96) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ae, %bb.k ], [ %i.af, %bb.l ], [ null, %bb.q ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ag

bb.o:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hf76495930e4db4e6E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull align 1 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !range !56, !noundef !44 ; 2 uses
  %i.e = icmp ne i32 %i.d, 4
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %i.d, 3
  br i1 %i.f, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !44, !align !50, !noundef !44
  %i.i = load ptr, ptr %0, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119119)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !119119, !noalias !119118, !nonnull !44, !noundef !44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !119119, !noalias !119118 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noalias !119120, !noundef !44 ; 2 uses
  %i.k = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.l, ptr %.val.i, align 8, !noalias !119120
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i, !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i: ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.val1.i, null
  br i1 %.not.i.i, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", label %bb.d

bb.d:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val1.i, align 8, !noalias !119120, !noundef !44 ; 2 uses
  %i.n = icmp ne i64 %.val.i2.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.o, ptr %.val1.i, align 8, !noalias !119120
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i", !prof !49

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i": ; preds = %bb.d, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h9119bb650ae6edb9E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val2.i = load ptr, ptr %i.q, align 8, !alias.scope !119119, !noalias !119118, !nonnull !44, !noundef !44 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !119119, !noalias !119118 ; 4 uses
  %.val.i.i4.i = load i64, ptr %.val2.i, align 8, !noalias !119120, !noundef !44 ; 2 uses
  %i.s = icmp ne i64 %.val.i.i4.i, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.val.i.i4.i, 1                  ; 2 uses
  store i64 %i.t, ptr %.val2.i, align 8, !noalias !119120
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i, !prof !49

bb.f:                                             ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i: ; preds = %"_ZN96_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd572f8ed6103dad6E.exit.i"
  %.not.i5.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i5.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %.val.i2.i6.i = load i64, ptr %.val3.i, align 8, !noalias !119120, !noundef !44 ; 2 uses
  %i.v = icmp ne i64 %.val.i2.i6.i, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %.val.i2.i6.i, 1                 ; 2 uses
  store i64 %i.w, ptr %.val3.i, align 8, !noalias !119120
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load i16, ptr %i.y, align 8, !range !94, !alias.scope !119119, !noalias !119118, !noundef !44
  store ptr %.val.i, ptr %i.b, align 8, !alias.scope !119118, !noalias !119119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val1.i, ptr %i.aa, align 8, !alias.scope !119118, !noalias !119119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val2.i, ptr %i.ab, align 8, !alias.scope !119118, !noalias !119119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val3.i, ptr %i.ac, align 8, !alias.scope !119118, !noalias !119119
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 %i.z, ptr %i.ad, align 8, !alias.scope !119118, !noalias !119119
  %i.ae = invoke fastcc noundef align 8 ptr @"_ZN92_$LT$$RF$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hb66c59dd78dc96edE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 1 %3)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.af = call fastcc noundef align 8 ptr @"_ZN98_$LT$$RF$nickel_lang_parser..ast..typ..RecordRows$u20$as$u20$nickel_lang_core..typecheck..Walk$GT$4walk17hf76495930e4db4e6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 1 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l, %bb.k
  %.sroa.0.0 = phi ptr [ %i.ae, %bb.k ], [ %i.af, %bb.l ], [ null, %bb.q ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ag

bb.o:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2) #77
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h16b7864ffe072dc7E"(ptr noalias noundef align 8 dereferenceable(40) %2)
  br label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$9spec_fold17h6512123b79de6bc3E"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(304) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119144)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !119144, !noundef !44 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17hb3c2377d1512a5e4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !119146
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.m, %.noexc ]
  %storemerge.i.i = phi ptr [ %1, %bb.b ], [ %i.q, %.noexc ] ; 4 uses
  %i.l = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h241bf9a8123bf5afE"(ptr noalias noundef nonnull align 8 dereferenceable(304) %0)
          to label %bb.d unwind label %bb.h, !noalias !119145 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.k, -1                         ; 3 uses
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !119147, !noalias !119148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119146
  store ptr %storemerge.i.i, ptr %i.c, align 8, !noalias !119146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119149
  store i8 18, ptr %i.h, align 8, !noalias !119146
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !119149
  store i64 -9223372036854775757, ptr %i.a, align 8, !noalias !119149
  %i.n = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h16029b259427aa16E.exit.i.i.i" unwind label %bb.f, !noalias !119145

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hc4da17c3e9a9e378E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #77
          to label %.body unwind label %bb.g, !noalias !119145

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !119145
  unreachable

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h16029b259427aa16E.exit.i.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119149
  store ptr %i.n, ptr %i.i, align 8, !noalias !119146
  store ptr %storemerge.i.i, ptr %i.j, align 8, !noalias !119146
  store i64 -9223372036854775761, ptr %i.b, align 8, !noalias !119146
end_hunk_10
