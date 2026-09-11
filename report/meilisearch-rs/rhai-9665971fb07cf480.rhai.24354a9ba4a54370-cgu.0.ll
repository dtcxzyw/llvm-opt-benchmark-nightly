Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$12parse_switch17h830ffb40b48321c4E":bb.a
  %i.rq = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !nonnull !55, !align !56, !noundef !55
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8, !invariant.load !55, !nonnull !55
  %i.ru = invoke { ptr, ptr } %i.rt(ptr noundef nonnull align 1 %i.rp)
          to label %.noexc461 unwind label %.loopexit844, !inline_history !100 ; 2 uses

.noexc461:                                        ; preds = %bb.gn
  %i.rv = extractvalue { ptr, ptr } %i.ru, 0      ; 4 uses
  %i.rw = extractvalue { ptr, ptr } %i.ru, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8, !invariant.load !55, !nonnull !55
  invoke void %i.ry(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef align 1 %i.rv)
          to label %.noexc462 unwind label %.loopexit844, !inline_history !100

.noexc462:                                        ; preds = %.noexc461
  %i.rz = load i128, ptr %i.e, align 16, !noundef !55
  %i.sa = icmp ne i128 %i.rz, 71727358734286728294105912848098828593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not3.i = icmp eq ptr %i.rv, null
  %or.cond.i459 = or i1 %.not3.i, %i.sa
  br i1 %or.cond.i459, label %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17hdda2877fead0afb5E.exit.thread.i, label %bb.gr, !prof !77

.thread726:                                       ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6553.0.copyload) ]
  %.val396728 = load i64, ptr %.sroa.6553.0.copyload, align 8, !alias.scope !39250, !noundef !55
  %i.sb = getelementptr i8, ptr %.sroa.6553.0.copyload, i64 8
  %.val397729 = load i64, ptr %i.sb, align 8, !alias.scope !39251, !noundef !55
  br label %bb.hc

_ZN4rhai5types7dynamic7Dynamic12downcast_ref17hdda2877fead0afb5E.exit.thread.i: ; preds = %.noexc462, %bb.gm
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3276) #70
          to label %.noexc463 unwind label %.loopexit.split-lp845

.noexc463:                                        ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17hdda2877fead0afb5E.exit.thread.i
  unreachable

bb.go:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic9read_lock17h09d44aaf2ca8d291E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao, i8 %.val406, ptr %.val407)
          to label %bb.gt unwind label %bb.gj

.loopexit844:                                     ; preds = %.noexc461, %bb.gn
  %lpad.loopexit846 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp845:                            ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17hdda2877fead0afb5E.exit.thread.i
  %lpad.loopexit.split-lp847 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit.split-lp845, %.loopexit844
  %lpad.phi848 = phi { ptr, i32 } [ %lpad.loopexit846, %.loopexit844 ], [ %lpad.loopexit.split-lp847, %.loopexit.split-lp845 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6553.0.copyload) ]
  %i.sc = atomicrmw sub ptr %.sroa.6553.0.copyload, i32 1 release, align 4
  %i.sd = add i32 %i.sc, -1                       ; 2 uses
  %i.se = and i32 %i.sd, -1073741825
  %or.cond.not.i.i.i.i = icmp eq i32 %i.se, -2147483648
  br i1 %or.cond.not.i.i.i.i, label %bb.gq, label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit", !prof !68

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.6553.0.copyload, i32 noundef %i.sd)
          to label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit" unwind label %bb.cb

bb.gr:                                            ; preds = %.noexc462
  %.val396 = load i64, ptr %i.rv, align 8, !alias.scope !39250, !noundef !55 ; 2 uses
  %i.sf = getelementptr i8, ptr %i.rv, i64 8
  %.val397 = load i64, ptr %i.sf, align 8, !alias.scope !39251, !noundef !55 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6553.0.copyload) ]
  %i.sg = atomicrmw sub ptr %.sroa.6553.0.copyload, i32 1 release, align 4
  %i.sh = add i32 %i.sg, -1                       ; 2 uses
  %i.si = and i32 %i.sh, -1073741825
  %or.cond.not.i.i.i.i465 = icmp eq i32 %i.si, -2147483648
  br i1 %or.cond.not.i.i.i.i465, label %bb.gs, label %bb.hc, !prof !68

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.6553.0.copyload, i32 noundef %i.sh)
          to label %bb.hc unwind label %bb.gj

bb.gt:                                            ; preds = %bb.go
  %i.sj = load i64, ptr %i.ao, align 8, !range !63, !noundef !55
  %i.sk = trunc nuw i64 %i.sj to i1
  br i1 %i.sk, label %bb.gu, label %bb.hj

bb.gu:                                            ; preds = %bb.gt
  %.sroa.0554.0.copyload = load ptr, ptr %i.et, align 8 ; 3 uses
  %.sroa.6555.0.copyload = load ptr, ptr %.sroa.6555.0..sroa_idx.a, align 8 ; 10 uses
  %.not.i468 = icmp eq ptr %.sroa.0554.0.copyload, null
  br i1 %.not.i468, label %.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.val.i469 = load i8, ptr %.sroa.0554.0.copyload, align 8, !range !67, !noundef !55
  %cond.i.i470 = icmp eq i8 %.val.i469, 10
  br i1 %cond.i.i470, label %bb.gw, label %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17h635daedbe39b8f4bE.exit.thread.i

bb.gw:                                            ; preds = %bb.gv
  %i.sl = getelementptr i8, ptr %.sroa.0554.0.copyload, i64 8
  %.val4.i471 = load ptr, ptr %i.sl, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.sm = load ptr, ptr %.val4.i471, align 8, !nonnull !55, !align !61, !noundef !55
  %i.sn = getelementptr inbounds nuw i8, ptr %.val4.i471, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !nonnull !55, !align !56, !noundef !55
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 32
  %i.sq = load ptr, ptr %i.sp, align 8, !invariant.load !55, !nonnull !55
  %i.sr = invoke { ptr, ptr } %i.sq(ptr noundef nonnull align 1 %i.sm)
          to label %.noexc475 unwind label %.loopexit839, !inline_history !102 ; 2 uses

.noexc475:                                        ; preds = %bb.gw
  %i.ss = extractvalue { ptr, ptr } %i.sr, 0      ; 5 uses
  %i.st = extractvalue { ptr, ptr } %i.sr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !invariant.load !55, !nonnull !55
  invoke void %i.sv(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef align 1 %i.ss)
          to label %.noexc476 unwind label %.loopexit839, !inline_history !102

.noexc476:                                        ; preds = %.noexc475
  %i.sw = load i128, ptr %i.d, align 16, !noundef !55
  %i.sx = icmp ne i128 %i.sw, -155665897932629991761817536134852449801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not3.i472 = icmp eq ptr %i.ss, null
  %or.cond.i473 = or i1 %.not3.i472, %i.sx
  br i1 %or.cond.i473, label %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17h635daedbe39b8f4bE.exit.thread.i, label %bb.gz, !prof !77

.thread:                                          ; preds = %bb.gu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6555.0.copyload) ]
  %i.sy = load i64, ptr %.sroa.6555.0.copyload, align 8, !alias.scope !39252, !noalias !39253, !noundef !55
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.6555.0.copyload, i64 8
  %i.ta = load i64, ptr %i.sz, align 8, !alias.scope !39254, !noalias !39253, !noundef !55
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.6555.0.copyload, i64 16
  %i.tc = load i8, ptr %i.tb, align 8, !range !57, !alias.scope !39255, !noalias !39253, !noundef !55
  br label %bb.hb

_ZN4rhai5types7dynamic7Dynamic12downcast_ref17h635daedbe39b8f4bE.exit.thread.i: ; preds = %.noexc476, %bb.gv
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3276) #70
          to label %.noexc477 unwind label %.loopexit.split-lp840

.noexc477:                                        ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17h635daedbe39b8f4bE.exit.thread.i
  unreachable

.loopexit839:                                     ; preds = %.noexc475, %bb.gw
  %lpad.loopexit841 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp840:                            ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_ref17h635daedbe39b8f4bE.exit.thread.i
  %lpad.loopexit.split-lp842 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gx:                                            ; preds = %.loopexit.split-lp840, %.loopexit839
  %lpad.phi843 = phi { ptr, i32 } [ %lpad.loopexit841, %.loopexit839 ], [ %lpad.loopexit.split-lp842, %.loopexit.split-lp840 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6555.0.copyload) ]
  %i.td = atomicrmw sub ptr %.sroa.6555.0.copyload, i32 1 release, align 4
  %i.te = add i32 %i.td, -1                       ; 2 uses
  %i.tf = and i32 %i.te, -1073741825
  %or.cond.not.i.i.i.i478 = icmp eq i32 %i.tf, -2147483648
  br i1 %or.cond.not.i.i.i.i478, label %bb.gy, label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit", !prof !68

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.6555.0.copyload, i32 noundef %i.te)
          to label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit" unwind label %bb.cb

bb.gz:                                            ; preds = %.noexc476
  %i.tg = load i64, ptr %i.ss, align 8, !alias.scope !39252, !noalias !39253, !noundef !55 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.ti = load i64, ptr %i.th, align 8, !alias.scope !39254, !noalias !39253, !noundef !55 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.tk = load i8, ptr %i.tj, align 8, !range !57, !alias.scope !39255, !noalias !39253, !noundef !55 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6555.0.copyload) ]
  %i.tl = atomicrmw sub ptr %.sroa.6555.0.copyload, i32 1 release, align 4
  %i.tm = add i32 %i.tl, -1                       ; 2 uses
  %i.tn = and i32 %i.tm, -1073741825
  %or.cond.not.i.i.i.i480 = icmp eq i32 %i.tn, -2147483648
  br i1 %or.cond.not.i.i.i.i480, label %bb.ha, label %bb.hb, !prof !68

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.6555.0.copyload, i32 noundef %i.tm)
          to label %bb.hb unwind label %bb.gj

bb.hb:                                            ; preds = %.thread, %bb.ha, %bb.gz
  %i.to = phi i8 [ %i.tc, %.thread ], [ %i.tk, %bb.ha ], [ %i.tk, %bb.gz ]
  %i.tp = phi i64 [ %i.ta, %.thread ], [ %i.ti, %bb.ha ], [ %i.ti, %bb.gz ] ; 2 uses
  %i.tq = phi i64 [ %i.sy, %.thread ], [ %i.tg, %bb.ha ], [ %i.tg, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.tr = trunc nuw i8 %i.to to i1
  %.not303 = icmp sgt i64 %i.tq, %i.tp
  %or.cond = or i1 %.not303, %i.tr
  br i1 %or.cond, label %.noexc, label %.cont560

bb.hc:                                            ; preds = %bb.gs, %.thread726, %bb.gr
  %.sroa.0125.sroa.6.0.ph = phi i64 [ %.val397, %bb.gs ], [ %.val397, %bb.gr ], [ %.val397729, %.thread726 ] ; 2 uses
  %.sroa.0125.sroa.0.0.ph = phi i64 [ %.val396, %bb.gs ], [ %.val396, %bb.gr ], [ %.val396728, %.thread726 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not829 = icmp slt i64 %.sroa.0125.sroa.0.0.ph, %.sroa.0125.sroa.6.0.ph
  br i1 %.not829, label %.cont560, label %.noexc

.cont560:                                         ; preds = %bb.hb, %bb.hc
  %.sroa.0125.sroa.6.0738757764776 = phi i64 [ %.sroa.0125.sroa.6.0.ph, %bb.hc ], [ %i.tq, %bb.hb ]
  %.sroa.6126.0740752766773 = phi i8 [ 2, %bb.hc ], [ 0, %bb.hb ]
  %.sroa.0.0 = phi i64 [ %.sroa.0125.sroa.0.0.ph, %bb.hc ], [ %i.oj, %bb.hb ]
  %.sroa.9.0 = phi i64 [ %i.oj, %bb.hc ], [ %i.tp, %bb.hb ]
  %i.ts = load i64, ptr %i.ee, align 8, !alias.scope !39256, !noalias !39257, !noundef !55 ; 2 uses
  %i.tt = icmp ugt i64 %i.ts, 3                   ; 2 uses
  %i.tu = load ptr, ptr %i.ca, align 8, !alias.scope !39256, !noalias !39257, !nonnull !55
  %.sink10.i.i486 = select i1 %i.tt, ptr %i.tu, ptr %i.ca
  %.sink9.i.i487 = select i1 %i.tt, ptr %i.es, ptr %i.ee ; 2 uses
  %.sink.i.i488 = call i64 @llvm.umax.i64(i64 %i.ts, i64 3)
  %i.tv = load i64, ptr %.sink9.i.i487, align 8, !alias.scope !39258, !noalias !39259, !noundef !55 ; 2 uses
  %i.tw = icmp eq i64 %i.tv, %.sink.i.i488
  br i1 %i.tw, label %bb.hd, label %bb.he, !prof !66

bb.hd:                                            ; preds = %.cont560
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hdf857f9cf64b6542E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ca)
          to label %.noexc492 unwind label %bb.gj

.noexc492:                                        ; preds = %bb.hd
  %i.tx = load ptr, ptr %i.ca, align 8, !alias.scope !39258, !noalias !39259, !nonnull !55, !noundef !55
  %.pre.i491 = load i64, ptr %i.es, align 8, !alias.scope !39258, !noalias !39259
  br label %bb.he

bb.he:                                            ; preds = %.noexc492, %.cont560
  %i.ty = phi i64 [ %.pre.i491, %.noexc492 ], [ %i.tv, %.cont560 ]
  %.sroa.01.0.i489 = phi ptr [ %i.es, %.noexc492 ], [ %.sink9.i.i487, %.cont560 ] ; 2 uses
  %.sroa.0.0.i490 = phi ptr [ %i.tx, %.noexc492 ], [ %.sink10.i.i486, %.cont560 ]
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i490, i64 %i.ty ; 4 uses
  store i64 %.sroa.0.0, ptr %i.tz, align 8
  %.sroa.4566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %.sroa.0125.sroa.6.0738757764776, ptr %.sroa.4566.0..sroa_idx, align 8
  %.sroa.5567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.5567.0..sroa_idx, align 8
  %.sroa.6568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i8 %.sroa.6126.0740752766773, ptr %.sroa.6568.0..sroa_idx, align 8
  %i.ua = load i64, ptr %.sroa.01.0.i489, align 8, !alias.scope !39258, !noalias !39259, !noundef !55
  %i.ub = add i64 %i.ua, 1
  store i64 %i.ub, ptr %.sroa.01.0.i489, align 8, !alias.scope !39258, !noalias !39259
  br label %.noexc

.noexc:                                           ; preds = %bb.hc, %bb.he, %bb.hb, %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !39260)
  %i.uc = load atomic ptr, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE acquire, align 8
  %.not830 = icmp eq ptr %i.uc, inttoptr (i64 2 to ptr)
  %.val836 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 8), align 8, !range !63
  %i.ud = trunc nuw i64 %.val836 to i1
  %i.ue = select i1 %.not830, i1 %i.ud, i1 false
  br i1 %i.ue, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.noexc
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 16), align 8 ; 2 uses
  %.val832 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 24), align 8 ; 2 uses
  %i.uf = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN4rhai6config7hashing12HASHING_SEED17h27f2e76f87a01d6fE, i64 32), align 8 ; 3 uses
  %i.ug = extractelement <2 x i64> %i.uf, i64 0
  %i.uh = extractelement <2 x i64> %i.uf, i64 1
  %i.ui = or i64 %i.ug, %i.uh
  %i.uj = or i64 %i.ui, %.val
  %i.uk = or i64 %i.uj, %.val832
  %i.ul = icmp eq i64 %i.uk, 0
  br i1 %i.ul, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf, %.noexc
  %i.um = load atomic ptr, ptr @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E acquire, align 8 ; 2 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %bb.hh, label %.noexc331, !prof !66

bb.hh:                                            ; preds = %bb.hg
  %i.uo = invoke noundef align 8 dereferenceable(64) ptr @"_ZN9once_cell4race8once_box16OnceBox$LT$T$GT$4init17h356f4c85e7ef4921E"(ptr noundef nonnull align 8 @_ZN5ahash12random_state15get_fixed_seeds5SEEDS17hb5e35b2bbb578097E)
          to label %.noexc331 unwind label %bb.gj

.noexc331:                                        ; preds = %bb.hg, %bb.hh
  %.sroa.0.0.i493 = phi ptr [ %i.um, %bb.hg ], [ %i.uo, %bb.hh ] ; 3 uses
  %i.up = load i64, ptr %.sroa.0.0.i493, align 8, !noalias !39260, !noundef !55
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i493, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !noalias !39260, !noundef !55
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i493, i64 16
  %i.ut = load <2 x i64>, ptr %i.us, align 8, !noalias !39260
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit

bb.hi:                                            ; preds = %bb.hf
  %i.uu = xor i64 %.val, 4983270260364809079
  %i.uv = xor i64 %.val832, -4732044268327596948
  %i.uw = xor <2 x i64> %i.uf, <i64 -4563226453097033507, i64 4577018097722394903>
  br label %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit

bb.hj:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.ux = load i64, ptr %i.ee, align 8, !alias.scope !39261, !noalias !39262, !noundef !55 ; 2 uses
  %i.uy = icmp ugt i64 %i.ux, 3
  %i.uz = load i64, ptr %i.es, align 8, !alias.scope !39261, !noalias !39262
  %.sink10.i484 = select i1 %i.uy, i64 %i.uz, i64 %i.ux
  %i.va = icmp ne i64 %.sink10.i484, 0
  %i.vb = and i8 %.val406, 14
  %switch = icmp eq i8 %i.vb, 4
  %or.cond828 = and i1 %switch, %i.va
  br i1 %or.cond828, label %bb.hk, label %.noexc

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 12, ptr %i.am, align 8
  %i.vc = invoke fastcc { i16, i16 } @_ZN4rhai3ast4expr4Expr14start_position17h6e2b0253b346af39E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %bb.hm unwind label %bb.ho     ; 2 uses

bb.hl:                                            ; preds = %bb.hm
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit"

bb.hm:                                            ; preds = %bb.hk
  %i.ve = extractvalue { i16, i16 } %i.vc, 0
  %i.vf = extractvalue { i16, i16 } %i.vc, 1
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.am, i16 noundef %i.ve, i16 noundef %i.vf)
          to label %bb.hn unwind label %bb.hl

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ar)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit496" unwind label %.loopexit.split-lp, !inline_history !73

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit496": ; preds = %bb.hn, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as)
          to label %bb.ib unwind label %.loopexit.split-lp850.a

bb.ho:                                            ; preds = %bb.hk
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr61drop_in_place$LT$rhai..types..parse_error..ParseErrorType$GT$17h6d31a0b49b4b72d9E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.am) #72
  br label %"_ZN4core3ptr100drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hb5c6b893c163e63cE.exit"

_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit: ; preds = %bb.hi, %.noexc331
  %storemerge1415 = phi i64 [ %i.uv, %bb.hi ], [ %i.ur, %.noexc331 ]
  %storemerge1414 = phi i64 [ %i.uu, %bb.hi ], [ %i.up, %.noexc331 ]
  %i.vi = phi <2 x i64> [ %i.uw, %bb.hi ], [ %i.ut, %.noexc331 ]
  store i64 %storemerge1415, ptr %i.ev, align 16, !alias.scope !39260
  store i64 %storemerge1414, ptr %i.ew, align 8, !alias.scope !39260
  store <2 x i64> %i.vi, ptr %i.al, align 16, !alias.scope !39260
  invoke fastcc void @"_ZN66_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..hash..Hash$GT$4hash17h2ea860512ae56935E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar, ptr noalias noundef align 8 dereferenceable(32) %i.al)
          to label %bb.hp unwind label %bb.gj

bb.hp:                                            ; preds = %_ZN4rhai4func7hashing10get_hasher17hfd55d227dd606c81E.exit
  %i.vj = load i64, ptr %i.ev, align 16, !noundef !55 ; 2 uses
  %i.vk = load i64, ptr %i.ew, align 8, !noundef !55
  %i.vl = zext i64 %i.vj to i128
  %i.vm = zext i64 %i.vk to i128
  %i.vn = mul nuw i128 %i.vm, %i.vl               ; 2 uses
  %i.vo = lshr i128 %i.vn, 64
  %i.vp = xor i128 %i.vo, %i.vn
  %i.vq = trunc i128 %i.vp to i64                 ; 2 uses
  %i.vr = call i64 @llvm.fshl.i64(i64 %i.vq, i64 %i.vq, i64 %i.vj) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39263)
  call void @llvm.experimental.noalias.scope.decl(metadata !39264)
  call void @llvm.experimental.noalias.scope.decl(metadata !39265)
  %i.vs = lshr i64 %i.vr, 57
  %i.vt = trunc nuw nsw i64 %i.vs to i8           ; 3 uses
  %i.vu = load i64, ptr %i.ey, align 8, !alias.scope !39266, !noalias !39267, !noundef !55 ; 3 uses
  %i.vv = load ptr, ptr %i.cb, align 8, !alias.scope !39266, !noalias !39267, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.vt, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hs, %bb.hp
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.hp ], [ %i.wm, %bb.hs ]
  %.pn.i.i = phi i64 [ %i.vr, %bb.hp ], [ %i.wn, %bb.hs ]
  %.sroa.01.0.i.i.i497 = and i64 %.pn.i.i, %i.vu  ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %.sroa.01.0.i.i.i497
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.vw, align 1, !noalias !39268 ; 2 uses
  %i.vx = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.vy = bitcast <16 x i1> %i.vx to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.vy, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.hq, %bb.hr
  %.sroa.06.0.i33.i.i = phi i16 [ %i.wl, %bb.hr ], [ %i.vy, %bb.hq ] ; 3 uses
  %i.vz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.wa = zext nneg i16 %i.vz to i64
  %i.wb = add i64 %.sroa.01.0.i.i.i497, %i.wa
  %i.wc = and i64 %i.wb, %i.vu
  %i.wd = sub nsw i64 0, %i.wc
  %i.we = getelementptr inbounds [32 x i8], ptr %i.vv, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds i8, ptr %i.we, i64 -32
  %.val3.i.i.i = load i64, ptr %i.wf, align 8, !noalias !39269, !noundef !55
  %i.wg = icmp eq i64 %.val3.i.i.i, %i.vr
  br i1 %i.wg, label %.loopexit, label %bb.hr, !prof !74

._crit_edge.i.i:                                  ; preds = %bb.hr, %bb.hq
  %i.wh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.wi = bitcast <16 x i1> %i.wh to i16
  %i.wj = icmp eq i16 %i.wi, 0
  br i1 %i.wj, label %bb.hs, label %bb.ht, !prof !66

bb.hr:                                            ; preds = %.lr.ph.i.i
  %i.wk = add i16 %.sroa.06.0.i33.i.i, -1
  %i.wl = and i16 %i.wk, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.wl, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.hs:                                            ; preds = %._crit_edge.i.i
  %i.wm = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.wn = add i64 %.sroa.01.0.i.i.i497, %i.wm
  br label %bb.hq

bb.ht:                                            ; preds = %._crit_edge.i.i
  %i.wo = load i64, ptr %i.ez, align 8, !alias.scope !39270, !noalias !39271, !noundef !55
  %i.wp = icmp eq i64 %i.wo, 0
  br i1 %i.wp, label %bb.hu, label %bb.hv, !prof !66

bb.hu:                                            ; preds = %bb.ht
  %i.wq = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h92108be9e7e5ba8eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cb, i64 noundef 1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ex, i1 noundef zeroext true)
          to label %.noexc500 unwind label %bb.gj ; 0 uses

.noexc500:                                        ; preds = %bb.hu
  %.val5.i.i.pre = load ptr, ptr %i.cb, align 8, !alias.scope !39272, !noalias !39273
  %.val6.i.i.pre = load i64, ptr %i.ey, align 8, !alias.scope !39272, !noalias !39273
  br label %bb.hv

bb.hv:                                            ; preds = %.noexc500, %bb.ht
  %.val6.i.i = phi i64 [ %.val6.i.i.pre, %.noexc500 ], [ %i.vu, %bb.ht ] ; 4 uses
  %.val5.i.i = phi ptr [ %.val5.i.i.pre, %.noexc500 ], [ %i.vv, %bb.ht ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39272)
  %.sroa.0.04.i.i.i.i = and i64 %.val6.i.i, %i.vr ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %.sroa.0.04.i.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i.i = load <16 x i8>, ptr %i.wr, align 1, !noalias !39274
  %i.ws = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i.i, zeroinitializer
end_hunk_0
