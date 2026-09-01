Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN5milli9documents6reader29DocumentsBatchReader$LT$R$GT$11from_reader17h5269aa46eef7f046E":bb.a
bb.hr:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h9d138603112576d5E.exit.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i30.i.i.i.i.i.i.i.i
  %i.ale = getelementptr inbounds i8, ptr %i.akd, i64 -8 ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 8, !noalias !45066, !nonnull !15, !noundef !15 ; 3 uses
  store ptr %i.agf, ptr %i.ale, align 8, !noalias !45066
  call void @llvm.experimental.noalias.scope.decl(metadata !45180)
  call void @llvm.experimental.noalias.scope.decl(metadata !45183)
  call void @llvm.experimental.noalias.scope.decl(metadata !45186)
  %i.alg = load ptr, ptr %i.j, align 8, !alias.scope !45189, !noalias !45149, !nonnull !15, !noundef !15 ; 2 uses
  %i.alh = load i64, ptr %i.alg, align 8, !noalias !45190, !noundef !15
  %i.ali = add i64 %i.alh, -1                     ; 2 uses
  store i64 %i.ali, ptr %i.alg, align 8, !noalias !45190
  %i.alj = icmp eq i64 %i.ali, 0
  br i1 %i.alj, label %bb.hs, label %.noexc85.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17habe3ea6b3c2d1cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc85.i.i.i.i.i.i.i unwind label %bb.ii, !noalias !44799

bb.ht:                                            ; preds = %bb.hk
  %i.alk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.all = load i64, ptr %i.agf, align 8, !noalias !45191, !noundef !15
  %i.alm = add i64 %i.all, -1                     ; 2 uses
  store i64 %i.alm, ptr %i.agf, align 8, !noalias !45191
  %i.aln = icmp eq i64 %i.alm, 0
  br i1 %i.aln, label %bb.hu, label %.noexc10.i49.i.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.ht
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc89c2fd245102069E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc10.i49.i.i.i.i.i.i.i.i unwind label %bb.hv, !noalias !45066

bb.hv:                                            ; preds = %bb.hw, %bb.hu
  %i.alo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !45066
  unreachable

.noexc10.i49.i.i.i.i.i.i.i.i:                     ; preds = %bb.hu, %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !45198)
  call void @llvm.experimental.noalias.scope.decl(metadata !45201)
  call void @llvm.experimental.noalias.scope.decl(metadata !45204)
  %i.alp = load ptr, ptr %i.j, align 8, !alias.scope !45207, !noalias !45149, !nonnull !15, !noundef !15 ; 2 uses
  %i.alq = load i64, ptr %i.alp, align 8, !noalias !45208, !noundef !15
  %i.alr = add i64 %i.alq, -1                     ; 2 uses
  store i64 %i.alr, ptr %i.alp, align 8, !noalias !45208
  %i.als = icmp eq i64 %i.alr, 0
  br i1 %i.als, label %bb.hw, label %.body87.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %.noexc10.i49.i.i.i.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17habe3ea6b3c2d1cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.body87.i.i.i.i.i.i.i unwind label %bb.hv, !noalias !45066

bb.hx:                                            ; preds = %bb.hq, %bb.hp
  %i.alt = phi i8 [ %.pre.i45.i.i.i.i.i.i.i.i, %bb.hq ], [ %i.akx, %bb.hp ]
  %.sroa.3.0.i.ph.i.i41.i.i.i.i.i.i.i.i = phi i64 [ %i.ald, %bb.hq ], [ %.sroa.6.121.i.i.i40.i.i.i.i.i.i.i.i, %bb.hp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45209)
  %i.alu = getelementptr inbounds nuw i8, ptr %.val.i.i20.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i41.i.i.i.i.i.i.i.i
  %i.alv = and i8 %i.alt, 1
  %i.alw = zext nneg i8 %i.alv to i64
  %i.alx = add i64 %.sroa.3.0.i.ph.i.i41.i.i.i.i.i.i.i.i, -16
  %i.aly = and i64 %i.alx, %.val7.i.i21.i.i.i.i.i.i.i.i
  store i8 %i.ajr, ptr %i.alu, align 1, !noalias !45177
  %i.alz = getelementptr i8, ptr %.val.i.i20.i.i.i.i.i.i.i.i, i64 %i.aly
  %i.ama = getelementptr i8, ptr %i.alz, i64 16
  store i8 %i.ajr, ptr %i.ama, align 1, !noalias !45177
  %i.amb = load <2 x i64>, ptr %i.os, align 8, !alias.scope !45210, !noalias !45080
  %i.amc = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.alw, i64 0
  %i.amd = sub <2 x i64> %i.amb, %i.amc
  store <2 x i64> %i.amd, ptr %i.os, align 8, !alias.scope !45210, !noalias !45080
  %i.ame = sub nsw i64 0, %.sroa.3.0.i.ph.i.i41.i.i.i.i.i.i.i.i
  %i.amf = getelementptr inbounds [16 x i8], ptr %.val.i.i20.i.i.i.i.i.i.i.i, i64 %i.ame ; 2 uses
  %i.amg = getelementptr inbounds i8, ptr %i.amf, i64 -16
  store ptr %.val.i.i.i.i19.i.i.i.i.i.i.i.i, ptr %i.amg, align 8, !noalias !45177
  %i.amh = getelementptr inbounds i8, ptr %i.amf, i64 -8
  store ptr %i.agf, ptr %i.amh, align 8, !noalias !45177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45063
  br label %bb.im

.noexc85.i.i.i.i.i.i.i:                           ; preds = %bb.hs, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45063
  store ptr %i.alf, ptr %i.m, align 8, !noalias !45063
  %i.ami = load i64, ptr %i.alf, align 8, !noalias !45211, !noundef !15
  %i.amj = add i64 %i.ami, -1                     ; 2 uses
  store i64 %i.amj, ptr %i.alf, align 8, !noalias !45211
  %i.amk = icmp eq i64 %i.amj, 0
  br i1 %i.amk, label %bb.hy, label %bb.im

bb.hy:                                            ; preds = %.noexc85.i.i.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc89c2fd245102069E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.im unwind label %bb.ii, !noalias !44799

bb.hz:                                            ; preds = %bb.ic, %bb.ia
  %i.aml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !45066
  unreachable

.thread78.i.i.i.i.i.i.i.i:                        ; preds = %bb.hg, %.noexc10.i.i.i.i.i.i.i.i.i, %bb.gt, %bb.gs
  %.pn81.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.gs ], [ %i.ago, %bb.gt ], [ %i.ail, %bb.hg ], [ %i.ail, %.noexc10.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.amm = load i64, ptr %i.agh, align 8, !noalias !45220, !noundef !15
  %i.amn = add i64 %i.amm, -1                     ; 2 uses
  store i64 %i.amn, ptr %i.agh, align 8, !noalias !45220
  %i.amo = icmp eq i64 %i.amn, 0
  br i1 %i.amo, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.thread78.i.i.i.i.i.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17habe3ea6b3c2d1cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.ib unwind label %bb.hz, !noalias !45066

bb.ib:                                            ; preds = %bb.ia, %.thread78.i.i.i.i.i.i.i.i, %bb.gp, %bb.go
  %.pn.pn.ph.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.agj, %bb.go ], [ %.pn81.i.i.i.i.i.i.i.i, %.thread78.i.i.i.i.i.i.i.i ], [ %i.agj, %bb.gp ], [ %.pn81.i.i.i.i.i.i.i.i, %bb.ia ] ; 2 uses
  %i.amp = load i64, ptr %i.agf, align 8, !noalias !45227, !noundef !15
  %i.amq = add i64 %i.amp, -1                     ; 2 uses
  store i64 %i.amq, ptr %i.agf, align 8, !noalias !45227
  %i.amr = icmp eq i64 %i.amq, 0
  br i1 %i.amr, label %bb.ic, label %.body87.i.i.i.i.i.i.i

bb.ic:                                            ; preds = %bb.ib
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc89c2fd245102069E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.body87.i.i.i.i.i.i.i unwind label %bb.hz, !noalias !45066

bb.id:                                            ; preds = %bb.gl
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, 0
  br i1 %i.amt, label %.body87.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !45234
  br label %.body87.i.i.i.i.i.i.i

bb.if:                                            ; preds = %"_ZN5bimap4hash32BiHashMap$LT$L$C$R$C$LS$C$RS$GT$15remove_by_right17h7cd5f34012de8d14E.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4117.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.899.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !44716
  store i64 %.sroa.091.0.i.i.i.i.i.i.i, ptr %i.af, align 8, !noalias !44716
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %.sink243.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !44716
  store ptr %.sroa.8.0.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store i64 %.sroa.11.0.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store i16 %i.afh, ptr %i.oy, align 8, !noalias !44716
  br label %bb.gk

bb.ig:                                            ; preds = %"_ZN5bimap4hash32BiHashMap$LT$L$C$R$C$LS$C$RS$GT$15remove_by_right17h7cd5f34012de8d14E.exit.thread.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.11.0.i.i.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i.i.i", label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.thread.i.i.i.i.i.i.i"

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i.i.i": ; preds = %bb.ig
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.8.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.pre.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i), !alias.scope !45239, !noalias !44799
  %i.amu = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.amu, label %bb.ih, label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.thread.i.i.i.i.i.i.i"

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i.i.i", %bb.ig
  %.sroa.0100.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.091.0.i.i.i.i.i.i.i to i16
  store i16 %.sroa.0100.0.extract.trunc.i.i.i.i.i.i.i, ptr %.sink243.i.sroa.gep71.i.i.i.i.i.i, align 8, !noalias !44716
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store ptr %.sroa.8.0.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store i64 %.sroa.11.0.i.i.i.i.i.i.i, ptr %i.oy, align 8, !noalias !44716
  br label %bb.gk

bb.ih:                                            ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i.i.i"
  %.sroa.0100.0.extract.trunc102.i.i.i.i.i.i.i = trunc i64 %.sroa.091.0.i.i.i.i.i.i.i to i16
  store i16 %.sroa.0100.0.extract.trunc102.i.i.i.i.i.i.i, ptr %.sink243.i.sroa.gep71.i.i.i.i.i.i, align 8, !noalias !44716
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store ptr %.sroa.8.0.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !44716
  store i64 %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %i.oy, align 8, !noalias !44716
  br label %bb.gk

bb.ii:                                            ; preds = %bb.hy, %bb.hs
  %i.amv = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i.i.i.i.i.i.i

.body87.i.i.i.i.i.i.i:                            ; preds = %bb.ii, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.hw, %.noexc10.i49.i.i.i.i.i.i.i.i
  %eh.lpad-body88.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.amv, %bb.ii ], [ %i.ams, %bb.ie ], [ %i.ams, %bb.id ], [ %i.alk, %bb.hw ], [ %.pn.pn.ph.i.i.i.i.i.i.i.i, %bb.ib ], [ %i.alk, %.noexc10.i49.i.i.i.i.i.i.i.i ], [ %.pn.pn.ph.i.i.i.i.i.i.i.i, %bb.ic ]
  call fastcc void @"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E"(ptr noalias noundef align 8 dereferenceable(64) %i.af) #44, !noalias !44799
  br label %.body.i.i.i.i.i.i

bb.ij:                                            ; preds = %bb.gi, %.body78.i.i.i.i.i.i.i, %.body78.i.i.i.i.i.i.i, %.loopexit.split-lp103.i.i.i.i.i.i, %.loopexit102.i.i.i.i.i.i, %bb.fc, %bb.fb
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body79.i.i.i.i.i.i.i, %bb.gi ], [ %lpad.phi111.i.i.i.i.i.i, %bb.fb ], [ %eh.lpad-body79.i.i.i.i.i.i.i, %.body78.i.i.i.i.i.i.i ], [ %lpad.phi111.i.i.i.i.i.i, %bb.fc ], [ %eh.lpad-body79.i.i.i.i.i.i.i, %.body78.i.i.i.i.i.i.i ], [ %lpad.loopexit104.i.i.i.i.i.i, %.loopexit102.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp105.i.i.i.i.i.i, %.loopexit.split-lp103.i.i.i.i.i.i ] ; 2 uses
  %i.amw = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, 0
  br i1 %i.amw, label %.body.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.pre.i.i.i.i.i.i.i.i, i64 noundef %.pr.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !45243
  br label %.body.i.i.i.i.i.i

bb.il:                                            ; preds = %bb.cw
  %.sroa.028.0.copyload29.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !45248
  %.sroa.730.0.copyload32.i.i.i.i.i = load ptr, ptr %i.on, align 8, !noalias !45248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.oo, i64 80, i1 false), !noalias !45248
  br label %"_ZN97_$LT$bimap..serde..BiHashMapVisitor$LT$L$C$R$C$LS$C$RS$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h668b3118ee912befE.exit.i.i.i.i.i"

bb.im:                                            ; preds = %bb.hy, %.noexc85.i.i.i.i.i.i.i, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !45063
  %.sroa.363.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink243.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !45249 ; 4 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45249 ; 7 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45249 ; 3 uses
  %.sroa.1164.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink243.i.sroa.gep71.i.i.i.i.i.i, align 8, !noalias !45249 ; 2 uses
  %.sroa.12.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.4117.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !45249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !44716
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.899.i.i.i.i.i.i.i)
  %i.amx = xor i64 %.sroa.363.0.copyload.i.i.i.i.i.i, -9223372036854775808
  %i.amy = icmp slt i64 %.sroa.363.0.copyload.i.i.i.i.i.i, 0
  %i.amz = select i1 %i.amy, i64 %i.amx, i64 4
  switch i64 %i.amz, label %bb.in [
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge"
    i64 1, label %bb.ip
    i64 2, label %bb.iq
    i64 3, label %bb.ir
  ]

bb.in:                                            ; preds = %bb.im
  %i.ana = icmp eq i64 %.sroa.363.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ana, label %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i", label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.anb = inttoptr i64 %.sroa.4.0.copyload.i.i.i.i.i.i to ptr
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anb, i64 noundef %.sroa.363.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !45250
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i", %bb.ir, %bb.iq, %bb.ip
  %.sink14.i.sroa.phi.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.ir ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.iq ], [ %.sroa.8.0.copyload.i.i.i.i.i.i, %bb.ip ], [ %.sroa.12.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i" ]
  %.val.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.ir ], [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.iq ], [ %.sroa.4.0.copyload.i.i.i.i.i.i, %bb.ip ], [ %.sroa.1164.0.copyload.i.i.i.i.i.i, %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink14.i.sroa.phi.sroa.speculated.i.i.i.i.i.i, i64 noundef %.val.sink.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !45257
  br label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge"

bb.ip:                                            ; preds = %bb.im
  %i.anc = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.anc, label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i"

bb.iq:                                            ; preds = %bb.im
  %i.and = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.and, label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i"

bb.ir:                                            ; preds = %bb.im
  %i.ane = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ane, label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i": ; preds = %bb.io, %bb.in
  %i.anf = icmp eq i64 %.sroa.1164.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.anf, label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i.backedge": ; preds = %"_ZN4core3ptr56drop_in_place$LT$$LP$u16$C$alloc..string..String$RP$$GT$17h5fc900088e935de4E.exit.i.i.i.i.i.i.i", %bb.ir, %bb.iq, %bb.ip, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hf5e3b17ec5838f1eE.exit.sink.split.i.i.i.i.i.i.i", %bb.im
  br label %"_ZN4core3ptr74drop_in_place$LT$bimap..Overwritten$LT$u16$C$alloc..string..String$GT$$GT$17hcbe26893c1165ee8E.exit.i.i.i.i.i.i"

bb.is:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ang = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !44603
  unreachable

"_ZN97_$LT$bimap..serde..BiHashMapVisitor$LT$L$C$R$C$LS$C$RS$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h668b3118ee912befE.exit.i.i.i.i.i": ; preds = %bb.il, %_ZN10serde_core2de9MapAccess10next_entry17h13ff0a3a355309bbE.exit.thread.i.i.i.i.i.i
  %.sroa.028.0.i.i.i.i.i = phi ptr [ %.sroa.028.0.copyload29.i.i.i.i.i, %bb.il ], [ null, %_ZN10serde_core2de9MapAccess10next_entry17h13ff0a3a355309bbE.exit.thread.i.i.i.i.i.i ]
  %.sroa.730.0.i.i.i.i.i = phi ptr [ %.sroa.730.0.copyload32.i.i.i.i.i, %bb.il ], [ %.sroa.0.080.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_entry17h13ff0a3a355309bbE.exit.thread.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !44570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !44564
  %i.anh = load i8, ptr %i.nn, align 8, !range !447, !alias.scope !44565, !noalias !44566, !noundef !15
  %i.ani = trunc nuw i8 %i.anh to i1
  br i1 %i.ani, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %"_ZN97_$LT$bimap..serde..BiHashMapVisitor$LT$L$C$R$C$LS$C$RS$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h668b3118ee912befE.exit.i.i.i.i.i"
  %i.anj = load i8, ptr %i.nm, align 1, !alias.scope !44565, !noalias !44566, !noundef !15
  %i.ank = add i8 %i.anj, 1
  store i8 %i.ank, ptr %i.nm, align 1, !alias.scope !44565, !noalias !44566
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %"_ZN97_$LT$bimap..serde..BiHashMapVisitor$LT$L$C$R$C$LS$C$RS$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h668b3118ee912befE.exit.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !44564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !44564
  store ptr %.sroa.028.0.i.i.i.i.i, ptr %i.ax, align 8, !noalias !44564
  %.sroa.730.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.730.0.i.i.i.i.i, ptr %.sroa.730.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44564
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.i.i.i.i.i, i64 80, i1 false), !noalias !44564
  %i.anl = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17he75a75ede97202d9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bb)
          to label %bb.iw unwind label %bb.iv, !noalias !44566 ; 10 uses

bb.iv:                                            ; preds = %bb.iu
  %i.anm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$core..result..Result$LT$bimap..hash..BiHashMap$LT$u16$C$alloc..string..String$GT$$C$serde_json..error..Error$GT$$GT$17h8d531c578ffc9523E"(ptr noalias noundef align 8 dereferenceable(96) %i.ax) #44
          to label %.body.i unwind label %bb.iz, !noalias !44566

bb.iw:                                            ; preds = %bb.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef nonnull align 8 dereferenceable(96) %i.ax, i64 96, i1 false), !noalias !44564
  %i.ann = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store ptr %i.anl, ptr %i.ann, align 8, !noalias !44564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !44564
  %i.ano = load ptr, ptr %i.ay, align 8, !noalias !44564, !noundef !15 ; 4 uses
  %i.anp = icmp eq ptr %i.ano, null
  br i1 %i.anp, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %.not.i.i.i.i.i = icmp eq ptr %i.anl, null
  br i1 %.not.i.i.i.i.i, label %bb.jh, label %.thread46.i.i.i.i.i

bb.iy:                                            ; preds = %bb.iw
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8, !noalias !44564, !nonnull !15, !align !569, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  %.not49.i.i.i.i.i = icmp eq ptr %i.anl, null
  br i1 %.not49.i.i.i.i.i, label %.noexc10.sink.split.i, label %bb.ja

.thread46.i.i.i.i.i:                              ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$bimap..hash..BiHashMap$LT$u16$C$alloc..string..String$GT$$GT$17h1b6e9d9c7dba871dE"(ptr noalias noundef align 8 dereferenceable(96) %i.ay)
          to label %.noexc10.sink.split.i unwind label %bb.jf, !noalias !44531

bb.iz:                                            ; preds = %bb.iv
  %i.ans = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !44566
  unreachable

bb.ja:                                            ; preds = %bb.iy
  call void @llvm.experimental.noalias.scope.decl(metadata !45258)
  call void @llvm.experimental.noalias.scope.decl(metadata !45261)
  %i.ant = load i64, ptr %i.anl, align 8, !range !1131, !alias.scope !45264, !noalias !45265, !noundef !15
  switch i64 %i.ant, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i" [
    i64 0, label %bb.jb
    i64 1, label %bb.jc
  ]

bb.jb:                                            ; preds = %bb.ja
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.anu, align 8, !alias.scope !45264, !noalias !45265, !noundef !15 ; 2 uses
  %i.anv = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.anv, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.jb
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %.val.i.i.i.i26.i.i.i.i.i = load ptr, ptr %i.anw, align 8, !alias.scope !45264, !noalias !45265, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i26.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i, i64 noundef 1) #45, !noalias !45268
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i"

bb.jc:                                            ; preds = %bb.ja
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h7280a97f0d1e0e3fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.anx)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i" unwind label %bb.jd, !noalias !45265

bb.jd:                                            ; preds = %bb.jc
  %i.any = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef 40, i64 noundef 8) #45, !noalias !45265
  br label %.body.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i": ; preds = %bb.jc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.jb, %bb.ja
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anl, i64 noundef 40, i64 noundef 8) #45, !noalias !45265
  br label %.noexc10.sink.split.i

.noexc10.sink.split.i:                            ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i", %.thread46.i.i.i.i.i, %bb.iy
  %.sroa.9.2.i.i.i.i.ph.i = phi ptr [ %i.anl, %.thread46.i.i.i.i.i ], [ %i.anr, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h26955b1adf0914bcE.exit.i.i.i.i.i" ], [ %i.anr, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !44564
  br label %.noexc10.i201

.noexc10.i201:                                    ; preds = %.noexc10.sink.split.i, %bb.ct
  %.sroa.9.2.i.i.i.i.i = phi ptr [ %i.nv, %bb.ct ], [ %.sroa.9.2.i.i.i.i.ph.i, %.noexc10.sink.split.i ]
  %i.anz = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h952e3eeb82f23c65E(ptr noalias noundef nonnull align 8 %.sroa.9.2.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bb)
          to label %bb.jg unwind label %bb.jf, !noalias !44531

.body.i:                                          ; preds = %bb.jk, %bb.jf, %bb.jd, %bb.iv, %.body.i.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.anm, %bb.iv ], [ %i.aob, %bb.jf ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.any, %bb.jd ], [ %i.aol, %bb.jk ] ; 2 uses
  %.val8.i = load i64, ptr %i.bb, align 8, !alias.scope !45269, !noalias !44531 ; 2 uses
  %i.aoa = icmp eq i64 %.val8.i, 0
  br i1 %i.aoa, label %.body185, label %bb.je

bb.je:                                            ; preds = %.body.i
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i197, align 8, !noalias !44531, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !45272
  br label %.body185

bb.jf:                                            ; preds = %bb.jl, %.noexc10.i201, %.thread46.i.i.i.i.i, %_ZN10serde_core2de9MapAccess10next_entry17h13ff0a3a355309bbE.exit.thread.i.i.i.i.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hf6df1c5daecca5c2E.exit.i.i.i.i.i.i.i.i.i", %bb.ct, %.loopexit.i.i.i.i.i
  %i.aob = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.jg:                                            ; preds = %.noexc10.i201, %.noexc.i198
  %.sroa.5.0.ph.i = phi ptr [ %i.anz, %.noexc10.i201 ], [ %i.nu, %.noexc.i198 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i196.sroa.5, i64 24, i1 false), !noalias !45275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13231, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i196.sroa.6, i64 48, i1 false), !noalias !45275
  br label %"_ZN4core3ptr58drop_in_place$LT$milli..documents..DocumentsBatchIndex$GT$17h59db0f05be2ef49bE.exit19.i"

bb.jh:                                            ; preds = %bb.ix
  %.sroa.211.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.211.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.211.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44564 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.7.i196.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44531 ; 3 uses
  %.sroa.7.i196.sroa.5.0..sroa.3.0..sroa_idx.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i196.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i196.sroa.5.0..sroa.3.0..sroa_idx.i.i.i.i.i.sroa_idx, i64 24, i1 false), !noalias !44531
  %.sroa.7.i196.sroa.6.0..sroa.3.0..sroa_idx.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i196.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i196.sroa.6.0..sroa.3.0..sroa_idx.i.i.i.i.i.sroa_idx, i64 48, i1 false), !noalias !44531
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !44564
  store ptr %i.ano, ptr %i.ba, align 8, !noalias !44531
  %.sroa.4.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.211.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx28.i, align 8, !noalias !44531
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %.sroa.7.i196.sroa.0.0.copyload, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !44531
  %.sroa.7.i196.sroa.5.0..sroa.529.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i196.sroa.5.0..sroa.529.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i196.sroa.5, i64 24, i1 false), !noalias !44531
  %.sroa.7.i196.sroa.6.0..sroa.529.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i196.sroa.6.0..sroa.529.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i196.sroa.6, i64 48, i1 false), !noalias !44531
  call void @llvm.experimental.noalias.scope.decl(metadata !45276)
  call void @llvm.experimental.noalias.scope.decl(metadata !45279)
  %i.aoc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45282, !noalias !45285, !noundef !15 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5233.0..sroa_idx, align 8, !alias.scope !45288, !noalias !45289 ; 2 uses
  %i.aod = icmp ult i64 %.promoted.i.i.i, %i.aoc
  %i.aoe = ptrtoint ptr %.sroa.211.0.copyload.i.i.i.i.i to i64 ; 2 uses
  br i1 %i.aod, label %.lr.ph.i.i.i203, label %.loopexit.i202

.lr.ph.i.i.i203:                                  ; preds = %bb.jh
  %i.aof = load ptr, ptr %i.nl, align 8, !alias.scope !45282, !noalias !45285, !nonnull !15, !align !533, !noundef !15
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jj, %.lr.ph.i.i.i203
  %i.aog = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i203 ], [ %i.aoj, %bb.jj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45290)
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aog
  %i.aoi = load i8, ptr %i.aoh, align 1, !noalias !45291, !noundef !15
  switch i8 %i.aoi, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17he65ddd3862e9f72bE.exit.i.i" [
    i8 32, label %bb.jj
    i8 10, label %bb.jj
    i8 9, label %bb.jj
end_hunk_0
begin_hunk_1_@"_ZN79_$LT$milli..vector..error..NewEmbedderErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17h42e8ed6731612409E":bb.a
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2490, i64 noundef 24, ptr noundef nonnull align 1 %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2489)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.p, align 8
  %i.ai = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2373, i64 noundef 16, ptr noundef nonnull align 1 %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.o, align 8
  %i.ak = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2300, i64 noundef 13, ptr noundef nonnull align 1 %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2492)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.n, align 8
  %i.am = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2493, i64 noundef 13, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.m, align 8
  %i.ao = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2494, i64 noundef 16, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.l, align 8
  %i.aq = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2496, i64 noundef 10, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2495)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.k, align 8
  %i.as = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2497, i64 noundef 6, ptr noundef nonnull align 1 %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2495)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.j, align 8
  %i.au = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2498, i64 noundef 26, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1891)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.i, align 8
  %i.aw = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2499, i64 noundef 9, ptr noundef nonnull align 1 %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.h, align 8
  %i.ay = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2500, i64 noundef 21, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.g, align 8
  %i.ba = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2501, i64 noundef 20, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bc, ptr %i.f, align 8
  %i.bd = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2502, i64 noundef 27, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2503, i64 noundef 17, ptr noundef nonnull align 1 %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2504, i64 noundef 16, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1010)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.be, ptr %i.e, align 8
  %i.bf = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2506, i64 noundef 28, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1720, i64 noundef 5, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2505, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2507, i64 noundef 16, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1008)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %i.d, align 8
  %i.bi = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2508, i64 noundef 31, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2509, i64 noundef 12, ptr noundef nonnull align 1 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2510, i64 noundef 11, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1010)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.bk, ptr %i.c, align 8
  %i.bl = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2513, i64 noundef 31, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2514, i64 noundef 8, ptr noundef nonnull align 1 %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2511, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2515, i64 noundef 4, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2516, i64 noundef 36)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.b, align 8
  %i.bo = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2517, i64 noundef 25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @321, i64 noundef 7, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @996)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bq, ptr %i.a, align 8
  %i.br = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h64a865faf2c41f70E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2518, i64 noundef 32, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2519, i64 noundef 22, ptr noundef nonnull align 1 %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1209, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2520, i64 noundef 20, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1010)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.aa, %bb.c ], [ %i.ac, %bb.d ], [ %i.ae, %bb.e ], [ %i.ag, %bb.f ], [ %i.ai, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ], [ %i.ao, %bb.j ], [ %i.aq, %bb.k ], [ %i.as, %bb.l ], [ %i.au, %bb.m ], [ %i.aw, %bb.n ], [ %i.ay, %bb.o ], [ %i.ba, %bb.p ], [ %i.bd, %bb.q ], [ %i.bf, %bb.r ], [ %i.bi, %bb.s ], [ %i.bl, %bb.t ], [ %i.bm, %bb.u ], [ %i.bo, %bb.v ], [ %i.br, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h42cc21a09d2ea5edE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !49979, !noalias !49983 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2529, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !49990
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !49990 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0883ee1e22293577E.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2531) #46, !noalias !49996
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0883ee1e22293577E.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49997)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0883ee1e22293577E.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 range(i64 2, 1) %i.v, i1 false), !alias.scope !50000, !noalias !50004
  br label %.thread381.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !50007, !noundef !15
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !49997, !noalias !50008
  br label %.thread381.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !50009, !noalias !50013 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread381

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0883ee1e22293577E.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50020
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

.thread381:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread381.thread

.thread381.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i", %bb.k, %.thread381
  %.sroa.0102.0372389656 = phi i1 [ true, %.thread381 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ]
  %.sroa.0101.0370390654 = phi i64 [ %i.af, %.thread381 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ] ; 2 uses
  %.sroa.9.0385637 = phi ptr [ undef, %.thread381 ], [ %i.w, %bb.k ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ] ; 2 uses
  %.sroa.13.0401645 = phi i64 [ undef, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ]
  %.sroa.0279.0403638 = phi i64 [ -9223372036854775808, %.thread381 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ] ; 2 uses
  %.sroa.19.1412636 = phi i64 [ %i.ag, %.thread381 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ]
  %.sroa.0.1413634 = phi ptr [ %i.ah, %.thread381 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0370390654, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !50023
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50023 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread381.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread381.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2532) #46
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2538, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185": ; preds = %.split658, %bb.u, %bb.r
  %.sroa.0279.0404.a = phi i64 [ %.sroa.0279.0411, %bb.r ], [ %.sroa.0279.0403639, %.split658 ], [ %.sroa.0279.0403639, %bb.u ] ; 2 uses
  %.sroa.9.0386 = phi ptr [ %.sroa.9.0393, %bb.r ], [ %.sroa.9.0385638, %.split658 ], [ %.sroa.9.0385638, %bb.u ] ; 2 uses
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split658 ], [ %.pn128662, %bb.u ]
  switch i64 %.sroa.0279.0404.a, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0386) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0386, i64 noundef %.sroa.0279.0404.a, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50029
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0411 = phi i64 [ %.sroa.0279.0403638, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0393 = phi ptr [ %.sroa.9.0385637, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185"

bb.s:                                             ; preds = %bb.n, %.thread381
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread381 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread381 ] ; 9 uses
  %.sroa.0102.0372389657 = phi i1 [ %.sroa.0102.0372389656, %bb.n ], [ true, %.thread381 ]
  %.sroa.0101.0370390655 = phi i64 [ %.sroa.0101.0370390654, %bb.n ], [ 0, %.thread381 ] ; 4 uses
  %.sroa.9.0385638 = phi ptr [ %.sroa.9.0385637, %bb.n ], [ undef, %.thread381 ] ; 7 uses
  %.sroa.13.0401646 = phi i64 [ %.sroa.13.0401645, %bb.n ], [ undef, %.thread381 ] ; 2 uses
  %.sroa.0279.0403639 = phi i64 [ %.sroa.0279.0403638, %bb.n ], [ -9223372036854775808, %.thread381 ] ; 7 uses
  %.sroa.19.1412637 = phi i64 [ %.sroa.19.1412636, %bb.n ], [ %i.ag, %.thread381 ] ; 2 uses
  %.sroa.0.1413635 = phi ptr [ %.sroa.0.1413634, %bb.n ], [ %i.ah, %.thread381 ] ; 2 uses
  %.sroa.10.0.i176 = phi i64 [ %i.am, %bb.n ], [ 1, %.thread381 ]
  %i.ar = inttoptr i64 %.sroa.10.0.i176 to ptr    ; 5 uses
  %i.as = icmp ugt i64 %i.aq, %.sroa.19.1412637
  br i1 %i.as, label %.thread520, label %bb.v

bb.t:                                             ; preds = %bb.bi
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

bb.u:                                             ; preds = %.thread468.loopexit.split-lp, %.thread468.loopexit, %.thread448.loopexit.split-lp, %.thread448.loopexit, %.split667, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit", %bb.t, %.split672, %.split670, %.split658.thread, %.split658
  %.pn128662 = phi { ptr, i32 } [ %i.at, %.split658 ], [ %lpad.thr_comm499, %bb.t ], [ %i.fh, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit" ], [ %lpad.loopexit.split-lp525, %.thread468.loopexit.split-lp ], [ %lpad.loopexit524, %.thread468.loopexit ], [ %lpad.loopexit, %.thread448.loopexit ], [ %i.dp, %.split667 ], [ %lpad.loopexit.split-lp, %.thread448.loopexit.split-lp ], [ %i.bv, %.split670 ], [ %lpad.thr_comm499, %.split672 ], [ %i.bd, %.split658.thread ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50032
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185"

.split658:                                        ; preds = %bb.y
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185", label %bb.u

.thread520:                                       ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bk

bb.v:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1413635, i64 %i.aq ; 4 uses
  %i.aw = sub nuw i64 %.sroa.19.1412637, %i.aq    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.1413635, i64 range(i64 2, 1) %i.aq, i1 false), !alias.scope !50035, !noalias !50039
  br i1 %.sroa.0102.0372389657, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198", %bb.v
  %.sroa.19.2 = phi i64 [ %i.bk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198" ], [ %i.aw, %bb.v ]
  %.sroa.0.2 = phi ptr [ %i.bj, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198" ], [ %i.av, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = shl nuw nsw i64 %.sroa.0101.0370390655, 5 ; 2 uses
  br i1 %i.ap, label %._crit_edge.thread, label %bb.w

._crit_edge.thread:                               ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.ay = icmp eq i64 %.sroa.0101.0370390655, 0
  tail call void @llvm.assume(i1 %i.ay)
  store i64 0, ptr %i.e, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205"

bb.w:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !50043
  %i.bb = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #45, !noalias !50043 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2534) #46
          to label %.noexc187 unwind label %.split658.thread

.split658.thread:                                 ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.noexc187:                                        ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0883ee1e22293577E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2533)
          to label %bb.z unwind label %.split658

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !15 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50048)
  %i.bi = icmp ugt i64 %i.bh, %i.aw
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  %i.bk = sub nuw i64 %i.aw, %i.bh
  %i.bl = icmp eq i64 %i.bh, 1
  br i1 %i.bl, label %bb.ab, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i188"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i188": ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %i.av, i64 range(i64 2, 1) %i.bh, i1 false), !alias.scope !50051, !noalias !50055
  br label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bm = load i8, ptr %i.av, align 1, !noalias !50058, !noundef !15
  store i8 %i.bm, ptr %i.bf, align 1, !alias.scope !50048, !noalias !50059
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.bn, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50060)
  %.val.i193 = load i64, ptr %i.f, align 8, !alias.scope !50060 ; 2 uses
  %i.bo = icmp eq i64 %.val.i193, 0
  br i1 %i.bo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit195", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.val.i193, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50060
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit195"

bb.ae:                                            ; preds = %bb.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h44fb2e09c61812bbE.exit.i188"
  %.sroa.0296.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %i.bp = icmp eq i64 %.sroa.0296.0.copyload, 0
  br i1 %i.bp, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198", label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %.sroa.0296.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50063
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit198": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i

.lr.ph:                                           ; preds = %bb.w
  store i64 %.sroa.0101.0370390655, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.br, align 8
  %.not115 = icmp eq i64 %.sroa.0279.0403639, -9223372036854775808
  %.sroa.730.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0104.1569 = phi i64 [ 1, %.lr.ph ], [ %.sroa.0104.1, %bb.bg ] ; 3 uses
  %.sroa.0104.0568 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0104.1569, %bb.bg ] ; 2 uses
  %.sroa.0.3567 = phi ptr [ %.sroa.0.2, %.lr.ph ], [ %.sroa.0.4, %bb.bg ] ; 8 uses
  %.sroa.19.3566 = phi i64 [ %.sroa.19.2, %.lr.ph ], [ %.sroa.19.4, %bb.bg ] ; 6 uses
  %.sroa.0293.0565 = phi ptr [ %i.ar, %.lr.ph ], [ %i.by, %bb.bg ] ; 3 uses
  %.sroa.8.0353564 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bz, %bb.bg ] ; 2 uses
  %i.bu = icmp eq i64 %.sroa.8.0353564, 0
  br i1 %i.bu, label %bb.ai, label %bb.aj

._crit_edge:                                      ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50066
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205": ; preds = %._crit_edge.thread, %._crit_edge
  switch i64 %.sroa.0279.0403639, label %bb.ah [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"
  ]

bb.ah:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50069
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206": ; preds = %bb.m, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252.thread", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252", %bb.bl, %bb.ah, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit205", %bb.b, %bb.g, %bb.f
  ret void

.split670:                                        ; preds = %.invoke, %bb.an, %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

bb.ai:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.bw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.aj:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload.i199 = load i16, ptr %.sroa.0293.0565, align 1, !alias.scope !50072, !noalias !50076
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0293.0565, i64 4
  %i.bz = add nsw i64 %.sroa.8.0353564, -4
  %.sroa.0.0.copyload.i207 = load i16, ptr %i.bx, align 1, !alias.scope !50083, !noalias !50087 ; 2 uses
  %i.ca = zext i16 %.sroa.0.0.copyload.i207 to i64
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 4 uses
  br i1 %.not115, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit.thread", label %.cont

.cont:                                            ; preds = %bb.aj
  %i.cc = lshr i64 %.sroa.0104.0568, 3            ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13.0401646
  br i1 %i.cd, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit", label %bb.ak

bb.ak:                                            ; preds = %.cont
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cc, i64 noundef %.sroa.13.0401646, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2539) #46
          to label %.noexc212 unwind label %.split670

.noexc212:                                        ; preds = %bb.ak
  unreachable

"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit": ; preds = %.cont
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.9.0385638, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !50094, !noundef !15
  %i.cg = trunc i64 %.sroa.0104.0568 to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = shl nuw i8 1, %i.ch
  %i.cj = and i8 %i.cf, %i.ci
  %.not523 = icmp eq i8 %i.cj, 0
  br i1 %.not523, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit.thread", label %bb.al

"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit.thread": ; preds = %bb.aj, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit"
  %i.ck = icmp ult i16 %.sroa.0.0.copyload.i207, 4096
  br i1 %i.ck, label %bb.ao, label %bb.am

bb.al:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit"
  %i.cl = icmp ult i64 %.sroa.19.3566, 2
  br i1 %i.cl, label %bb.bb, label %bb.bc

bb.am:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.cm = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.an, label %bb.ap, !prof !972

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8192) #46
          to label %.noexc218 unwind label %.split670

.noexc218:                                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hf98900beb71c07ceE.exit.thread"
  %i.co = shl nuw nsw i64 %i.cb, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !50097
  %i.cp = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !50097 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.invoke, label %bb.au

.thread448.loopexit:                              ; preds = %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

.thread448.loopexit.split-lp:                     ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, i8 0, i64 8192, i1 false)
  %i.cr = icmp ult i64 %.sroa.19.3566, 8192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.cr, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 8192
  %i.ct = add i64 %.sroa.19.3566, -8192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(8192) %.sroa.0.3567, i64 range(i64 2, 1) 8192, i1 false), !alias.scope !50102, !noalias !50106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN7roaring6bitmap5store12bitmap_store11BitmapStore8try_from17h24fc3ed428f45e5dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 4097, 65537) %i.cb, ptr noalias noundef nonnull align 8 %i.cm)
          to label %_ZN4core3ops8function2Fn4call17h947beaeb1b5f93e4E.exit unwind label %.thread448.loopexit

_ZN4core3ops8function2Fn4call17h947beaeb1b5f93e4E.exit: ; preds = %bb.aq
  %i.cu = load i64, ptr %i.b, align 8, !range !966, !noundef !15
  %i.cv = trunc nuw i64 %i.cu to i1
  %i.cw = load i64, ptr %i.bt, align 8, !noundef !15 ; 2 uses
  br i1 %i.cv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core3ops8function2Fn4call17h947beaeb1b5f93e4E.exit
  %i.cx = load i64, ptr %i.bs, align 8, !noundef !15
  %i.cy = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef 21, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %.thread463 unwind label %.thread448.loopexit.split-lp

.thread463:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.cz, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.as:                                            ; preds = %_ZN4core3ops8function2Fn4call17h947beaeb1b5f93e4E.exit
  %i.da = load ptr, ptr %i.bs, align 8, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.az

bb.at:                                            ; preds = %bb.ap
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.db, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 8192, i64 noundef 8) #45
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

.thread468.loopexit:                              ; preds = %bb.av
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

.thread468.loopexit.split-lp:                     ; preds = %bb.ax
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

bb.au:                                            ; preds = %bb.ao
  %i.dc = icmp ugt i64 %i.co, %.sroa.19.3566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3567) ]
  br i1 %i.dc, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 %i.co
  %i.de = sub nuw i64 %.sroa.19.3566, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.3567, i64 range(i64 2, 1) %i.co, i1 false), !alias.scope !50110, !noalias !50114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cb, ptr %i.a, align 8, !noalias !50118
  store ptr %i.cp, ptr %.sroa.4334.0..sroa_idx, align 8, !noalias !50118
  store i64 %i.cb, ptr %.sroa.5335.0..sroa_idx, align 8, !noalias !50118
  invoke void @"_ZN124_$LT$roaring..bitmap..store..array_store..ArrayStore$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u16$GT$$GT$$GT$8try_from17h9b325ec933d5e4fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aw unwind label %.thread468.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = load i64, ptr %i.c, align 8, !range !286, !noundef !15 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = load i64, ptr %.sroa.496.0..sroa_idx, align 8, !noundef !15
  %i.di = load i8, ptr %.sroa.597.0..sroa_idx, align 8, !range !447, !noundef !15
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef 21, i64 noundef %i.dh, i1 noundef zeroext %i.dj)
          to label %.thread485 unwind label %.thread468.loopexit.split-lp

.thread485:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.dl, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.ay:                                            ; preds = %bb.aw
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %bb.ay, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248"
  %.sroa.19.4 = phi i64 [ %i.fa, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248" ], [ %i.de, %bb.ay ], [ %i.ct, %bb.as ]
  %.sroa.0.4 = phi ptr [ %i.ez, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248" ], [ %i.dd, %bb.ay ], [ %i.cs, %bb.as ]
  %.sroa.835.0 = phi i64 [ %.sroa.835.0.copyload39, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248" ], [ %.sroa.597.0.copyload, %bb.ay ], [ %i.cw, %bb.as ]
  %.sroa.730.0 = phi ptr [ %.sroa.730.0.copyload34, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248" ], [ %.sroa.496.0.copyload, %bb.ay ], [ %i.da, %bb.as ] ; 2 uses
  %.sroa.027.0 = phi i64 [ %.sroa.027.0.copyload29, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248" ], [ %i.df, %bb.ay ], [ -9223372036854775808, %bb.as ] ; 2 uses
  %i.dm = load i64, ptr %i.br, align 8, !alias.scope !50121, !noalias !50124, !noundef !15 ; 3 uses
  %i.dn = load i64, ptr %i.e, align 8, !range !10, !alias.scope !50121, !noalias !50124, !noundef !15
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2537)
          to label %bb.bg unwind label %.split667, !noalias !50124

.split667:                                        ; preds = %bb.ba
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17hf4a8e2c9e429fbe2E"(i64 %.sroa.027.0, ptr %.sroa.730.0) #44, !noalias !50124
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit": ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.dq, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 2) #45
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.bb:                                            ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.dr, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.bc:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.3567, i64 2 ; 3 uses
  %i.dt = add i64 %.sroa.19.3566, -2              ; 2 uses
  %.sroa.0.0.copyload.i213 = load i16, ptr %.sroa.0.3567, align 1, !alias.scope !50126, !noalias !50130 ; 3 uses
  %i.du = zext i16 %.sroa.0.0.copyload.i213 to i64 ; 4 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 14 uses
  %i.dw = icmp eq i16 %.sroa.0.0.copyload.i213, 0 ; 3 uses
  br i1 %i.dw, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !50137, !noalias !50141
  %i.dx = getelementptr inbounds nuw i8, ptr inttoptr (i64 2 to ptr), i64 %i.dv
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hde4fd9e5f7be4561E.exit"

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !50145
  %i.dy = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !50145 ; 8 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.invoke, label %.thread516

.invoke:                                          ; preds = %bb.bd, %bb.ao
  %i.ea = phi i64 [ %i.co, %bb.ao ], [ %i.dv, %bb.bd ]
  %i.eb = phi ptr [ @2535, %bb.ao ], [ @2536, %bb.bd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb) #46
          to label %.cont713 unwind label %.split670

.cont713:                                         ; preds = %.invoke
  unreachable

.thread516:                                       ; preds = %bb.bd
  %i.ec = icmp ugt i64 %i.dv, %i.dt
  br i1 %i.ec, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.thread516
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dy, ptr nonnull readonly align 1 %i.ds, i64 range(i64 2, 1) %i.dv, i1 false), !alias.scope !50137, !noalias !50141
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %min.iters.check = icmp ult i16 %.sroa.0.0.copyload.i213, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.be
  %i.ee = and i64 %i.du, 3                        ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = select i1 %i.ef, i64 4, i64 %i.ee
  %n.vec = sub nsw i64 %i.du, %i.eg               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.en, %vector.body ]
  %vec.phi745 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index
  %i.ej = getelementptr i8, ptr %i.eh, i64 2
  %i.ek = getelementptr i8, ptr %i.ei, i64 10
  %wide.vec = load <4 x i16>, ptr %i.ej, align 2
  %strided.vec = shufflevector <4 x i16> %wide.vec, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec746 = load <4 x i16>, ptr %i.ek, align 2
  %strided.vec747 = shufflevector <4 x i16> %wide.vec746, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.el = zext <2 x i16> %strided.vec to <2 x i64>
  %i.em = zext <2 x i16> %strided.vec747 to <2 x i64>
  %i.en = add <2 x i64> %vec.phi, %i.el           ; 2 uses
  %i.eo = add <2 x i64> %vec.phi745, %i.em        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !50150

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eo, %i.en
  %i.eq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.be, %middle.block
  %.sroa.09.0.i.ph = phi i64 [ 0, %bb.be ], [ %n.vec, %middle.block ]
  %.sroa.07.0.i.ph = phi i64 [ 0, %bb.be ], [ %i.eq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.09.0.i = phi i64 [ %i.ev, %scalar.ph ], [ %.sroa.09.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.07.0.i = phi i64 [ %i.eu, %scalar.ph ], [ %.sroa.07.0.i.ph, %scalar.ph.preheader ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.sroa.09.0.i
  %i.es = getelementptr i8, ptr %i.er, i64 2
  %.val.i243 = load i16, ptr %i.es, align 2, !noundef !15
  %i.et = zext i16 %.val.i243 to i64
  %i.eu = add i64 %.sroa.07.0.i, %i.et            ; 2 uses
  %i.ev = add nuw i64 %.sroa.09.0.i, 1            ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.du
  br i1 %i.ew, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hde4fd9e5f7be4561E.exit", label %scalar.ph, !llvm.loop !50153

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hde4fd9e5f7be4561E.exit": ; preds = %scalar.ph, %.thread
  %i.ex = phi ptr [ %i.dx, %.thread ], [ %i.ed, %scalar.ph ]
  %i.ey = phi ptr [ inttoptr (i64 2 to ptr), %.thread ], [ %i.dy, %scalar.ph ] ; 5 uses
  %.sroa.04.0.i = phi i64 [ 0, %.thread ], [ %i.eu, %scalar.ph ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dv
  %i.fa = sub nuw i64 %i.dt, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %.sroa.04.0.i)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hde4fd9e5f7be4561E.exit"
  br i1 %i.dw, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf, %.noexc246
  %i.fb = phi ptr [ %i.fc, %.noexc246 ], [ %i.ey, %bb.bf ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.fb, align 2, !noalias !50154 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i32 %.sroa.02.0.copyload.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i32 %.sroa.02.0.copyload.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i.i to i16
  %i.fd = add i16 %.sroa.4.0.extract.trunc.i.i.i, %.sroa.01.0.extract.trunc.i.i.i ; 2 uses
  %i.fe = icmp ult i16 %i.fd, %.sroa.01.0.extract.trunc.i.i.i
  br i1 %i.fe, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4c0a033bb4226201E.exit", label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbc8ff66a521312d9E.exit.i", !prof !122

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbc8ff66a521312d9E.exit.i": ; preds = %.lr.ph.i
  %.sroa.012.2.insert.ext.i.i.i = zext i16 %i.fd to i48
  %.sroa.012.2.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.012.2.insert.ext.i.i.i, 16
  %i.ff = and i32 %.sroa.02.0.copyload.i, 65535
  %.sroa.012.2.insert.mask.i.i.i = zext nneg i32 %i.ff to i48
  %.sroa.012.2.insert.insert.i.i.i = or disjoint i48 %.sroa.012.2.insert.shift.i.i.i, %.sroa.012.2.insert.mask.i.i.i
  %i.fg = invoke noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i48 %.sroa.012.2.insert.insert.i.i.i)
          to label %.noexc246 unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit" ; 0 uses

.noexc246:                                        ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbc8ff66a521312d9E.exit.i"
  %.not.i = icmp eq ptr %i.fc, %i.ex
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbc8ff66a521312d9E.exit.i"
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !50157
  %.val154 = load i64, ptr %i.d, align 8, !range !286, !noundef !15
  %.val155 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h85de8cf70cf62c57E"(i64 %.val154, ptr %.val155) #44
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4c0a033bb4226201E.exit": ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 90194313219 to ptr), ptr %i.fi, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !50160
  %.val152 = load i64, ptr %i.d, align 8, !range !286, !noundef !15
  %.val153 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$roaring..bitmap..store..Store$GT$17h85de8cf70cf62c57E"(i64 %.val152, ptr %.val153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

.loopexit:                                        ; preds = %.noexc246
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !50163
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h9ba29a82f58e9bdcE.exit248": ; preds = %bb.bf, %.loopexit
  %.sroa.027.0.copyload29 = load i64, ptr %i.d, align 8
  %.sroa.730.0.copyload34 = load ptr, ptr %.sroa.730.0..sroa_idx33, align 8
  %.sroa.835.0.copyload39 = load i64, ptr %.sroa.835.0..sroa_idx38, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.fj = load ptr, ptr %i.bq, align 8, !alias.scope !50121, !noalias !50124, !nonnull !15, !noundef !15
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.dm ; 4 uses
  store i64 %.sroa.027.0, ptr %i.fk, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %.sroa.730.0, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %.sroa.835.0, ptr %.sroa.7340.0..sroa_idx, align 8
  %.sroa.8341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i16 %.sroa.0.0.copyload.i199, ptr %.sroa.8341.0..sroa_idx, align 8
  %i.fl = add i64 %i.dm, 1
  store i64 %i.fl, ptr %i.br, align 8
  %i.fm = icmp samesign ult i64 %.sroa.0104.1569, %.sroa.0101.0370390655 ; 2 uses
  %i.fn = zext i1 %i.fm to i64
  %.sroa.0104.1 = add nuw nsw i64 %.sroa.0104.1569, %i.fn
  br i1 %i.fm, label %bb.ag, label %._crit_edge

bb.bh:                                            ; preds = %.thread516
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @934, ptr %i.fo, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit"

bb.bi:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hde4fd9e5f7be4561E.exit"
  %lpad.thr_comm499 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.dw, label %bb.t, label %.split672

.split672:                                        ; preds = %bb.bi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ey, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 2) #45
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
  br label %bb.u

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit": ; preds = %bb.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h4c0a033bb4226201E.exit", %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h82526423d7af7627E.exit", %.thread485, %bb.at, %.thread463, %bb.bb, %bb.ai
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$roaring..bitmap..container..Container$GT$$GT$17h143a297978506053E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit195": ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$$u5b$u16$u3b$$u20$2$u5d$$GT$$GT$17h5f6e8a6bbce5e931E.exit", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit195"
  br i1 %i.ap, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252", label %bb.bk

bb.bk:                                            ; preds = %.thread520, %bb.bj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50166
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252": ; preds = %bb.bj, %bb.bk
  switch i64 %.sroa.0279.0403639, label %bb.bl [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"
  ]

bb.bl:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0385638) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0385638, i64 noundef %.sroa.0279.0403639, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !50169
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit252.thread": ; preds = %bb.p
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.fp, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit206"

"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h7820812a2bec25d8E.exit": ; preds = %bb.q, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4d0fc8aa45fec584E.exit185"
  resume { ptr, i32 } %.pn130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN7tracing4span4Span3log17hac48bcd7604f5552E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 13, 22) %2, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 17 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !align !569, !noundef !15 ; 13 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !range !2915, !noundef !15
  %switch.offset = sub nuw nsw i64 5, %i.h
  %i.i = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.j = icmp ult i64 %i.i, 6
  tail call void @llvm.assume(i1 %i.j)
  %.not123 = icmp samesign ugt i64 %switch.offset, %i.i
  br i1 %.not123, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %bb.c, %bb.j, %bb.k, %bb.a
  ret void

bb.c:                                             ; preds = %switch.lookup
  %i.k = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  store i64 5, ptr %i.e, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.5103.0..sroa_idx, align 8
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %.sroa.7104.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !15, !nonnull !15
  %i.p = call noundef zeroext i1 %i.o(ptr noundef align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  br i1 %i.p, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %0, align 8, !range !1177, !noundef !15
  %.not124 = icmp eq i64 %i.q, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  br i1 %.not124, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = load ptr, ptr %i.r, align 8, !align !533, !noundef !15 ; 2 uses
  %.not128.not = icmp eq ptr %i.s, null
  br i1 %.not128.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.r, align 8, !align !533, !noundef !15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.v = load i64, ptr %i.u, align 8
  %.not125 = icmp eq ptr %i.t, null               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !align !533, !noundef !15 ; 2 uses
  %.not126.not = icmp eq ptr %i.x, null
  %. = select i1 %.not125, i64 2, i64 1
  %.141 = select i1 %.not125, i64 undef, i64 %i.v
  br i1 %.not126.not, label %bb.k, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.z = load i64, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %..sroa.530.sroa.4.0 = phi i64 [ %i.z, %bb.g ], [ undef, %bb.e ]
  %..sroa.028.0 = phi i64 [ 1, %bb.g ], [ 2, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !align !533, !noundef !15 ; 2 uses
  %.not129.not = icmp eq ptr %i.ab, null
  br i1 %.not129.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.556.sroa.4.0 = phi i64 [ %i.ad, %bb.i ], [ undef, %bb.h ]
  %.sroa.054.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !range !752, !noundef !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !range !1666, !noundef !15
  store i64 %i.aj, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h90f15cc8560a1477E", ptr %.sroa.445.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ak, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE", ptr %.sroa.449.0..sroa_idx, align 8
  %i.al = trunc nuw i32 %i.af to i1
  %.sroa.559.0 = select i1 %i.al, i32 %i.ah, i32 undef
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @2541, ptr %i.an, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr null, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %..sroa.028.0, ptr %i.d, align 8
  %.sroa.552.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.s, ptr %.sroa.552.0..sroa_idx53, align 8
  %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %..sroa.530.sroa.4.0, ptr %.sroa.552.sroa.4.0..sroa.552.0..sroa_idx53.sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.054.0, ptr %i.ao, align 8
  %.sroa.556.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ab, ptr %.sroa.556.0..sroa_idx57, align 8
  %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.556.sroa.4.0, ptr %.sroa.556.sroa.4.0..sroa.556.0..sroa_idx57.sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.af, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %.sroa.559.0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !15, !nonnull !15
  call void %i.as(ptr noundef align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

.sink.split:                                      ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %.sink.split
  %.sroa.097.0 = phi i64 [ 1, %.sink.split ], [ 2, %bb.f ]
  %.sroa.7.sroa.6.1 = phi i64 [ %i.au, %.sink.split ], [ undef, %bb.f ]
  %.sroa.021.3.in = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.021.3 = load i32, ptr %.sroa.021.3.in, align 8, !range !752, !noundef !15 ; 2 uses
  %.sroa.623.3.in = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.623.3 = load i32, ptr %.sroa.623.3.in, align 4
  %i.av = trunc nuw i32 %.sroa.021.3 to i1
  %.sroa.623.3. = select i1 %i.av, i32 %.sroa.623.3, i32 undef
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  store i64 %., ptr %i.a, align 8
  %.sroa.9.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %.sroa.9.0..sroa_idx96, align 8
  %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx96.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.141, ptr %.sroa.9.sroa.8.0..sroa.9.0..sroa_idx96.sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.097.0, ptr %i.ay, align 8
  %.sroa.7.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx99, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx99.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.7.sroa.6.1, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx99.sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %.sroa.021.3, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %.sroa.623.3., ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !15, !nonnull !15
  call void %i.bc(ptr noundef align 1 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$milli..prompt..error..RenderPromptErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc8f72b3b177ef0bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !286, !noundef !15
  %.not = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
