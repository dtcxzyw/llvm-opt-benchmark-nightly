Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37289
inline.NumDeleted: 15087
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN102_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17h5e33210cbdf3bb27E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.282.sroa.2.0..sroa.282.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %i.ce, i64 20, i1 false)
  store i64 26, ptr %i.a, align 8
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.dp, ptr %.sroa.282.0..sroa_idx, align 8
  %i.dr = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 112, i64 noundef 8)
          to label %.thread426 unwind label %bb.bo, !noalias !3279 ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a) #86
          to label %.thread436 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bq:                                            ; preds = %bb.bm
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef 96, i64 noundef 8) #83
  br label %bb.bh

.thread426:                                       ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dr, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef 96, i64 noundef 8) #83
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313"

bb.br:                                            ; preds = %bb.bs, %bb.bk
  %i.du = icmp samesign ult i64 %i.dj, 18
  br i1 %i.du, label %bb.bw, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313"

bb.bs:                                            ; preds = %bb.bk
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hf2f317970ea55935E"(ptr noalias noundef align 8 dereferenceable(8) %i.n)
          to label %bb.br unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = icmp samesign ult i64 %i.dj, 18
  br i1 %i.dw, label %bb.bu, label %.thread395

bb.bu:                                            ; preds = %bb.bt
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.dh)
          to label %.thread395 unwind label %bb.bv, !inline_history !5

bb.bv:                                            ; preds = %bb.ce, %bb.cb, %bb.bu, %bb.an, %bb.co, %bb.cv, %bb.ee, %bb.ed, %.body259.thread, %.thread458, %bb.cw, %bb.cs, %.body304.thread, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread", %.thread395, %bb.ca, %bb.ai
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313": ; preds = %bb.bw, %.thread426, %bb.br
  %.sroa.0.3420430 = phi ptr [ %i.dr, %.thread426 ], [ %i.dm, %bb.br ], [ %i.dm, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.by unwind label %.thread431

bb.bw:                                            ; preds = %bb.br
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.dh)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313" unwind label %.thread405, !inline_history !5

bb.bx:                                            ; preds = %bb.az, %.thread395
  %.sroa.0145.2 = phi i1 [ true, %.thread395 ], [ false, %bb.az ]
  %.sroa.0126.3 = phi i8 [ %.sroa.0126.0400, %.thread395 ], [ %.sroa.0126.2, %bb.az ] ; 3 uses
  %.pn241.pn = phi { ptr, i32 } [ %.pn241401, %.thread395 ], [ %lpad.thr_comm.split-lp404, %bb.az ] ; 2 uses
  %i.dy = icmp ne i64 %i.cs, 21
  %i.dz = trunc nuw i8 %.sroa.0126.3 to i1
  %or.cond11 = select i1 %i.dy, i1 %i.dz, i1 false
  %i.ea = icmp samesign ult i64 %i.cs, 18
  %or.cond = select i1 %or.cond11, i1 %i.ea, i1 false
  br i1 %or.cond, label %bb.ce, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit"

.thread431:                                       ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313"
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread"

bb.by:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313", %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319"
  %.sroa.0126.4 = phi i8 [ 1, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319" ], [ 0, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313" ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.da, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319" ], [ %.sroa.0.3420430, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit313" ]
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$17h7503ce2cf45c9716E"(ptr noalias noundef align 8 dereferenceable(8) %i.r)
          to label %bb.ck unwind label %bb.cj

bb.bz:                                            ; preds = %bb.ca, %bb.bj
  %i.ec = icmp samesign ult i64 %i.dj, 18
  br i1 %i.ec, label %bb.cb, label %.thread395

bb.ca:                                            ; preds = %bb.bj
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hf2f317970ea55935E"(ptr noalias noundef align 8 dereferenceable(8) %i.n) #86
          to label %bb.bz unwind label %bb.bv

bb.cb:                                            ; preds = %bb.bz
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.dh)
          to label %.thread395 unwind label %bb.bv, !inline_history !5

bb.cc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 48, i64 noundef 8) #83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ed = trunc nuw i8 %.sroa.0126.2 to i1
  br i1 %i.ed, label %bb.cd, label %.thread492

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17h829df0470735bc27E"(ptr %i.cf)
          to label %.thread492 unwind label %bb.n

.thread395:                                       ; preds = %bb.cb, %.thread436, %bb.bu, %bb.bz, %bb.bt, %.thread405
  %.pn241401 = phi { ptr, i32 } [ %lpad.thr_comm403, %.thread405 ], [ %i.dn, %bb.bz ], [ %eh.lpad-body271, %.thread436 ], [ %i.dv, %bb.bt ], [ %i.dv, %bb.bu ], [ %i.dn, %bb.cb ]
  %.sroa.0126.0400 = phi i8 [ %.sroa.0126.1.ph, %.thread405 ], [ 0, %bb.bz ], [ 0, %.thread436 ], [ 0, %bb.bt ], [ 0, %bb.bu ], [ 0, %bb.cb ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #86
          to label %bb.bx unwind label %bb.bv

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit": ; preds = %bb.ce, %bb.bx
  br i1 %.sroa.0145.2, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread", label %bb.cn

bb.ce:                                            ; preds = %bb.bx
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.m)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit" unwind label %bb.bv

bb.cf:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.da, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ee = load i64, ptr %i.o, align 8, !range !191, !alias.scope !3280, !noundef !152
  %i.ef = icmp samesign ult i64 %i.ee, 18
  br i1 %i.ef, label %bb.cg, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319"

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.o)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319" unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit319": ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.761.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.761.sroa.10)
  br label %bb.by

bb.ci:                                            ; preds = %bb.cn, %bb.cj
  %.sroa.0126.6 = phi i8 [ %.sroa.0126.4, %bb.cj ], [ %.sroa.0126.5443.a, %bb.cn ]
  %.pn246 = phi { ptr, i32 } [ %i.ei, %bb.cj ], [ %.pn244445.a, %bb.cn ] ; 2 uses
  %i.eh = trunc nuw i8 %.sroa.0126.6 to i1
  br i1 %i.eh, label %bb.co, label %.body279

bb.cj:                                            ; preds = %bb.by
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ck:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ej = trunc nuw i8 %.sroa.0126.4 to i1
  br i1 %i.ej, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.cm, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread369

bb.cm:                                            ; preds = %bb.ck
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17h829df0470735bc27E"(ptr %i.cf)
          to label %bb.cl unwind label %bb.n

bb.cn:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread", %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit"
  %.pn244445.a = phi { ptr, i32 } [ %.pn244446, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread" ], [ %.pn241.pn, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit" ]
  %.sroa.0126.5443.a = phi i8 [ %.sroa.0126.5444, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread" ], [ %.sroa.0126.3, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef 48, i64 noundef 8) #83
  br label %bb.ci

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit.thread": ; preds = %.thread431, %.body276, %bb.an, %bb.ai, %bb.ch, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit"
  %.pn244446 = phi { ptr, i32 } [ %.pn241.pn, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit" ], [ %i.eb, %.thread431 ], [ %eh.lpad-body277, %.body276 ], [ %eh.lpad-body277, %bb.an ], [ %i.cm, %bb.ai ], [ %i.eg, %bb.ch ]
  %.sroa.0126.5444 = phi i8 [ %.sroa.0126.3, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17h226f912285f1a7b9E.exit" ], [ 0, %.thread431 ], [ 1, %.body276 ], [ 1, %bb.an ], [ 1, %bb.ai ], [ 1, %bb.ch ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.cd) #86
          to label %bb.cn unwind label %bb.bv

bb.co:                                            ; preds = %bb.ci
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17h829df0470735bc27E"(ptr %i.cf) #86
          to label %.body279 unwind label %bb.bv

bb.cp:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bt, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ab

bb.cq:                                            ; preds = %.thread502, %"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$17hf2f317970ea55935E.exit.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$17h7503ce2cf45c9716E"(ptr noalias noundef align 8 dereferenceable(8) %i.ek)
          to label %.thread364 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.body304.thread
  %.pn253.ph = phi { ptr, i32 } [ %i.el, %bb.cr ], [ %i.bn, %.body304.thread ]
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$$GT$17h3e0f661ff7b6e1c3E"(ptr noalias noundef align 8 dereferenceable(40) %i.ap) #86
          to label %.thread unwind label %bb.bv

.thread364:                                       ; preds = %bb.ab, %bb.r, %bb.o, %bb.cq
  %.sroa.0.1368 = phi ptr [ %.sroa.0.0, %bb.cq ], [ null, %bb.r ], [ %i.ay, %bb.o ], [ %.sroa.0.2, %bb.ab ]
  call fastcc void @"_ZN4core3ptr194drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$$GT$17h3e0f661ff7b6e1c3E"(ptr noalias noundef align 8 dereferenceable(40) %i.ap)
  br label %.thread369

bb.ct:                                            ; preds = %.body279
  br i1 %.sroa.0129.0, label %bb.cv, label %.thread

bb.cu:                                            ; preds = %.body279
  br i1 %.sroa.0129.0, label %.thread458, label %.thread

bb.cv:                                            ; preds = %bb.ct
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$nickel_lang_parser..typ..EnumRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17h62728ed761cdba13E"(ptr %i.aw) #86
          to label %bb.cw unwind label %bb.bv

bb.cw:                                            ; preds = %bb.cv
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$17h7503ce2cf45c9716E"(ptr noalias noundef align 8 dereferenceable(8) %i.em) #86
          to label %.thread458 unwind label %bb.bv

.thread458:                                       ; preds = %bb.cw, %bb.cu
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$$GT$$GT$17h3e0f661ff7b6e1c3E"(ptr noalias noundef align 8 dereferenceable(40) %i.ap) #86
          to label %.thread unwind label %bb.bv

bb.cx:                                            ; preds = %bb.cz, %bb.f
  %i.en = phi i32 [ %.sroa.7.0.copyload, %bb.cz ], [ %.pre475, %bb.f ]
  %.sroa.083.0 = phi i64 [ %i.es, %bb.cz ], [ %.sroa.834.0.copyload, %bb.f ] ; 5 uses
  %i.eo = icmp eq i32 %i.en, 6
  br i1 %i.eo, label %bb.dl, label %bb.dm

bb.cy:                                            ; preds = %bb.g
  %i.ep = icmp eq i64 %i.ag, 1
  %i.eq = load i64, ptr %i.x, align 8, !noundef !152 ; 3 uses
  br i1 %i.ep, label %bb.da, label %bb.dg

bb.cz:                                            ; preds = %bb.g
  store i64 %.sroa.012.0.copyload, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx20, align 8
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx28, align 4
  %.sroa.834.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.834.0.copyload, ptr %.sroa.834.0..sroa_idx37, align 8
  %.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.es = load i64, ptr %i.er, align 8, !noundef !152
  br label %bb.cx

bb.da:                                            ; preds = %bb.cy
  %i.et = icmp eq i64 %.sroa.012.0.copyload, %i.eq
  br i1 %i.et, label %.thread369, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.012.0.copyload, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.eq, ptr %i.ew, align 8
  store i64 30, ptr %i.f, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3281
  %i.ex = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3281 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.dc, label %bb.df, !prof !162

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc320 unwind label %bb.dd

.noexc320:                                        ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f) #86
          to label %.thread unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.df:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ex, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread369

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.012.0.copyload, ptr %i.fb, align 8
  %.sroa.8117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %.sroa.7.0.copyload, ptr %.sroa.8117.0..sroa_idx118, align 8
  %.sroa.10120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %.sroa.8.0.copyload, ptr %.sroa.10120.0..sroa_idx121, align 4
  %.sroa.12.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.834.0.copyload, ptr %.sroa.12.0..sroa_idx123, align 8
  %.sroa.14.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx125, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  store i64 13, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3282)
  %i.fc = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d), !noalias !3282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0332, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !3283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.eq, ptr %i.fe, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0332, i64 88, i1 false)
  %.sroa.8.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.fc, ptr %.sroa.8.0..sroa_idx333, align 8
  %.sroa.10.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 0, ptr %.sroa.10.0..sroa_idx337, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0332)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3284
  %i.ff = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3284 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.dh, label %bb.dk, !prof !162

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc322.a unwind label %bb.di

.noexc322.a:                                      ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #86
          to label %.thread unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ff, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread369

bb.dl:                                            ; preds = %bb.cx
  %i.fj = load i64, ptr %i.g, align 8, !noundef !152 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.fk = load i64, ptr %i.ab, align 8, !alias.scope !3285, !noundef !152 ; 2 uses
  %i.fl = icmp ult i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.dn, label %.invoke

.invoke:                                          ; preds = %bb.dl, %bb.do
  %i.fm = phi i64 [ %.sroa.083.0, %bb.do ], [ %i.fj, %bb.dl ]
  %i.fn = phi i64 [ %i.fv, %bb.do ], [ %i.fk, %bb.dl ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fm, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1449) #82
          to label %.cont unwind label %.body259.thread464

.cont:                                            ; preds = %.invoke
  unreachable

bb.dm:                                            ; preds = %bb.dp, %bb.cx
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !152, !align !156, !noundef !152
  %i.fq = invoke noundef align 8 ptr @"_ZN113_$LT$nickel_lang_core..typecheck..UnifEnumRows$u20$as$u20$nickel_lang_core..typecheck..unif..PropagateConstrs$GT$17propagate_constrs17ha3995fa4f1028980E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fp, i64 noundef %.sroa.083.0)
          to label %bb.dw unwind label %.body259.thread464 ; 2 uses

.body259.thread464:                               ; preds = %.invoke, %bb.dm, %bb.dn
  %lpad.thr_comm462 = landingpad { ptr, i32 }
          cleanup
  br label %.body259.thread

bb.dn:                                            ; preds = %bb.dl
  %i.fr = load ptr, ptr %i.aa, align 8, !alias.scope !3285, !nonnull !152, !noundef !152
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.fr, i64 %i.fj
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load i16, ptr %i.ft, align 8, !range !179, !noalias !3285, !noundef !152 ; 2 uses
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable19force_erows_updates17h18e4411ef5ade98aE(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.z, i16 noundef %i.fu)
          to label %bb.do unwind label %.body259.thread464

bb.do:                                            ; preds = %bb.dn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %i.fv = load i64, ptr %i.ab, align 8, !alias.scope !3286, !noundef !152 ; 2 uses
  %i.fw = icmp ult i64 %.sroa.083.0, %i.fv
  br i1 %i.fw, label %bb.dp, label %.invoke

bb.dp:                                            ; preds = %bb.do
  %i.fx = load ptr, ptr %i.aa, align 8, !alias.scope !3286, !nonnull !152, !noundef !152
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fx, i64 %.sroa.083.0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.ga = load i16, ptr %i.fz, align 8, !range !179, !noalias !3286, !noundef !152
  %i.gb = icmp ult i16 %i.ga, %i.fu
  br i1 %i.gb, label %bb.dq, label %bb.dm

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fj, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 1, ptr %i.gd, align 8
  store i64 32, ptr %i.h, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3287
  %i.ge = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3287 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.dr, label %bb.du, !prof !162

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc327 unwind label %bb.ds

.noexc327:                                        ; preds = %bb.dr
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h) #86
          to label %.body259.thread unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.du:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ge, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dw, %bb.du
  %.sroa.0.8 = phi ptr [ %i.ge, %bb.du ], [ %i.fq, %bb.dw ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  br label %.thread369

bb.dw:                                            ; preds = %bb.dm
  %.not = icmp eq ptr %i.fq, null
  br i1 %.not, label %bb.dx, label %bb.dv

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN16nickel_lang_core9typecheck4unif9UnifTable12assign_erows17h0c214b80b38fb477E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.z, i64 noundef %.sroa.083.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  br label %.thread369

.thread369:                                       ; preds = %bb.df, %bb.dk, %bb.dx, %bb.ec, %bb.da, %.thread492, %.thread364, %bb.cl, %bb.dv
  %.sroa.0.9 = phi ptr [ %.sroa.0.8, %bb.dv ], [ %.sroa.0.4, %bb.cl ], [ null, %bb.da ], [ %i.gn, %bb.ec ], [ %i.ex, %bb.df ], [ %i.ff, %bb.dk ], [ null, %bb.dx ], [ %.sroa.0.1368, %.thread364 ], [ %i.dg, %.thread492 ]
  ret ptr %.sroa.0.9

.body259.thread:                                  ; preds = %bb.ds, %.body259.thread464
  %eh.lpad-body260461 = phi { ptr, i32 } [ %lpad.thr_comm462, %.body259.thread464 ], [ %i.gg, %bb.ds ]
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #86
          to label %.thread unwind label %bb.bv

bb.dy:                                            ; preds = %bb.g
  %i.gi = icmp eq i64 %i.ag, 1
  tail call void @llvm.assume(i1 %i.gi)
  %.sroa.090.0.copyload = load i64, ptr %i.x, align 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.998.0.copyload = load i32, ptr %.sroa.998.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.090.0.copyload, ptr %i.gj, align 8
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ak, ptr %.sroa.8117.0..sroa_idx, align 8
  %.sroa.10120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %.sroa.998.0.copyload, ptr %.sroa.10120.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false)
  store i64 13, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  %i.gk = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d), !noalias !3288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0332, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 1, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %.sroa.012.0.copyload, ptr %i.gm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0332, i64 88, i1 false)
  %.sroa.8.0..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.gk, ptr %.sroa.8.0..sroa_idx335, align 8
  %.sroa.10.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 0, ptr %.sroa.10.0..sroa_idx339, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0332)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3290
  %i.gn = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3290 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.dz, label %bb.ec, !prof !162

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc329 unwind label %bb.ea

.noexc329:                                        ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dz
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #86
          to label %.thread unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.ec:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gn, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread369

bb.ed:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %i.w) #86
          to label %.thread unwind label %bb.bv

.thread:                                          ; preds = %bb.ea, %bb.di, %bb.dd, %bb.ct, %.body259.thread, %bb.cu, %.thread458, %bb.cs, %bb.ed, %bb.ee
  %.pn255.pn346 = phi { ptr, i32 } [ %i.gr, %bb.ee ], [ %.pn249, %bb.cu ], [ %.pn249, %.thread458 ], [ %lpad.thr_comm.split-lp, %bb.ed ], [ %i.fh, %bb.di ], [ %i.ez, %bb.dd ], [ %.pn253.ph, %bb.cs ], [ %.pn249, %bb.ct ], [ %i.gp, %bb.ea ], [ %eh.lpad-body260461, %.body259.thread ]
  resume { ptr, i32 } %.pn255.pn346

bb.ee:                                            ; preds = %bb.a
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..typecheck..UnifEnumRows$GT$17h2b3491074b13628eE"(ptr noalias noundef align 8 dereferenceable(48) %1) #86
          to label %.thread unwind label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h09f943856653d72fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !3300 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  %i.a = load i64, ptr %0, align 8, !range !155, !alias.scope !3301, !noundef !152
  %.not.i = icmp eq i64 %i.a, 18
  %i.b = load i64, ptr %1, align 8, !range !155, !alias.scope !3302, !noundef !152
  %i.c = icmp eq i64 %i.b, 18                     ; 2 uses
  br i1 %.not.i, label %"_ZN96_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17heacd6603cd630a81E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit", label %.split

.split:                                           ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @"_ZN101_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17hdcbe6ffd8f84e260E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4), !inline_history !3294
  br i1 %i.d, label %bb.c, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit"

"_ZN96_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17heacd6603cd630a81E.exit": ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit"

bb.c:                                             ; preds = %.split, %"_ZN96_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17heacd6603cd630a81E.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !152, !align !156, !noundef !152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !noundef !152 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !152, !align !156, !noundef !152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i64, ptr %i.k, align 8, !noundef !152
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %.preheader.preheader, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit"

.preheader.preheader:                             ; preds = %bb.c
  %exitcond.not16 = icmp eq i64 %i.h, 0
  br i1 %exitcond.not16, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.preheader.preheader
  %.sroa.8.017 = phi i64 [ %i.q, %.lr.ph ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %.sroa.8.017
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %.sroa.8.017
  %i.p = tail call noundef zeroext i1 @"_ZN101_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17hdcbe6ffd8f84e260E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4), !noalias !3303, !inline_history !3299 ; 2 uses
  %.not = xor i1 %i.p, true
  %i.q = add i64 %.sroa.8.017, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  %or.cond = or i1 %.not, %exitcond.not
  br i1 %or.cond, label %"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit", label %.lr.ph

"_ZN78_$LT$$u5b$T$u5d$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h6034ef7aab7bbc62E.exit": ; preds = %.lr.ph, %.preheader.preheader, %bb.b, %bb.c, %.split, %"_ZN96_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17heacd6603cd630a81E.exit"
  %.sroa.0.0 = phi i1 [ false, %.split ], [ false, %"_ZN96_$LT$core..option..Option$LT$T$GT$$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17heacd6603cd630a81E.exit" ], [ false, %bb.c ], [ false, %bb.b ], [ true, %.preheader.preheader ], [ %i.p, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 !guid !3370 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !163, !noundef !152 ; 5 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -3
  %i.d = icmp samesign ugt i64 %i.a, 2
  %i.e = select i1 %i.d, i64 %i.c, i64 9          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !163, !noundef !152 ; 4 uses
  %i.g = icmp ne i64 %i.f, 12
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 9
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit" [
    i64 6, label %bb.c
    i64 7, label %bb.l
    i64 8, label %bb.s
    i64 9, label %bb.t
    i64 10, label %bb.v
    i64 11, label %bb.ae
    i64 12, label %bb.ak
    i64 13, label %bb.ar
    i64 14, label %bb.ba
  ]

"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit": ; preds = %bb.ao, %bb.aq, %bb.ap, %bb.an, %bb.al, %bb.ak, %bb.p, %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.ar, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %.split29, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %.split25, %.split, %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit13", %bb.t, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit", %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit", %bb.b, %bb.a, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit13.thread27", %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread", %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit.thread20", %bb.ba, %bb.s
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit13" ], [ %i.cr, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit.thread20" ], [ true, %bb.b ], [ %i.cw, %bb.s ], [ %i.dl, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread" ], [ false, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit" ], [ false, %bb.p ], [ false, %.split25 ], [ %i.hp, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit13.thread27" ], [ false, %bb.t ], [ false, %.split29 ], [ %i.ji, %bb.ba ], [ false, %bb.aq ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.q ], [ false, %bb.l ], [ false, %bb.ay ], [ false, %bb.ax ], [ false, %bb.au ], [ false, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit" ], [ false, %bb.c ], [ %i.aj, %bb.h ], [ true, %bb.e ], [ false, %bb.d ], [ %i.ay, %bb.k ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.av ], [ false, %.split ], [ true, %bb.w ], [ false, %bb.v ], [ %i.er, %bb.ad ], [ false, %bb.o ], [ false, %bb.m ], [ %i.em, %bb.ac ], [ false, %bb.aa ], [ false, %bb.y ], [ false, %bb.ab ], [ false, %bb.ae ], [ %i.fr, %bb.ai ], [ true, %bb.af ], [ %i.fw, %bb.aj ], [ false, %bb.ak ], [ false, %bb.r ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %bb.ar ], [ %i.io, %bb.aw ], [ true, %bb.at ], [ false, %bb.as ], [ %i.jd, %bb.az ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3372)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !3371, !nonnull !152, !align !156, !noundef !152 ; 8 uses
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !3372, !nonnull !152, !align !156, !noundef !152 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @"_ZN70_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..cmp..PartialEq$GT$2eq17h0b347182efa7a9f9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !3375, !inline_history !3310
  br i1 %i.r, label %bb.d, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3376), !noalias !3375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3377), !noalias !3375
  %i.s = load i32, ptr %i.n, align 8, !range !193, !alias.scope !3378, !noalias !3375, !noundef !152 ; 2 uses
  %i.t = load i32, ptr %i.o, align 8, !range !193, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.e:                                             ; preds = %bb.d
  switch i32 %i.s, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"
  ]

default.unreachable:                              ; preds = %bb.at, %bb.am, %bb.n, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.i:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !3378, !noalias !3375, !noundef !152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !3379, !noalias !3375, !noundef !152
  %i.ay = icmp eq i32 %i.av, %i.ax
  br label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.l:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3381)
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !3380, !nonnull !152, !align !156, !noundef !152 ; 8 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !3381, !nonnull !152, !align !156, !noundef !152 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3383)
  %i.bd = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1e2785f43ec06b69E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bc), !noalias !3384, !inline_history !10
  br i1 %i.bd, label %bb.m, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3385), !noalias !3384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3386), !noalias !3384
  %i.bg = load i32, ptr %i.be, align 8, !range !193, !alias.scope !3387, !noalias !3384, !noundef !152 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 8, !range !193, !alias.scope !3388, !noalias !3384, !noundef !152
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %"_ZN69_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1916285ad2696db6E.exit"

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@"_ZN104_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$nickel_lang_core..typecheck..unif..Unify$GT$5unify17hb5adc2bbaa8aea40E":bb.a
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a) #86
          to label %.body239.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.ay:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dg, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.bb unwind label %bb.ba

bb.az:                                            ; preds = %bb.as
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dk = trunc nuw i8 %.sroa.0110.1 to i1
  %or.cond = and i1 %i.db, %i.dk
  br i1 %or.cond, label %bb.bg, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread"

bb.ba:                                            ; preds = %bb.ay
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.thread330

bb.bb:                                            ; preds = %bb.ay, %bb.bi
  %.sroa.0110.4 = phi i8 [ 1, %bb.bi ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.cy, %bb.bi ], [ %i.dg, %bb.ay ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.o)
          to label %bb.bl unwind label %bb.bk

bb.bc:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 48, i64 noundef 8) #83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dm = trunc nuw i8 %.sroa.0110.1 to i1
  br i1 %i.dm, label %bb.bd, label %.thread417

bb.bd:                                            ; preds = %bb.bc
  %i.dn = load i64, ptr %i.ch, align 8, !range !165, !alias.scope !3939, !noundef !152
  %i.do = icmp samesign ult i64 %i.dn, 18
  br i1 %i.do, label %bb.be, label %.thread417

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ch)
          to label %.thread417 unwind label %bb.bo, !inline_history !5

bb.bf:                                            ; preds = %bb.bq, %bb.bh, %bb.ca, %bb.dm, %bb.dl, %.body225.thread, %bb.ce, %.body269.thread, %.thread377, %bb.cb, %.thread330, %.body239.thread
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

.body239.thread:                                  ; preds = %bb.aw, %.body239.thread363
  %eh.lpad-body240362 = phi { ptr, i32 } [ %i.de, %.body239.thread363 ], [ %i.dh, %bb.aw ]
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #86
          to label %.thread330 unwind label %bb.bf

bb.bg:                                            ; preds = %bb.az
  %i.dq = icmp samesign ult i64 %i.cq, 18
  br i1 %i.dq, label %bb.bh, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread"

bb.bh:                                            ; preds = %bb.bg
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.l)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread" unwind label %bb.bf, !inline_history !5

bb.bi:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cy, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.sroa.10)
  br label %bb.bb

bb.bj:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread", %bb.bk
  %.sroa.0110.5 = phi i8 [ %.sroa.0110.4, %bb.bk ], [ %.sroa.0110.0334.a, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread" ]
  %.pn212 = phi { ptr, i32 } [ %i.ds, %bb.bk ], [ %.pn210336.a, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread" ] ; 3 uses
  %i.dr = trunc nuw i8 %.sroa.0110.5 to i1
  br i1 %i.dr, label %bb.bp, label %.body236.sink.split

bb.bk:                                            ; preds = %bb.bb
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dt = trunc nuw i8 %.sroa.0110.4 to i1
  br i1 %i.dt, label %bb.bm, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277"

bb.bm:                                            ; preds = %bb.bl
  %i.du = load i64, ptr %i.ch, align 8, !range !165, !alias.scope !3940, !noundef !152
  %i.dv = icmp samesign ult i64 %i.du, 18
  br i1 %i.dv, label %bb.bn, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277"

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ch)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277" unwind label %bb.bo, !inline_history !5

bb.bo:                                            ; preds = %bb.be, %bb.bn
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body236.sink.split

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277": ; preds = %bb.bm, %bb.bn, %bb.bl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 96, i64 noundef 8) #83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.thread327

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread": ; preds = %bb.bg, %bb.bh, %bb.az, %.thread330
  %.pn210336.a = phi { ptr, i32 } [ %.pn210337, %.thread330 ], [ %i.dj, %bb.az ], [ %i.dj, %bb.bh ], [ %i.dj, %bb.bg ]
  %.sroa.0110.0334.a = phi i8 [ %.sroa.0110.0335, %.thread330 ], [ %.sroa.0110.1, %bb.az ], [ 1, %bb.bh ], [ 1, %bb.bg ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 48, i64 noundef 8) #83
  br label %bb.bj

.thread330:                                       ; preds = %bb.ba, %.body239.thread, %bb.ap, %bb.ai
  %.pn210337 = phi { ptr, i32 } [ %i.cz, %bb.ap ], [ %i.cp, %bb.ai ], [ %i.dl, %bb.ba ], [ %eh.lpad-body240362, %.body239.thread ]
  %.sroa.0110.0335 = phi i8 [ 1, %bb.ap ], [ 1, %bb.ai ], [ 0, %bb.ba ], [ 0, %.body239.thread ]
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.ce) #86
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit275.thread" unwind label %bb.bf

bb.bp:                                            ; preds = %bb.bj
  %i.dx = load i64, ptr %i.ch, align 8, !range !165, !alias.scope !3941, !noundef !152
  %i.dy = icmp samesign ult i64 %i.dx, 18
  br i1 %i.dy, label %bb.bq, label %.body236.sink.split

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ch)
          to label %.body236.sink.split unwind label %bb.bf, !inline_history !5

bb.br:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cm, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ad

bb.bs:                                            ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.br, ptr noundef nonnull align 8 dereferenceable(112) %i.w, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ad

bb.bt:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 24, ptr %i.v, align 8
  %i.dz = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 112, i64 noundef 8)
          to label %bb.bw unwind label %bb.bu, !noalias !3942 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.v) #86
          to label %.body236 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dz, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ad

bb.bx:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bz, ptr noundef nonnull align 8 dereferenceable(112) %i.r, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ad

bb.by:                                            ; preds = %.body236
  br i1 %.sroa.0113.0, label %bb.ca, label %.thread

bb.bz:                                            ; preds = %.body236
  br i1 %.sroa.0113.0, label %.thread377, label %.thread

bb.ca:                                            ; preds = %bb.by
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE"(ptr nonnull %i.ax) #86
          to label %bb.cb unwind label %bb.bf

bb.cb:                                            ; preds = %bb.ca
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.ec) #86
          to label %.thread377 unwind label %bb.bf

.thread377:                                       ; preds = %bb.cb, %bb.bz
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$$GT$17he0d9b2b312d5c72dE"(ptr noalias noundef align 8 dereferenceable(40) %i.aq) #86
          to label %.thread unwind label %bb.bf

bb.cc:                                            ; preds = %bb.o, %.thread427
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef 96, i64 noundef 8) #83, !noalias !3932, !inline_history !197
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.ed)
          to label %.thread322 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.body269.thread
  %.pn219.ph = phi { ptr, i32 } [ %i.ee, %bb.cd ], [ %i.bm, %.body269.thread ]
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$$GT$17he0d9b2b312d5c72dE"(ptr noalias noundef align 8 dereferenceable(40) %i.aq) #86
          to label %.thread unwind label %bb.bf

.thread322:                                       ; preds = %bb.ad, %bb.n, %bb.cc
  %.sroa.0.1326 = phi ptr [ %.sroa.0.0, %bb.cc ], [ %i.az, %bb.n ], [ %.sroa.0.2, %bb.ad ]
  call fastcc void @"_ZN4core3ptr198drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$$GT$17he0d9b2b312d5c72dE"(ptr noalias noundef align 8 dereferenceable(40) %i.aq)
  br label %.thread327

bb.cf:                                            ; preds = %bb.ch, %bb.f
  %i.ef = phi i32 [ %.sroa.7.0.copyload, %bb.ch ], [ %.pre402, %bb.f ]
  %.sroa.067.0 = phi i64 [ %i.ek, %bb.ch ], [ %.sroa.824.0.copyload, %bb.f ] ; 5 uses
  %i.eg = icmp eq i32 %i.ef, 7
  br i1 %i.eg, label %bb.ct, label %bb.cu

bb.cg:                                            ; preds = %bb.g
  %i.eh = icmp eq i64 %i.ah, 1
  %i.ei = load i64, ptr %i.y, align 8, !noundef !152 ; 3 uses
  br i1 %i.eh, label %bb.ci, label %bb.co

bb.ch:                                            ; preds = %bb.g
  store i64 %.sroa.02.0.copyload, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx10, align 8
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx18, align 4
  %.sroa.824.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.824.0.copyload, ptr %.sroa.824.0..sroa_idx27, align 8
  %.sroa.9.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !152
  br label %bb.cf

bb.ci:                                            ; preds = %bb.cg
  %i.el = icmp eq i64 %.sroa.02.0.copyload, %i.ei
  br i1 %i.el, label %.thread327, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 2, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ei, ptr %i.eo, align 8
  store i64 30, ptr %i.f, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3943
  %i.ep = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3943 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ck, label %bb.cn, !prof !162

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc280 unwind label %bb.cl

.noexc280:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f) #86
          to label %.thread unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ep, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread327

bb.co:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.et, align 8
  %.sroa.8101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %.sroa.7.0.copyload, ptr %.sroa.8101.0..sroa_idx102, align 8
  %.sroa.10104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %.sroa.8.0.copyload, ptr %.sroa.10104.0..sroa_idx105, align 4
  %.sroa.12.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.824.0.copyload, ptr %.sroa.12.0..sroa_idx107, align 8
  %.sroa.14.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx109, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  store i64 14, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  %i.eu = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d), !noalias !3944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !3945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 2, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.ei, ptr %i.ew, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.8.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.eu, ptr %.sroa.8.0..sroa_idx291, align 8
  %.sroa.10.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 0, ptr %.sroa.10.0..sroa_idx295, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3946
  %i.ex = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3946 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.cp, label %bb.cs, !prof !162

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc282.a unwind label %bb.cq

.noexc282.a:                                      ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #86
          to label %.thread unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.cs:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ex, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread327

bb.ct:                                            ; preds = %bb.cf
  %i.fb = load i64, ptr %i.g, align 8, !noundef !152 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3947)
  %i.fc = load i64, ptr %i.ac, align 8, !alias.scope !3947, !noundef !152 ; 2 uses
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.cv, label %.invoke

.invoke:                                          ; preds = %bb.ct, %bb.cw
  %i.fe = phi i64 [ %.sroa.067.0, %bb.cw ], [ %i.fb, %bb.ct ]
  %i.ff = phi i64 [ %i.fn, %bb.cw ], [ %i.fc, %bb.ct ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fe, i64 noundef %i.ff, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1450) #82
          to label %.cont unwind label %.body225.thread395

.cont:                                            ; preds = %.invoke
  unreachable

bb.cu:                                            ; preds = %bb.cx, %bb.cf
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !nonnull !152, !align !156, !noundef !152
  %i.fi = invoke noundef align 8 ptr @"_ZN115_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$nickel_lang_core..typecheck..unif..PropagateConstrs$GT$17propagate_constrs17h377d0007291014e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fh, i64 noundef %.sroa.067.0)
          to label %bb.de unwind label %.body225.thread395 ; 2 uses

.body225.thread395:                               ; preds = %.invoke, %bb.cu, %bb.cv
  %lpad.thr_comm393 = landingpad { ptr, i32 }
          cleanup
  br label %.body225.thread

bb.cv:                                            ; preds = %bb.ct
  %i.fj = load ptr, ptr %i.ab, align 8, !alias.scope !3947, !nonnull !152, !noundef !152
  %i.fk = getelementptr inbounds nuw [56 x i8], ptr %i.fj, i64 %i.fb
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load i16, ptr %i.fl, align 8, !range !179, !noalias !3947, !noundef !152 ; 2 uses
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable19force_rrows_updates17h596b19263dede59cE(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aa, i16 noundef %i.fm)
          to label %bb.cw unwind label %.body225.thread395

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  %i.fn = load i64, ptr %i.ac, align 8, !alias.scope !3948, !noundef !152 ; 2 uses
  %i.fo = icmp ult i64 %.sroa.067.0, %i.fn
  br i1 %i.fo, label %bb.cx, label %.invoke

bb.cx:                                            ; preds = %bb.cw
  %i.fp = load ptr, ptr %i.ab, align 8, !alias.scope !3948, !nonnull !152, !noundef !152
  %i.fq = getelementptr inbounds nuw [56 x i8], ptr %i.fp, i64 %.sroa.067.0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load i16, ptr %i.fr, align 8, !range !179, !noalias !3948, !noundef !152
  %i.ft = icmp ult i16 %i.fs, %i.fm
  br i1 %i.ft, label %bb.cy, label %bb.cu

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.fb, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 2, ptr %i.fv, align 8
  store i64 32, ptr %i.h, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3949
  %i.fw = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3949 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.cz, label %bb.dc, !prof !162

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc287 unwind label %bb.da

.noexc287:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h) #86
          to label %.body225.thread unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.dc:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fw, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.de, %bb.dc
  %.sroa.0.7 = phi ptr [ %i.fw, %bb.dc ], [ %i.fi, %bb.de ]
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  br label %.thread327

bb.de:                                            ; preds = %bb.cu
  %.not = icmp eq ptr %i.fi, null
  br i1 %.not, label %bb.df, label %bb.dd

bb.df:                                            ; preds = %bb.de
  call void @_ZN16nickel_lang_core9typecheck4unif9UnifTable12assign_rrows17h0fdf08fac1f9a53aE(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aa, i64 noundef %.sroa.067.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  br label %.thread327

.thread327:                                       ; preds = %bb.cn, %bb.cs, %bb.df, %bb.dk, %bb.ci, %.thread417, %.thread322, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277", %bb.dd
  %.sroa.0.8 = phi ptr [ %.sroa.0.7, %bb.dd ], [ %.sroa.0.3, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit277" ], [ null, %bb.ci ], [ %i.gf, %bb.dk ], [ %i.ep, %bb.cn ], [ %i.ex, %bb.cs ], [ null, %bb.df ], [ %.sroa.0.1326, %.thread322 ], [ %i.dc, %.thread417 ]
  ret ptr %.sroa.0.8

.body225.thread:                                  ; preds = %bb.da, %.body225.thread395
  %eh.lpad-body226392 = phi { ptr, i32 } [ %lpad.thr_comm393, %.body225.thread395 ], [ %i.fy, %bb.da ]
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #86
          to label %.thread unwind label %bb.bf

bb.dg:                                            ; preds = %bb.g
  %i.ga = icmp eq i64 %i.ah, 1
  tail call void @llvm.assume(i1 %i.ga)
  %.sroa.074.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.982.0.copyload = load i32, ptr %.sroa.982.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.074.0.copyload, ptr %i.gb, align 8
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.al, ptr %.sroa.8101.0..sroa_idx, align 8
  %.sroa.10104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %.sroa.982.0.copyload, ptr %.sroa.10104.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false)
  store i64 14, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  %i.gc = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d), !noalias !3950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !alias.scope !3951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 2, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %.sroa.02.0.copyload, ptr %i.ge, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.8.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.gc, ptr %.sroa.8.0..sroa_idx293, align 8
  %.sroa.10.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 0, ptr %.sroa.10.0..sroa_idx297, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !3952
  %i.gf = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !3952 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.dh, label %bb.dk, !prof !162

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc289 unwind label %bb.di

.noexc289:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dh
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #86
          to label %.thread unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gf, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread327

bb.dl:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.x) #86
          to label %.thread unwind label %bb.bf

.thread:                                          ; preds = %bb.di, %bb.cq, %bb.cl, %bb.by, %.body225.thread, %bb.bz, %.thread377, %bb.ce, %bb.dl, %bb.dm
  %.pn221.pn304 = phi { ptr, i32 } [ %i.gj, %bb.dm ], [ %.pn215, %bb.bz ], [ %.pn215, %.thread377 ], [ %lpad.thr_comm.split-lp, %bb.dl ], [ %i.ez, %bb.cq ], [ %i.er, %bb.cl ], [ %.pn219.ph, %bb.ce ], [ %.pn215, %bb.by ], [ %i.gh, %bb.di ], [ %eh.lpad-body226392, %.body225.thread ]
  resume { ptr, i32 } %.pn221.pn304

bb.dm:                                            ; preds = %bb.a
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %1) #86
          to label %.thread unwind label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN104_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h5d1c9f6339944d4eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !3974 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  %i.g = alloca [104 x i8], align 8               ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [96 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 4 uses
  %i.m = alloca [96 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [96 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [96 x i8], align 8                ; 4 uses
  %i.r = alloca [96 x i8], align 8                ; 6 uses
  %i.s = alloca [96 x i8], align 8                ; 5 uses
  %i.t = alloca [96 x i8], align 8                ; 4 uses
  %i.u = alloca [96 x i8], align 8                ; 5 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 6 uses
  %i.x = alloca [96 x i8], align 8                ; 8 uses
  %i.y = alloca [96 x i8], align 8                ; 8 uses
  %i.z = load i64, ptr %0, align 8, !range !165, !noundef !152 ; 2 uses
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 17) ; 2 uses
  %i.ab = load i64, ptr %1, align 8, !range !165, !noundef !152 ; 2 uses
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 17)
  %.not127 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not127, label %.lr.ph, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.ad = phi i64 [ %i.ck, %tailrecurse.backedge ], [ %i.ab, %bb.a ] ; 29 uses
  %i.ae = phi i64 [ %i.cj, %tailrecurse.backedge ], [ %i.aa, %bb.a ]
  %i.af = phi i64 [ %i.ci, %tailrecurse.backedge ], [ %i.z, %bb.a ] ; 4 uses
  %.tr70129 = phi ptr [ %.tr70.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 13 uses
  %.tr128 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 13 uses
  switch i64 %i.ae, label %default.unreachable190 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable190:                           ; preds = %.lr.ph, %bb.v
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.ag = icmp ne i64 %i.af, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add nsw i64 %i.af, -3
  %i.ai = icmp samesign ugt i64 %i.af, 2
  %i.aj = select i1 %i.ai, i64 %i.ah, i64 9
  switch i64 %i.aj, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57" [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !152
  %i.am = getelementptr inbounds nuw i8, ptr %.tr70129, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !152
  %i.ao = icmp eq i64 %i.al, %i.an
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.d:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !152
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr70129, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !152
  %i.at = icmp eq i64 %i.aq, %i.as
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.e:                                             ; preds = %bb.b
  %i.au = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp eq i64 %i.ad, 3
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.f:                                             ; preds = %bb.b
  %i.aw = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.ad, 4
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.g:                                             ; preds = %bb.b
  %i.ay = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.ad, 5
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.h:                                             ; preds = %bb.b
  %i.ba = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.ad, 6
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.i:                                             ; preds = %bb.b
  %i.bc = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.ad, 7
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.j:                                             ; preds = %bb.b
  %i.be = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.ad, 9
  br i1 %i.bf, label %bb.r, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.k:                                             ; preds = %bb.b
  %i.bg = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp eq i64 %i.ad, 10
  br i1 %i.bh, label %bb.s, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.l:                                             ; preds = %bb.b
  %i.bi = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ult i64 %i.ad, 3
  br i1 %i.bj, label %bb.t, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.m:                                             ; preds = %bb.b
  %i.bk = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.ad, 13
  br i1 %i.bl, label %bb.bj, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.n:                                             ; preds = %bb.b
  %i.bm = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i64 %i.ad, 14
  br i1 %i.bn, label %bb.bk, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.o:                                             ; preds = %bb.b
  %i.bo = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp eq i64 %i.ad, 15
  br i1 %i.bp, label %bb.bl, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.p:                                             ; preds = %bb.b
  %i.bq = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.ad, 16
  br i1 %i.br, label %tailrecurse.backedge, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.q:                                             ; preds = %bb.b
  %i.bs = icmp ne i64 %i.ad, 12
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i64 %i.ad, 17
  br i1 %i.bt, label %bb.bm, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57": ; preds = %tailrecurse.backedge, %bb.p, %bb.o, %bb.k, %bb.b, %bb.s, %bb.bl, %bb.a, %bb.t, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit", %bb.j, %bb.l, %bb.m, %bb.n, %bb.q, %bb.bm, %bb.bk, %bb.bj, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit42", %bb.r, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.at, %bb.d ], [ false, %bb.q ], [ %i.av, %bb.e ], [ %i.ax, %bb.f ], [ %i.az, %bb.g ], [ %i.bb, %bb.h ], [ %i.bd, %bb.i ], [ %i.ca, %bb.r ], [ false, %bb.t ], [ false, %bb.m ], [ false, %bb.l ], [ %i.di, %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit42" ], [ %i.el, %bb.bj ], [ %i.eo, %bb.bk ], [ false, %bb.n ], [ false, %bb.j ], [ %i.ey, %bb.bm ], [ %i.ao, %bb.c ], [ false, %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit" ], [ false, %bb.a ], [ false, %bb.bl ], [ false, %bb.s ], [ false, %bb.b ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.p ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0.shrunk

bb.r:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr128, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr70129, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr70129, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3976)
  %i.by = load ptr, ptr %i.bu, align 8, !alias.scope !3975, !nonnull !152, !align !156, !noundef !152
  %i.bz = load ptr, ptr %i.bw, align 8, !alias.scope !3976, !nonnull !152, !align !156, !noundef !152
  %i.ca = tail call noundef zeroext i1 @"_ZN95_$LT$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h48b3f3aca25f09f1E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx), !noalias !3977, !inline_history !13
  br label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

bb.s:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !152, !align !156, !noundef !152
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr70129, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !152, !align !156, !noundef !152
  %i.cf = tail call noundef zeroext i1 @"_ZN104_$LT$nickel_lang_core..typecheck..UnifType$u20$as$u20$nickel_lang_core..typecheck..eq..TypeEqBounded$GT$15type_eq_bounded17h5d1c9f6339944d4eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
  br i1 %i.cf, label %tailrecurse.backedge, label %"_ZN73_$LT$nickel_lang_parser..typ..VarKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17h296424b269f73d0aE.exit.thread57"

tailrecurse.backedge:                             ; preds = %bb.s, %bb.p, %bb.bl
end_hunk_1
begin_hunk_2_@"_ZN114_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$nickel_lang_core..typecheck..subtyping..SubsumedBy$GT$11subsumed_by17h05659d17e5ef8f91E":bb.a
bb.ay:                                            ; preds = %bb.as
  %i.di = load i64, ptr %i.bu, align 8, !range !165, !alias.scope !17696, !noundef !152
  %i.dj = icmp samesign ult i64 %i.di, 18
  br i1 %i.dj, label %bb.az, label %.thread383

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.bu)
          to label %.thread383 unwind label %bb.al, !inline_history !5

bb.ba:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bj, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread369

.thread369:                                       ; preds = %bb.bb, %bb.bk, %bb.bs, %bb.br, %bb.bt, %bb.bu, %bb.ba
  %.sroa.0.3 = phi ptr [ %i.bj, %bb.ba ], [ null, %bb.bb ], [ null, %bb.bk ], [ %i.ds, %bb.bs ], [ %i.dm, %bb.br ], [ %i.dw, %bb.bt ], [ %i.ea, %bb.bu ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$$GT$17he0d9b2b312d5c72dE"(ptr noalias noundef align 8 dereferenceable(40) %i.x)
          to label %bb.bz unwind label %bb.ca

bb.bb:                                            ; preds = %bb.i
  switch i32 %narrow, label %bb.d [
    i32 0, label %.thread369
    i32 1, label %bb.bo
    i32 3, label %bb.bl
  ]

bb.bc:                                            ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dl, ptr noundef nonnull align 8 dereferenceable(20) %i.dk, i64 20, i1 false)
  store i64 20, ptr %i.k, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17697
  %i.dm = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !17697 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.bd, label %bb.br, !prof !162

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc279.a unwind label %bb.be

.noexc279.a:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.k) #86
          to label %bb.bw unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bg:                                            ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dr, ptr noundef nonnull align 4 dereferenceable(20) %i.dq, i64 20, i1 false)
  store i64 31, ptr %i.m, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17698
  %i.ds = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !17698 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.bh, label %bb.bs, !prof !162

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc281 unwind label %bb.bi

.noexc281:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.m) #86
          to label %bb.bw unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bk:                                            ; preds = %bb.i
  switch i32 %narrow, label %bb.d [
    i32 0, label %bb.bl
    i32 1, label %bb.bo
    i32 3, label %.thread369
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 24, ptr %i.l, align 8
  %i.dw = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 112, i64 noundef 8)
          to label %bb.bt unwind label %bb.bm, !noalias !17699 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l) #86
          to label %bb.bw unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.bo:                                            ; preds = %bb.bb, %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dz, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false)
  store i64 23, ptr %i.j, align 8
  %i.ea = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 112, i64 noundef 8)
          to label %bb.bu unwind label %bb.bp, !noalias !17700 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.j) #86
          to label %bb.bw unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.br:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dm, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.thread369

bb.bs:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ds, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread369

bb.bt:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dw, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.thread369

bb.bu:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ea, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.thread369

bb.bv:                                            ; preds = %bb.bw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ee = load i32, ptr %i.ed, align 8, !range !169, !noundef !152 ; 2 uses
  %i.ef = icmp ne i32 %i.ee, 4
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ult i32 %i.ee, 3
  br i1 %i.eg, label %bb.bx, label %.thread431

.thread383:                                       ; preds = %bb.as, %bb.az, %bb.ay
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef 96, i64 noundef 8) #83
  %.sroa.30.5377 = extractvalue { ptr, i32 } %.pn214, 1 ; 2 uses
  %.sroa.0198.5378 = extractvalue { ptr, i32 } %.pn214, 0 ; 2 uses
  br i1 %.sroa.0132.9, label %.thread431, label %.thread424

bb.bw:                                            ; preds = %bb.m, %bb.be, %bb.bi, %bb.bm, %bb.bp
  %eh.lpad-body238 = phi { ptr, i32 } [ %i.dx, %bb.bm ], [ %i.du, %bb.bi ], [ %i.do, %bb.be ], [ %i.bl, %bb.m ], [ %i.eb, %bb.bp ] ; 2 uses
  %.sroa.30.5 = extractvalue { ptr, i32 } %eh.lpad-body238, 1 ; 2 uses
  %.sroa.0198.5 = extractvalue { ptr, i32 } %eh.lpad-body238, 0 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$$GT$17he0d9b2b312d5c72dE"(ptr noalias noundef align 8 dereferenceable(40) %i.x) #86
          to label %bb.bv unwind label %bb.al

bb.bx:                                            ; preds = %bb.bv
  %.val263 = load ptr, ptr %i.aw, align 8, !alias.scope !230, !nonnull !152, !noundef !152
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE"(ptr nonnull %.val263) #86
          to label %bb.by unwind label %bb.al

bb.by:                                            ; preds = %bb.bx
  %i.eh = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.eh) #86
          to label %.thread431 unwind label %bb.al

bb.bz:                                            ; preds = %.thread369
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !range !169, !noundef !152 ; 2 uses
  %i.ek = icmp ne i32 %i.ej, 4
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i32 %i.ej, 2
  br i1 %i.el, label %bb.ce, label %bb.cb

bb.ca:                                            ; preds = %.thread369
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = extractvalue { ptr, i32 } %i.em, 0      ; 2 uses
  %i.eo = extractvalue { ptr, i32 } %i.em, 1      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.eq = load i32, ptr %i.ep, align 8, !range !169, !noundef !152 ; 2 uses
  %i.er = icmp ne i32 %i.eq, 4
  tail call void @llvm.assume(i1 %i.er)
  %4 = icmp samesign ult i32 %i.eq, 3
  br i1 %4, label %bb.cf, label %.thread431

bb.cb:                                            ; preds = %bb.bz
  %.val262 = load ptr, ptr %i.aw, align 8, !alias.scope !230, !nonnull !152, !noundef !152 ; 4 uses
  %i.es = load i64, ptr %.val262, align 8, !range !165, !alias.scope !17701, !noalias !17702, !noundef !152
  %i.et = icmp samesign ult i64 %i.es, 18
  br i1 %i.et, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %.val262)
          to label %bb.cd unwind label %.body283, !noalias !17702, !inline_history !12

.body283:                                         ; preds = %bb.cc
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val262, i64 noundef 96, i64 noundef 8) #83, !noalias !17702, !inline_history !197
  %i.ev = extractvalue { ptr, i32 } %i.eu, 1
  %i.ew = extractvalue { ptr, i32 } %i.eu, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.ex) #86
          to label %.thread431 unwind label %bb.al

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val262, i64 noundef 96, i64 noundef 8) #83, !noalias !17702, !inline_history !197
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.ey)
          to label %.thread410 unwind label %.critedge225.thread314

.thread410:                                       ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread406

bb.ce:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread406

bb.cf:                                            ; preds = %bb.ca
  %.val261 = load ptr, ptr %i.aw, align 8, !alias.scope !230, !nonnull !152, !noundef !152
  invoke fastcc void @"_ZN4core3ptr126drop_in_place$LT$nickel_lang_parser..typ..RecordRowF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$GT$$GT$17haf3319aa1114778eE"(ptr nonnull %.val261) #86
          to label %bb.cg unwind label %bb.al

bb.cg:                                            ; preds = %bb.cf
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h8adef7fd8d4d0833E"(ptr noalias noundef align 8 dereferenceable(8) %i.ez) #86
          to label %.thread431 unwind label %bb.al

bb.ch:                                            ; preds = %bb.cj, %bb.f
  %i.fa = phi i32 [ %.sroa.7.0.copyload, %bb.cj ], [ %.pre445, %bb.f ]
  %.sroa.083.0 = phi i64 [ %i.fe, %bb.cj ], [ %.sroa.824.0.copyload, %bb.f ] ; 5 uses
  %i.fb = icmp eq i32 %i.fa, 7
  br i1 %i.fb, label %bb.cs, label %bb.ct

bb.ci:                                            ; preds = %bb.g
  %i.fc = icmp eq i64 %i.an, 1
  br i1 %i.fc, label %bb.cl, label %bb.cm

bb.cj:                                            ; preds = %bb.g
  store i64 %.sroa.02.0.copyload, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx10, align 8
  %.sroa.8.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx18, align 4
  %.sroa.824.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.824.0.copyload, ptr %.sroa.824.0..sroa_idx27, align 8
  %.sroa.9.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i64 16, i1 false)
  %.sroa.937.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store <2 x i16> %i.ai, ptr %.sroa.937.0..sroa_idx40, align 8
  %.sroa.11.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx52, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !152
  br label %bb.ch

bb.ck:                                            ; preds = %bb.g
  %i.ff = icmp eq i64 %i.an, 1
  tail call void @llvm.assume(i1 %i.ff)
  %.sroa.090.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.795.0.copyload = load i32, ptr %.sroa.795.0..sroa_idx, align 4
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.898.0.copyload = load i64, ptr %.sroa.898.0..sroa_idx, align 8
  %.sroa.9101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9101, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9101.0..sroa_idx, i64 16, i1 false)
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fg = load <2 x i16>, ptr %.sroa.10103.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4
  br label %bb.di

bb.cl:                                            ; preds = %bb.ci
  %i.fh = load i64, ptr %i.c, align 8, !noundef !152 ; 2 uses
  %i.fi = icmp eq i64 %.sroa.02.0.copyload, %i.fh
  br i1 %i.fi, label %.thread406, label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9101, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i64 16, i1 false)
  %i.fj = load i64, ptr %i.c, align 8, !noundef !152
  br label %bb.di

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 2, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.fh, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.02.0.copyload, ptr %i.fm, align 8
  store i64 30, ptr %i.f, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17703
  %i.fn = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !17703 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.co, label %bb.cr, !prof !162

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc285 unwind label %bb.cp

.noexc285:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.co
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f) #86
          to label %.critedge225.thread309 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

.critedge225.thread309:                           ; preds = %bb.cp
  %i.fr = extractvalue { ptr, i32 } %i.fp, 0
  %i.fs = extractvalue { ptr, i32 } %i.fp, 1
  br label %.thread431

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fn, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread406

bb.cs:                                            ; preds = %bb.ch
  %i.ft = load i64, ptr %i.g, align 8, !noundef !152 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17704)
  %i.fu = load i64, ptr %i.ac, align 8, !alias.scope !17704, !noundef !152 ; 2 uses
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.cu, label %.invoke

.invoke:                                          ; preds = %bb.cs, %bb.cv
  %i.fw = phi i64 [ %.sroa.083.0, %bb.cv ], [ %i.ft, %bb.cs ]
  %i.fx = phi i64 [ %i.gh, %bb.cv ], [ %i.fu, %bb.cs ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fw, i64 noundef %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1450) #82
          to label %.cont unwind label %.body229.thread420

.cont:                                            ; preds = %.invoke
  unreachable

bb.ct:                                            ; preds = %bb.cw, %bb.ch
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !152, !align !156, !noundef !152
  %i.ga = invoke noundef align 8 ptr @"_ZN115_$LT$nickel_lang_core..typecheck..UnifRecordRows$u20$as$u20$nickel_lang_core..typecheck..unif..PropagateConstrs$GT$17propagate_constrs17h377d0007291014e2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fz, i64 noundef %.sroa.083.0)
          to label %bb.dd unwind label %.body229.thread420 ; 2 uses

.body229.thread420:                               ; preds = %.invoke, %bb.ct, %bb.cu
  %lpad.thr_comm418 = landingpad { ptr, i32 }
          cleanup
  br label %.body229.thread

.body229:                                         ; preds = %bb.de
  %lpad.thr_comm.split-lp419 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp419, 0
  %i.gc = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp419, 1
  br label %.thread431

bb.cu:                                            ; preds = %bb.cs
  %i.gd = load ptr, ptr %i.ab, align 8, !alias.scope !17704, !nonnull !152, !noundef !152
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.gd, i64 %i.ft
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load i16, ptr %i.gf, align 8, !range !179, !noalias !17704, !noundef !152 ; 2 uses
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable19force_rrows_updates17h596b19263dede59cE(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aa, i16 noundef %i.gg)
          to label %bb.cv unwind label %.body229.thread420

bb.cv:                                            ; preds = %bb.cu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17705)
  %i.gh = load i64, ptr %i.ac, align 8, !alias.scope !17705, !noundef !152 ; 2 uses
  %i.gi = icmp ult i64 %.sroa.083.0, %i.gh
  br i1 %i.gi, label %bb.cw, label %.invoke

bb.cw:                                            ; preds = %bb.cv
  %i.gj = load ptr, ptr %i.ab, align 8, !alias.scope !17705, !nonnull !152, !noundef !152
  %i.gk = getelementptr inbounds nuw [56 x i8], ptr %i.gj, i64 %.sroa.083.0
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = load i16, ptr %i.gl, align 8, !range !179, !noalias !17705, !noundef !152
  %i.gn = icmp ult i16 %i.gm, %i.gg
  br i1 %i.gn, label %bb.cx, label %bb.ct

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ft, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 2, ptr %i.gp, align 8
  store i64 32, ptr %i.h, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17706
  %i.gq = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !17706 ; 3 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.cy, label %bb.db, !prof !162

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc290.a unwind label %bb.cz

.noexc290.a:                                      ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h) #86
          to label %.body229.thread unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

bb.db:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gq, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %bb.db
  %.sroa.0.6 = phi ptr [ %i.gq, %bb.db ], [ %i.ga, %bb.dd ]
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.ax unwind label %.critedge225.thread314

bb.dd:                                            ; preds = %bb.ct
  %.not = icmp eq ptr %i.ga, null
  br i1 %.not, label %bb.de, label %bb.dc

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN16nickel_lang_core9typecheck4unif9UnifTable12assign_rrows17h0fdf08fac1f9a53aE(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aa, i64 noundef %.sroa.083.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %.thread406 unwind label %.body229

bb.df:                                            ; preds = %.thread431
  br i1 %.sroa.0141.0298, label %bb.do, label %.thread424

bb.dg:                                            ; preds = %.thread406, %bb.ax
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  %i.gw = extractvalue { ptr, i32 } %i.gu, 1
  br label %.thread424

bb.dh:                                            ; preds = %.thread413, %.thread406, %bb.ax
  %.sroa.0.7 = phi ptr [ %.sroa.0.5409, %.thread406 ], [ %i.ck, %.thread413 ], [ %.sroa.0.2, %bb.ax ]
  ret ptr %.sroa.0.7

.body229.thread:                                  ; preds = %bb.cz, %.body229.thread420
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm418, %.body229.thread420 ], [ %i.gs, %bb.cz ] ; 2 uses
  %i.gx = extractvalue { ptr, i32 } %.pn, 0
  %i.gy = extractvalue { ptr, i32 } %.pn, 1
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.g) #86
          to label %.thread431 unwind label %bb.al

bb.di:                                            ; preds = %bb.ck, %bb.cm
  %.sroa.0111.0 = phi i64 [ %i.fj, %bb.cm ], [ %.sroa.02.0.copyload, %bb.ck ]
  %.sroa.12.0 = phi i32 [ %.sroa.11.0.copyload, %bb.cm ], [ %.sroa.12.0.copyload, %bb.ck ]
  %.sroa.898.0 = phi i64 [ %.sroa.824.0.copyload, %bb.cm ], [ %.sroa.898.0.copyload, %bb.ck ]
  %.sroa.795.0 = phi i32 [ %.sroa.8.0.copyload, %bb.cm ], [ %.sroa.795.0.copyload, %bb.ck ]
  %.sroa.692.0 = phi i32 [ %.sroa.7.0.copyload, %bb.cm ], [ %i.ar, %bb.ck ]
  %.sroa.090.0 = phi i64 [ %.sroa.02.0.copyload, %bb.cm ], [ %.sroa.090.0.copyload, %bb.ck ]
  %i.gz = phi <2 x i16> [ %i.ai, %bb.cm ], [ %i.fg, %bb.ck ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.090.0, ptr %i.ha, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %.sroa.692.0, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %.sroa.795.0, ptr %.sroa.5114.0..sroa_idx, align 4
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.898.0, ptr %.sroa.6115.0..sroa_idx, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9101, i64 16, i1 false)
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <2 x i16> %i.gz, ptr %.sroa.8117.0..sroa_idx, align 8
  %.sroa.10119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %.sroa.12.0, ptr %.sroa.10119.0..sroa_idx, align 4
  store i64 14, ptr %i.d, align 8
  %i.hb = call noundef i16 @"_ZN340_$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$u20$as$u20$nickel_lang_core..typecheck..VarLevelUpperBound$GT$21var_level_upper_bound17hc1a0ed8fe98c3311E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 2, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %.sroa.0111.0, ptr %i.hd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i16 %i.hb, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 90
  store i16 0, ptr %.sroa.5.0..sroa_idx, align 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17707
  %i.he = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !17707 ; 3 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.dj, label %bb.dm, !prof !162

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #82
          to label %.noexc292 unwind label %bb.dk

.noexc292:                                        ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_core..typecheck..error..RowUnifErrorKind$GT$17h214136c7614465e0E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.e) #86
          to label %.critedge225.thread305 unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

.critedge225.thread305:                           ; preds = %bb.dk
  %i.hi = extractvalue { ptr, i32 } %i.hg, 0
  %i.hj = extractvalue { ptr, i32 } %i.hg, 1
  br label %.thread431

bb.dm:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.he, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread406

.thread406:                                       ; preds = %bb.de, %bb.cl, %bb.dm, %bb.cr, %bb.ce, %.thread410
  %.sroa.0.5409 = phi ptr [ %.sroa.0.3, %.thread410 ], [ %.sroa.0.3, %bb.ce ], [ null, %bb.cl ], [ %i.he, %bb.dm ], [ %i.fn, %bb.cr ], [ null, %bb.de ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %3)
          to label %bb.dh unwind label %bb.dg

bb.dn:                                            ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.hl = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %i.y) #86
          to label %.thread431 unwind label %bb.al

.thread431:                                       ; preds = %.thread383.thread, %.body283, %.body229.thread, %bb.cg, %.body229, %bb.ca, %bb.by, %bb.bv, %.critedge225.thread309, %.critedge225.thread305, %.critedge225.thread314, %bb.dn, %.thread, %.thread383
  %.sroa.30.0300 = phi i32 [ %i.af, %.thread ], [ %.sroa.30.5377, %.thread383 ], [ %i.hl, %bb.dn ], [ %i.fs, %.critedge225.thread309 ], [ %i.hj, %.critedge225.thread305 ], [ %i.ah, %.critedge225.thread314 ], [ %i.ev, %.body283 ], [ %i.gy, %.body229.thread ], [ %i.eo, %bb.cg ], [ %i.gc, %.body229 ], [ %i.eo, %bb.ca ], [ %.sroa.30.5, %bb.by ], [ %.sroa.30.5, %bb.bv ], [ %.sroa.30.5377466, %.thread383.thread ] ; 2 uses
  %.sroa.0198.0299 = phi ptr [ %i.ae, %.thread ], [ %.sroa.0198.5378, %.thread383 ], [ %i.hk, %bb.dn ], [ %i.fr, %.critedge225.thread309 ], [ %i.hi, %.critedge225.thread305 ], [ %i.ag, %.critedge225.thread314 ], [ %i.ew, %.body283 ], [ %i.gx, %.body229.thread ], [ %i.en, %bb.cg ], [ %i.gb, %.body229 ], [ %i.en, %bb.ca ], [ %.sroa.0198.5, %bb.by ], [ %.sroa.0198.5, %bb.bv ], [ %.sroa.0198.5378467, %.thread383.thread ] ; 2 uses
  %.sroa.0141.0298 = phi i1 [ true, %.thread ], [ false, %.thread383 ], [ false, %bb.dn ], [ false, %.critedge225.thread309 ], [ false, %.critedge225.thread305 ], [ false, %.critedge225.thread314 ], [ false, %.body283 ], [ false, %.body229.thread ], [ false, %bb.cg ], [ false, %.body229 ], [ false, %bb.ca ], [ false, %bb.by ], [ false, %bb.bv ], [ false, %.thread383.thread ]
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..typecheck..Context$GT$17h2b50e9aeb08bca24E"(ptr noalias noundef align 8 dereferenceable(40) %3) #86
          to label %bb.df unwind label %bb.al

.thread424:                                       ; preds = %.thread383.thread468, %.thread383, %bb.dg, %bb.do, %bb.df
  %.sroa.30.7429 = phi i32 [ %.sroa.30.0300, %bb.df ], [ %.sroa.30.0300, %bb.do ], [ %.sroa.30.5377, %.thread383 ], [ %i.gw, %bb.dg ], [ %.sroa.30.5377471, %.thread383.thread468 ]
  %.sroa.0198.7428 = phi ptr [ %.sroa.0198.0299, %bb.df ], [ %.sroa.0198.0299, %bb.do ], [ %.sroa.0198.5378, %.thread383 ], [ %i.gv, %bb.dg ], [ %.sroa.0198.5378472, %.thread383.thread468 ]
  %i.hm = insertvalue { ptr, i32 } poison, ptr %.sroa.0198.7428, 0
  %i.hn = insertvalue { ptr, i32 } %i.hm, i32 %.sroa.30.7429, 1
  resume { ptr, i32 } %i.hn

bb.do:                                            ; preds = %bb.df
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17h5eaf304118771440E"(ptr noalias noundef align 8 dereferenceable(48) %1) #86
          to label %.thread424 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN114_$LT$nickel_lang_parser..ast..pattern..OrPattern$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj17h3cd9dd04848da795E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef align 8 dereferenceable(56) %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality !guid !17821 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [136 x i8], align 8               ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [20 x i8], align 4                ; 6 uses
  %i.k = alloca [20 x i8], align 4                ; 5 uses
  %.sroa.2.i = alloca [23 x i8], align 1          ; 4 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [16 x i8], align 4                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [88 x i8], align 8                ; 4 uses
  %i.p = alloca [88 x i8], align 8                ; 4 uses
  %i.q = alloca [96 x i8], align 8                ; 9 uses
  %i.r = alloca [96 x i8], align 8                ; 7 uses
  %i.s = alloca [136 x i8], align 8               ; 5 uses
  %i.t = alloca [272 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [16 x i8], align 4            ; 12 uses
  %.sroa.6184.sroa.0 = alloca [16 x i8], align 8  ; 16 uses
  %i.u = alloca [40 x i8], align 8                ; 11 uses
  %i.v = alloca [96 x i8], align 8                ; 6 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [136 x i8], align 8               ; 4 uses
  %i.y = alloca [272 x i8], align 8               ; 5 uses
  %i.z = alloca [20 x i8], align 4                ; 4 uses
  %i.aa = alloca [16 x i8], align 4               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [24 x i8], align 8               ; 11 uses
  %i.ae = alloca [96 x i8], align 8               ; 12 uses
  %i.af = alloca [88 x i8], align 8               ; 6 uses
  %i.ag = alloca [96 x i8], align 8               ; 8 uses
  %i.ah = alloca [56 x i8], align 8               ; 5 uses
  %i.ai = alloca [88 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 11 uses
  %i.ak = alloca [1 x i8], align 1                ; 3 uses
  %i.al = zext i1 %6 to i8
  store i8 %i.al, ptr %i.ak, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !152, !align !156, !noundef !152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !152 ; 2 uses
  %.idx828 = shl nuw nsw i64 %i.ap, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx828 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17822
  store ptr null, ptr %i.i, align 8, !noalias !17822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17823
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aq, ptr %.sroa.4220.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  store <2 x ptr> %i.as, ptr %.sroa.5221.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.7223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %3, ptr %.sroa.7223.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.8224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %4, ptr %.sroa.8224.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.9225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %5, ptr %.sroa.9225.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.10226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ak, ptr %.sroa.10226.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  %.sroa.11227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.i, ptr %.sroa.11227.0..sroa_idx, align 8, !alias.scope !17824, !noalias !17825
  call void @llvm.experimental.noalias.scope.decl(metadata !17826)
  call void @llvm.experimental.noalias.scope.decl(metadata !17827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17828
  call void @llvm.experimental.noalias.scope.decl(metadata !17829)
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.an, %.lr.ph ], [ %i.av, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64 ; 3 uses
  store ptr %i.av, ptr %i.g, align 8, !alias.scope !17830, !noalias !17831
  invoke fastcc void @"_ZN114_$LT$nickel_lang_parser..ast..pattern..OrPattern$u20$as$u20$nickel_lang_core..typecheck..pattern..PatternTypes$GT$17pattern_types_inj28_$u7b$$u7b$closure$u7d$$u7d$17h2ce1d293154120b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef align 8 dereferenceable(48) %.sroa.5221.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.au)
          to label %.noexc143 unwind label %.loopexit451, !inline_history !17736

.noexc143:                                        ; preds = %bb.b
  %.sroa.0266.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.4267.0.copyload = load ptr, ptr %.sroa.4267.0..sroa_idx, align 8 ; 4 uses
  switch i64 %.sroa.0266.0.copyload, label %bb.j [
    i64 20, label %bb.c
    i64 21, label %bb.e
  ]

bb.c:                                             ; preds = %.noexc143
  %.val.i5.i.i = load ptr, ptr %i.i, align 8, !noalias !17832, !align !156, !noundef !152 ; 4 uses
  %i.aw = icmp eq ptr %.val.i5.i.i, null
  br i1 %i.aw, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread982", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN122_$LT$nickel_lang_core..error..ouroboros_impl_typecheck_error_data..TypecheckErrorData$u20$as$u20$core..ops..drop..Drop$GT$4drop17h03c247e4d666046eE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %.val.i5.i.i)
          to label %"_ZN4core3ptr182drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..ouroboros_impl_typecheck_error_data..TypecheckErrorData$GT$$GT$$GT$17hba404b394c287ed3E.exit.i.i.i.i" unwind label %.body.i.i.i, !noalias !17832, !inline_history !17744

.body.i.i.i:                                      ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i, i64 noundef 272, i64 noundef 8) #83, !noalias !17832, !inline_history !17744
  store ptr %.sroa.4267.0.copyload, ptr %i.i, align 8, !noalias !17832
  br label %.body144

"_ZN4core3ptr182drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..ouroboros_impl_typecheck_error_data..TypecheckErrorData$GT$$GT$$GT$17hba404b394c287ed3E.exit.i.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i5.i.i, i64 noundef 272, i64 noundef 8) #83, !noalias !17832, !inline_history !17744
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread982"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread982": ; preds = %"_ZN4core3ptr182drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..error..ouroboros_impl_typecheck_error_data..TypecheckErrorData$GT$$GT$$GT$17hba404b394c287ed3E.exit.i.i.i.i", %bb.c
  store ptr %.sroa.4267.0.copyload, ptr %i.i, align 8, !noalias !17832
  br label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread"

bb.e:                                             ; preds = %.noexc143
  %i.ay = icmp eq ptr %i.av, %i.aq
  br i1 %i.ay, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread", label %bb.b

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread": ; preds = %bb.e, %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h1789bedb65053205E.exit.i.thread982", %bb.a
  store i64 0, ptr %i.h, align 8, !alias.scope !17826
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8, !alias.scope !17826
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.ba, align 8, !alias.scope !17826
  br label %bb.v

bb.f:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = icmp samesign ult i64 %.sroa.0266.0.copyload, 18
  br i1 %i.bc, label %bb.g, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i"

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h60ccb323601aa168E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %i.e)
          to label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i" unwind label %bb.h, !noalias !17826, !inline_history !5

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17hb24470649e72074dE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.be) #86
          to label %.body151 unwind label %bb.i, !noalias !17826

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h5a3fceb570a6c4a4E.exit.i": ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..typecheck..UnifType$RP$$GT$$GT$17hb24470649e72074dE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bf)
          to label %.body144thread-pre-split unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !17833
  unreachable

bb.j:                                             ; preds = %.noexc143
  %.sroa.7230.sroa.5.0..sroa.7230.0..sroa_idx231.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7230.sroa.5.0..sroa.7230.0..sroa_idx231.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5268.0..sroa_idx, i64 120, i1 false)
  store i64 %.sroa.0266.0.copyload, ptr %i.e, align 8, !noalias !17828
  %.sroa.7230.0..sroa_idx231 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4267.0.copyload, ptr %.sroa.7230.0..sroa_idx231, align 8, !noalias !17828
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !17834, !inline_history !17736
  %i.bh = call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef range(i64 1, 9) 8) #83, !noalias !17834, !inline_history !17736 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i"

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 544, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc.i142 unwind label %bb.f, !noalias !17826, !inline_history !17736

.noexc.i142:                                      ; preds = %bb.k
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i": ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bh, ptr noundef nonnull align 8 dereferenceable(136) %i.e, i64 136, i1 false), !noalias !17826
  store i64 4, ptr %i.f, align 8, !noalias !17828
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
end_hunk_2
