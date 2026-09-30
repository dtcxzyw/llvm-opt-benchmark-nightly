Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a
.noexc114.i.i:                                    ; preds = %bb.uo
  unreachable

bb.up:                                            ; preds = %bb.un
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4688
  %i.bsk = trunc nuw i32 %.sroa.030.0209.i.i to i1 ; 2 uses
  %.80.i.i = select i1 %i.bsk, i8 0, i8 2
  %.sroa.533.0.81.i.i = select i1 %i.bsk, i32 %.sroa.533.0208.i.i, i32 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i64 56, i1 false), !noalias !4688
  store i32 %.sroa.025.0210.i.i, ptr %i.auq, align 8, !noalias !4688
  store i32 %.sroa.533.0.81.i.i, ptr %.sroa.514.0..sroa_idx15.i.i, align 4, !noalias !4688
  store i8 %.80.i.i, ptr %.sroa.517.0..sroa_idx18.i.i, align 8, !noalias !4688
  %i.bsl = load i64, ptr %i.aug, align 8, !alias.scope !4717, !noalias !4718, !noundef !9 ; 3 uses
  %i.bsm = load i64, ptr %i.bp, align 8, !range !14, !alias.scope !4717, !noalias !4718, !noundef !9
  %i.bsn = icmp eq i64 %i.bsl, %i.bsm
  br i1 %i.bsn, label %bb.uq, label %bb.ut

bb.uq:                                            ; preds = %bb.up
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.ut unwind label %bb.ur, !noalias !4719

bb.ur:                                            ; preds = %bb.uq
  %i.bso = landingpad { ptr, i32 }
          cleanup
  %.sroa.42.0..sroa_idx.i.i555.le2013 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bog, ptr %.sroa.42.0..sroa_idx.i.i555.le2013, align 8, !noalias !4688
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bj) #42
          to label %.thread148.i.i unwind label %bb.us, !noalias !4690

bb.us:                                            ; preds = %bb.ur
  %i.bsp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4690
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i: ; preds = %.thread163.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bsi, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i64 56, i1 false), !noalias !4690
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsi, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bsq, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i64 48, i1 false), !noalias !4690
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bsi, i64 104
  store i8 2, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !4690
  store i64 2, ptr %i.bq, align 8, !noalias !4688
  store ptr %i.bsi, ptr %i.aud, align 8, !noalias !4688
  store i64 2, ptr %i.aue, align 8, !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4688
  br label %bb.uz

bb.ut:                                            ; preds = %bb.uq, %bb.up
  %i.bsr = load ptr, ptr %i.auf, align 8, !alias.scope !4717, !noalias !4718, !nonnull !9, !noundef !9
  %i.bss = getelementptr inbounds nuw [72 x i8], ptr %i.bsr, i64 %i.bsl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bss, ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 72, i1 false), !noalias !4690
  %i.bst = add i64 %i.bsl, 1
  store i64 %i.bst, ptr %i.aug, align 8, !alias.scope !4717, !noalias !4718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !4688
  %i.bsu = load i32, ptr %i.aum, align 8, !noalias !4688, !noundef !9
  %i.bsv = load i32, ptr %.sroa.7.0..sroa_idx.i.i558, align 8, !range !21, !noalias !4688, !noundef !9
  %i.bsw = load i32, ptr %i.aul, align 4, !noalias !4688
  %i.bsx = load i8, ptr %i.aur, align 4, !range !46, !noalias !4688, !noundef !9
  store i64 0, ptr %i.bq, align 8, !noalias !4688
  store ptr inttoptr (i64 8 to ptr), ptr %i.aud, align 8, !noalias !4688
  store i64 0, ptr %i.aue, align 8, !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4688
  invoke void @_RNvXsm_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %bb.uv unwind label %bb.uu, !noalias !4690, !inline_history !31

bb.uu:                                            ; preds = %bb.ut
  %i.bsy = landingpad { ptr, i32 }
          cleanup
  %.sroa.42.0..sroa_idx.i.i555.le2012 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bog, ptr %.sroa.42.0..sroa_idx.i.i555.le2012, align 8, !noalias !4688
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bm) #42
          to label %bb.uy unwind label %bb.ux, !noalias !4690, !inline_history !31

bb.uv:                                            ; preds = %bb.ut
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.uw, !noalias !4690, !inline_history !31

bb.uw:                                            ; preds = %bb.uv
  %i.bsz = landingpad { ptr, i32 }
          cleanup
  %.sroa.42.0..sroa_idx.i.i555.le2011 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bog, ptr %.sroa.42.0..sroa_idx.i.i555.le2011, align 8, !noalias !4688
  br label %bb.uy

bb.ux:                                            ; preds = %bb.uu
  %i.bta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4690, !inline_history !31
  unreachable

bb.uy:                                            ; preds = %bb.uw, %bb.uu
  %.pn.i.i.i563 = phi { ptr, i32 } [ %i.bsz, %bb.uw ], [ %i.bsy, %bb.uu ]
  %.val2.i.i.i = load ptr, ptr %i.aus, align 8, !alias.scope !4720, !noalias !4688, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef 80, i64 noundef 8) #45, !noalias !4690, !inline_history !31
  br label %.body119.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.uv
  %.val.i.i.i = load ptr, ptr %i.aus, align 8, !alias.scope !4720, !noalias !4688, !nonnull !9, !noundef !9
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #45, !noalias !4690, !inline_history !31
  br label %bb.uz

bb.uz:                                            ; preds = %bb.vc, %bb.vb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i
  %.sroa.038.1.i.i = phi i8 [ %i.bsx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.sroa.038.0207.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i ], [ %.sroa.038.0207.i.i, %bb.vb ], [ %.sroa.038.0207.i.i, %bb.vc ] ; 2 uses
  %.sroa.533.1.i.i = phi i32 [ %i.bsw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.sroa.533.0208.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i ], [ %.sroa.533.0208.i.i, %bb.vb ], [ %.sroa.533.0208.i.i, %bb.vc ] ; 2 uses
  %.sroa.030.1.i.i = phi i32 [ %i.bsv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.sroa.030.0209.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i ], [ %.sroa.030.0209.i.i, %bb.vb ], [ %.sroa.030.0209.i.i, %bb.vc ] ; 2 uses
  %.sroa.025.1.i.i = phi i32 [ %i.bsu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x.exit.i.i ], [ %.sroa.025.0210.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit115.i.i ], [ %.sroa.025.0210.i.i, %bb.vb ], [ %.sroa.025.0210.i.i, %bb.vc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.btb = icmp eq ptr %i.bog, %i.bod
  br i1 %i.btb, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.va:                                            ; preds = %bb.uo
  %i.btc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bl) #42
          to label %.thread148.i.i unwind label %bb.tp, !noalias !4690

bb.vb:                                            ; preds = %bb.uc, %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir8any_byte.exit.thread.i.i
  %i.btd = load ptr, ptr %i.aud, align 8, !alias.scope !4711, !noalias !4712, !nonnull !9, !noundef !9
  %i.bte = getelementptr inbounds nuw [56 x i8], ptr %i.btd, i64 %i.bqv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bte, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !noalias !4690
  %i.btf = add nuw nsw i64 %i.bqv, 1
  store i64 %i.btf, ptr %i.aue, align 8, !alias.scope !4711, !noalias !4712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4688
  br label %bb.uz

bb.vc:                                            ; preds = %bb.tz, %bb.ty
  %i.btg = load ptr, ptr %i.aud, align 8, !alias.scope !4708, !noalias !4709, !nonnull !9, !noundef !9
  %i.bth = getelementptr inbounds nuw [56 x i8], ptr %i.btg, i64 %i.bqz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bth, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 56, i1 false), !noalias !4690
  %i.bti = add i64 %i.bqz, 1
  store i64 %i.bti, ptr %i.aue, align 8, !alias.scope !4708, !noalias !4709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !4688
  br label %bb.uz

.thread148.i.i:                                   ; preds = %bb.va, %bb.ur, %.thread158.i.i
  %.pn75153.i.i = phi { ptr, i32 } [ %i.brx, %.thread158.i.i ], [ %i.btc, %bb.va ], [ %i.bso, %bb.ur ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bm) #42
          to label %.body119.i.i unwind label %bb.tp, !noalias !4690

bb.vd:                                            ; preds = %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !4688
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @218, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #41
          to label %bb.td unwind label %.loopexit.split-lp, !noalias !4690

bb.ve:                                            ; preds = %bb.sk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir7HirKindECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bo)
          to label %bb.vd unwind label %.loopexit.split-lp, !noalias !4690

bb.vf:                                            ; preds = %.body.i.i
  br i1 %.sroa.070.0.i.i, label %bb.vg, label %.body.i530

bb.vg:                                            ; preds = %bb.vf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq) #42
          to label %.body.i530 unwind label %bb.tp, !noalias !4690

.body.i530:                                       ; preds = %.body64.thread.i, %bb.ade, %bb.acy, %bb.aco, %.body64.i, %bb.acj, %bb.vh, %bb.vg, %bb.vf, %bb.tv
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22236.i, %.body64.thread.i ], [ %.pn20.i, %bb.acj ], [ %.pn77.pn.i.i, %bb.vf ], [ %i.bqo, %bb.tv ], [ %.pn77.pn.i.i, %bb.vg ], [ %.pn.i.i131.i, %bb.aco ], [ %i.btj, %bb.vh ], [ %.pn.i.i138.i, %bb.acy ], [ %lpad.thr_comm.split-lp244.i, %.body64.i ], [ %i.clk, %bb.ade ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules16HeaderConstraintEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.axu) #42
          to label %.thread706 unwind label %bb.abp

bb.vh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir3HirEEB1e_.exit.i.i
  %i.btj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i530

bb.vi:                                            ; preds = %.noexc.i562, %bb.ts, %bb.si
  %.sroa.0.sroa.7.0.i = phi i8 [ %.sroa.0.sroa.7.0.copyload179.i, %.noexc.i562 ], [ %.sroa.0.sroa.7.0.copyload177.i, %bb.ts ], [ %.sroa.6170.0.copyload.i, %bb.si ] ; 3 uses
  %.sroa.0.sroa.0.0.i = phi i64 [ %.sroa.0.sroa.0.0.copyload173.i, %.noexc.i562 ], [ %.sroa.0.sroa.0.0.copyload172.i, %bb.ts ], [ %.sroa.0165.0.copyload.i, %bb.si ] ; 6 uses
  %.sroa.11.0.i = phi i64 [ %.sroa.11.56.copyload164.i, %.noexc.i562 ], [ %.sroa.11.56.copyload162.i, %bb.ts ], [ 0, %bb.si ] ; 5 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.56.copyload160.i, %.noexc.i562 ], [ %.sroa.10.56.copyload158.i, %bb.ts ], [ inttoptr (i64 8 to ptr), %bb.si ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ %.sroa.6.56.copyload156.i, %.noexc.i562 ], [ %.sroa.6.56.copyload155.i, %bb.ts ], [ 0, %bb.si ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !4687
  store i64 %.sroa.0.sroa.0.0.i, ptr %i.ca, align 8, !noalias !4687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.6.i, i64 40, i1 false), !noalias !4687
  store i8 %.sroa.0.sroa.7.0.i, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !4687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.8.i, i64 7, i1 false), !noalias !4687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !4687
  store i64 %.sroa.6.0.i, ptr %i.bz, align 8, !noalias !4687
  store ptr %.sroa.10.0.i, ptr %.sroa.10.56..sroa_idx.i, align 8, !noalias !4687
  store i64 %.sroa.11.0.i, ptr %.sroa.11.56..sroa_idx.i, align 8, !noalias !4687
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.8.i)
  %i.btk = icmp ult i64 %.sroa.11.0.i, 128102389400760776
  call void @llvm.assume(i1 %i.btk)
  %i.btl = icmp eq i64 %.sroa.11.0.i, 0
  br i1 %i.btl, label %bb.xb, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.btm = load i16, ptr %i.avf, align 16, !alias.scope !4686, !noalias !4685, !noundef !9 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4721)
  call void @llvm.experimental.noalias.scope.decl(metadata !4722)
  call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  %i.btn = and i16 %i.btm, 1
  %.not.i31.i = icmp eq i16 %i.btn, 0             ; 4 uses
  %i.bto = and i16 %i.btm, 3
  %.not198.i.i = icmp eq i16 %i.bto, 0            ; 4 uses
  %i.btp = and i16 %i.btm, 64                     ; 3 uses
  %i.btq = lshr i16 %i.btm, 1
  %spec.select.i.i = and i16 %i.btq, 2
  %i.btr = shl nuw nsw i8 %.sroa.0.sroa.7.0.i, 5
  %i.bts = and i8 %i.btr, 32
  %i.btt = zext nneg i8 %i.bts to i16
  %.sroa.0119.1.i.i = or disjoint i16 %spec.select.i.i, %i.btt ; 3 uses
  %i.btu = icmp ne i64 %.sroa.0.sroa.0.0.i, 4
  call void @llvm.assume(i1 %i.btu)
  %i.btv = icmp eq i64 %.sroa.0.sroa.0.0.i, 3
  br i1 %i.btv, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  %i.btw = lshr exact i16 %i.btp, 3
  %spec.select201.i.i = or disjoint i16 %.sroa.0119.1.i.i, %i.btw ; 3 uses
  br i1 %.not.i31.i, label %bb.vn, label %bb.vm

bb.vl:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !4724
  invoke fastcc void @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler8c_regexp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ca, i32 noundef %.val269, i32 noundef %.val270)
          to label %.noexc38.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686

.noexc38.i:                                       ; preds = %bb.vl
  %i.btx = load i64, ptr %i.aj, align 8, !range !20, !noalias !4724, !noundef !9 ; 2 uses
  %i.bty = icmp eq i64 %i.btx, -1
  %i.btz = load i64, ptr %i.avg, align 8, !noalias !4724 ; 3 uses
  %i.bua = load ptr, ptr %i.avh, align 8, !noalias !4724 ; 3 uses
  br i1 %i.bty, label %bb.vp, label %bb.vq

bb.vm:                                            ; preds = %.noexc42.i, %bb.vk
  %.sroa.032.0.i.i = phi i32 [ %i.buj, %.noexc42.i ], [ 0, %bb.vk ] ; 2 uses
  br i1 %.not198.i.i, label %.lr.ph.i.i533, label %bb.vo

bb.vn:                                            ; preds = %bb.vk
  %.val65.i.i = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4722, !noalias !4725, !nonnull !9, !noundef !9
  %.val66.i.i = load i64, ptr %i.avs, align 8, !alias.scope !4722, !noalias !4725, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !4726)
  %i.bub = invoke fastcc noundef i32 @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler14intern_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val65.i.i, i64 noundef %.val66.i.i, i1 noundef zeroext false)
          to label %.noexc39.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686 ; 2 uses

.noexc39.i:                                       ; preds = %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4727
  store i32 %i.bub, ptr %i.avt, align 4, !noalias !4727
  store i16 %spec.select201.i.i, ptr %i.avu, align 2, !noalias !4727
  store i8 2, ptr %i.ac, align 8, !noalias !4727
  %.val3.i.i.i = load i64, ptr %i.avv, align 8, !alias.scope !4728, !noalias !4729, !noundef !9
  %i.buc = zext i32 %i.bub to i64                 ; 2 uses
  %i.bud = icmp ugt i64 %.val3.i.i.i, %i.buc
  br i1 %i.bud, label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit.i.i, label %.invoke.i537

.invoke.i537:                                     ; preds = %.noexc43.i, %.noexc39.i, %.noexc56.i, %.noexc52.i
  %i.bue = phi ptr [ @336, %.noexc56.i ], [ @336, %.noexc52.i ], [ @335, %.noexc39.i ], [ @335, %.noexc43.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bue) #46
          to label %.cont.i538 unwind label %.loopexit.split-lp.i528.loopexit.split-lp, !noalias !4686

.cont.i538:                                       ; preds = %.invoke.i537
  unreachable

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit.i.i: ; preds = %.noexc39.i
  %.val.i.i37.i = load ptr, ptr %i.avw, align 8, !alias.scope !4728, !noalias !4729, !nonnull !9, !noundef !9
  %i.buf = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i37.i, i64 %i.buc ; 2 uses
  %.sroa.03.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.buf, i64 8
  %.sroa.03.0.i.i.i.i = load ptr, ptr %.sroa.03.0.in.i.i.i.i, align 8, !noalias !4686, !nonnull !9, !noundef !9
  %.sroa.34.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.buf, i64 16
  %.sroa.34.0.i.i.i.i = load i64, ptr %.sroa.34.0.in.i.i.i.i, align 8, !noalias !4686, !noundef !9
  %i.bug = invoke { ptr, ptr } @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms13extract_atoms(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i.i.i, i64 noundef %.sroa.34.0.i.i.i.i, i16 noundef %spec.select201.i.i)
          to label %.noexc41.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686 ; 2 uses

.noexc41.i:                                       ; preds = %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit.i.i
  %i.buh = extractvalue { ptr, ptr } %i.bug, 0
  %i.bui = extractvalue { ptr, ptr } %i.bug, 1
  %i.buj = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_5atoms4AtomEL_ENvMsa_NtB6_5rulesNtB3a_14SubPatternAtom9from_atomB2I_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull %i.buh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bui)
          to label %.noexc42.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686

.noexc42.i:                                       ; preds = %.noexc41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4727
  br label %bb.vm

bb.vo:                                            ; preds = %bb.vm
  %i.buk = or disjoint i16 %spec.select201.i.i, 1 ; 2 uses
  %.val63.i.i = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4722, !noalias !4725, !nonnull !9, !noundef !9
  %.val64.i.i = load i64, ptr %i.avs, align 8, !alias.scope !4722, !noalias !4725, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  %i.bul = invoke fastcc noundef i32 @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler14intern_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val63.i.i, i64 noundef %.val64.i.i, i1 noundef zeroext true)
          to label %.noexc43.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686 ; 2 uses

.noexc43.i:                                       ; preds = %bb.vo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4731
  store i32 %i.bul, ptr %i.avx, align 4, !noalias !4731
  store i16 %i.buk, ptr %i.avy, align 2, !noalias !4731
  store i8 2, ptr %i.ab, align 8, !noalias !4731
  %.val3.i71.i.i = load i64, ptr %i.avv, align 8, !alias.scope !4732, !noalias !4729, !noundef !9
  %i.bum = zext i32 %i.bul to i64                 ; 2 uses
  %i.bun = icmp ugt i64 %.val3.i71.i.i, %i.bum
  br i1 %i.bun, label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit77.i.i, label %.invoke.i537

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit77.i.i: ; preds = %.noexc43.i
  %.val.i72.i.i = load ptr, ptr %i.avw, align 8, !alias.scope !4732, !noalias !4729, !nonnull !9, !noundef !9
  %i.buo = getelementptr inbounds nuw [24 x i8], ptr %.val.i72.i.i, i64 %i.bum ; 2 uses
  %.sroa.03.0.in.i.i73.i.i = getelementptr inbounds nuw i8, ptr %i.buo, i64 8
  %.sroa.03.0.i.i74.i.i = load ptr, ptr %.sroa.03.0.in.i.i73.i.i, align 8, !noalias !4686, !nonnull !9, !noundef !9
  %.sroa.34.0.in.i.i75.i.i = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  %.sroa.34.0.i.i76.i.i = load i64, ptr %.sroa.34.0.in.i.i75.i.i, align 8, !noalias !4686, !noundef !9
  %i.bup = invoke { ptr, ptr } @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms13extract_atoms(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i74.i.i, i64 noundef %.sroa.34.0.i.i76.i.i, i16 noundef %i.buk)
          to label %.noexc45.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686 ; 2 uses

.noexc45.i:                                       ; preds = %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit77.i.i
  %i.buq = extractvalue { ptr, ptr } %i.bup, 0
  %i.bur = extractvalue { ptr, ptr } %i.bup, 1
  %i.bus = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_5atoms4AtomEL_ENvMsa_NtB6_5rulesNtB3a_14SubPatternAtom9from_atomB2I_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull %i.buq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bur)
          to label %.noexc46.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686

.noexc46.i:                                       ; preds = %.noexc45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4731
  br label %.lr.ph.i.i533

.lr.ph.i.i533:                                    ; preds = %.noexc49.i, %.noexc46.i, %bb.vm
  %.sroa.032.1.i.i = phi i32 [ %.sroa.032.2.i.i, %.noexc49.i ], [ %.sroa.032.0.i.i, %.noexc46.i ], [ %.sroa.032.0.i.i, %bb.vm ]
  %.sroa.030.1.i35.i = phi i32 [ %.sroa.030.2.i.i, %.noexc49.i ], [ %i.bus, %.noexc46.i ], [ 0, %bb.vm ]
  %.idx.i36.i = mul nuw nsw i64 %.sroa.11.0.i, 72
  %i.but = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 %.idx.i36.i
  %i.buu = add nsw i64 %.sroa.11.0.i, -1
  %2 = lshr exact i16 %i.btp, 2
  %spec.select203.v.i.i = or disjoint i16 %2, 4
  br label %bb.wa

bb.vp:                                            ; preds = %.noexc38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4724
  br label %.loopexit264.i

bb.vq:                                            ; preds = %.noexc38.i
  %.sroa.638.0.copyload.i.i = load i8, ptr %.sroa.638.0..sroa_idx.i.i, align 8, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !4724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !4724
  store i64 %i.btx, ptr %i.ak, align 8, !noalias !4724
  store i64 %i.btz, ptr %.sroa.246.0..sroa_idx.i.i, align 8, !noalias !4724
  store ptr %i.bua, ptr %.sroa.347.0..sroa_idx.i.i, align 8, !noalias !4724
  %i.buv = zext i8 %.sroa.638.0.copyload.i.i to i16
  %i.buw = shl nuw nsw i16 %i.buv, 6
  %i.bux = lshr exact i16 %i.btp, 3
  %i.buy = or disjoint i16 %i.buw, %i.bux
  %.sroa.0127.1.i.i = or disjoint i16 %i.buy, %.sroa.0119.1.i.i ; 2 uses
  br i1 %.not198.i.i, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vv, %bb.vq
  %.sroa.030.2.i.i = phi i32 [ %i.bvf, %bb.vv ], [ 0, %bb.vq ]
  br i1 %.not.i31.i, label %bb.vz, label %bb.vw

bb.vs:                                            ; preds = %bb.vq
  %i.buz = ptrtoint ptr %i.bua to i64
  %i.bva = inttoptr i64 %i.btz to ptr             ; 2 uses
  %i.bvb = or disjoint i16 %.sroa.0127.1.i.i, 1
  %i.bvc = getelementptr inbounds nuw [40 x i8], ptr %i.bva, i64 %i.buz
  call void @llvm.experimental.noalias.scope.decl(metadata !4733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4724
  %i.bvd = load i64, ptr %i.xw, align 8, !alias.scope !4734, !noalias !4735, !noundef !9 ; 2 uses
  %i.bve = icmp ult i64 %i.bvd, 288230376151711744
  call void @llvm.assume(i1 %i.bve)
  %i.bvf = trunc i64 %i.bvd to i32                ; 2 uses
  store i32 %i.bvf, ptr %i.aa, align 4, !noalias !4736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4736
  store ptr %i.bva, ptr %i.z, align 8, !alias.scope !4737, !noalias !4738
  store ptr %i.bvc, ptr %i.avj, align 8, !alias.scope !4737, !noalias !4738
  store ptr %i.a, ptr %i.avk, align 8, !alias.scope !4737, !noalias !4738
  store ptr %i.aa, ptr %i.avl, align 8, !alias.scope !4737, !noalias !4738
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2c_INtNtB2g_6cloned6ClonedINtNtNtB2k_5slice4iter4IterNtNtBZ_2re10RegexpAtomEENCNvMs5_BX_NtBX_8Compiler7c_chain0ENCINvMs4_BX_B4r_15add_sub_patternB2Z_NvMsa_BV_BT_16from_regexp_atomB3S_E0EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.vt unwind label %bb.xa, !noalias !4686

bb.vt:                                            ; preds = %bb.vs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4736
  %i.bvg = load i64, ptr %i.xw, align 8, !alias.scope !4739, !noalias !4740, !noundef !9 ; 3 uses
  %i.bvh = load i64, ptr %i.avm, align 8, !range !14, !alias.scope !4739, !noalias !4740, !noundef !9
  %i.bvi = icmp eq i64 %i.bvg, %i.bvh
  br i1 %i.bvi, label %bb.vu, label %bb.vv

bb.vu:                                            ; preds = %bb.vt
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avm) #44
          to label %bb.vv unwind label %bb.xa, !noalias !4686

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %i.bvj = load ptr, ptr %i.avn, align 8, !alias.scope !4739, !noalias !4740, !nonnull !9, !noundef !9
  %i.bvk = getelementptr inbounds nuw [32 x i8], ptr %i.bvj, i64 %i.bvg ; 3 uses
  store i32 %i.bnt, ptr %i.bvk, align 8, !noalias !4741
  %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8
  store i8 5, ptr %.sroa.4.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !4741
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bvk, i64 10
  store i16 %i.bvb, ptr %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 2, !noalias !4741
  %i.bvl = add i64 %i.bvg, 1
  store i64 %i.bvl, ptr %i.xw, align 8, !alias.scope !4739, !noalias !4740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4724
  br label %bb.vr

bb.vw:                                            ; preds = %bb.vr
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i unwind label %bb.vx, !noalias !4686

bb.vx:                                            ; preds = %bb.vw
  %i.bvm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body47.i unwind label %bb.vy, !noalias !4686

bb.vy:                                            ; preds = %bb.vx
  %i.bvn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i: ; preds = %bb.vw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686

bb.vz:                                            ; preds = %bb.vr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4724
  store i16 %.sroa.0127.1.i.i, ptr %i.avo, align 2, !noalias !4724
  store i8 5, ptr %i.ai, align 8, !noalias !4724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4724
  %i.bvo = load ptr, ptr %.sroa.246.0..sroa_idx.i.i, align 8, !noalias !4724, !nonnull !9, !noundef !9 ; 3 uses
  %i.bvp = load i64, ptr %i.ak, align 8, !range !14, !noalias !4724, !noundef !9
  %i.bvq = load i64, ptr %.sroa.347.0..sroa_idx.i.i, align 8, !noalias !4724, !noundef !9 ; 2 uses
  %i.bvr = icmp ult i64 %i.bvq, 230584300921369396
  call void @llvm.assume(i1 %i.bvr)
  %i.bvs = getelementptr inbounds nuw [40 x i8], ptr %i.bvo, i64 %i.bvq
  store ptr %i.bvo, ptr %i.ah, align 8, !noalias !4724
  store i64 %i.bvp, ptr %i.avp, align 8, !noalias !4724
  store ptr %i.bvo, ptr %i.avq, align 8, !noalias !4724
  store ptr %i.bvs, ptr %i.avr, align 8, !noalias !4724
  %i.bvt = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB8_2re10RegexpAtomENvMsa_NtB6_5rulesNtB2o_14SubPatternAtom16from_regexp_atomB1V_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ah)
          to label %.noexc50.i unwind label %.loopexit.split-lp.i528.loopexit, !noalias !4686

.noexc50.i:                                       ; preds = %bb.vz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4724
  br label %.noexc49.i

.noexc49.i:                                       ; preds = %.noexc50.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i
  %.sroa.032.2.i.i = phi i32 [ %i.bvt, %.noexc50.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !4724
  br label %.lr.ph.i.i533

bb.wa:                                            ; preds = %bb.wi, %.lr.ph.i.i533
  %.sroa.030.3209.i.i = phi i32 [ %.sroa.030.1.i35.i, %.lr.ph.i.i533 ], [ %.sroa.030.5.i.i, %bb.wi ] ; 4 uses
  %.sroa.032.3208.i.i = phi i32 [ %.sroa.032.1.i.i, %.lr.ph.i.i533 ], [ %.sroa.032.4.i.i, %bb.wi ] ; 4 uses
  %.sroa.0135.0207.i.i = phi ptr [ %.sroa.10.0.i, %.lr.ph.i.i533 ], [ %i.bvu, %bb.wi ] ; 19 uses
  %.sroa.8.0206.i.i = phi i64 [ 0, %.lr.ph.i.i533 ], [ %i.bvv, %bb.wi ] ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 72 ; 2 uses
  %i.bvv = add nuw nsw i64 %.sroa.8.0206.i.i, 1
  %i.bvw = icmp eq i64 %.sroa.8.0206.i.i, %i.buu
  %spec.select203.i.i = select i1 %i.bvw, i16 %spec.select203.v.i.i, i16 0
  %.sroa.0137.0.i.i = or disjoint i16 %spec.select203.i.i, %.sroa.0119.1.i.i ; 4 uses
  %i.bvx = load i64, ptr %.sroa.0135.0207.i.i, align 8, !range !34, !alias.scope !4723, !noalias !4742, !noundef !9 ; 2 uses
  %i.bvy = icmp ne i64 %i.bvx, 4
  call void @llvm.assume(i1 %i.bvy)
  %i.bvz = icmp eq i64 %i.bvx, 3
  br i1 %i.bvz, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %bb.wa
  %i.bwa = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 8 ; 2 uses
  br i1 %.not198.i.i, label %bb.wd, label %bb.we

bb.wc:                                            ; preds = %bb.wa
  %i.bwb = getelementptr i8, ptr %.sroa.0135.0207.i.i, i64 48
  %.val61.i.i = load i8, ptr %i.bwb, align 8, !range !16, !alias.scope !4723, !noalias !4742, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4724
  invoke fastcc void @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler8c_regexp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0135.0207.i.i, i32 noundef %.val269, i32 noundef %.val270)
          to label %.noexc51.i unwind label %.loopexit.i534, !noalias !4686

.noexc51.i:                                       ; preds = %bb.wc
  %i.bwc = load i64, ptr %i.af, align 8, !range !20, !noalias !4724, !noundef !9 ; 2 uses
  %i.bwd = icmp eq i64 %i.bwc, -1
  br i1 %i.bwd, label %bb.wj, label %bb.wk

bb.wd:                                            ; preds = %.noexc55.i, %bb.wb
  %.sroa.030.4.i.i = phi i32 [ %i.bws, %.noexc55.i ], [ %.sroa.030.3209.i.i, %bb.wb ] ; 2 uses
  br i1 %.not.i31.i, label %bb.wg, label %bb.wi

bb.we:                                            ; preds = %bb.wb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7153.i.i)
  %i.bwe = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !4743)
  %i.bwf = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 64
  %i.bwg = load i8, ptr %i.bwf, align 8, !range !16, !alias.scope !4744, !noalias !4745, !noundef !9 ; 2 uses
  %i.bwh = icmp eq i8 %i.bwg, 2
  %i.bwi = load <2 x i32>, ptr %i.bwe, align 8, !alias.scope !4746, !noalias !4742
  br i1 %i.bwh, label %bb.wf, label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.wf:                                            ; preds = %bb.we
  %.sroa.7153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7153.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7153.0..sroa_idx.i.i, i64 3, i1 false), !alias.scope !4747, !noalias !4742
  br label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.wf, %bb.we
  %i.bwj = or disjoint i16 %.sroa.0137.0.i.i, 1   ; 2 uses
  %.val69.i.i = load ptr, ptr %i.bwa, align 8, !alias.scope !4723, !noalias !4742, !nonnull !9, !noundef !9
  %i.bwk = getelementptr i8, ptr %.sroa.0135.0207.i.i, i64 16
  %.val70.i.i = load i64, ptr %i.bwk, align 8, !alias.scope !4723, !noalias !4742, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %i.bwl = invoke fastcc noundef i32 @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler14intern_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val69.i.i, i64 noundef %.val70.i.i, i1 noundef zeroext true)
          to label %.noexc52.i unwind label %.loopexit.i534, !noalias !4686 ; 2 uses

.noexc52.i:                                       ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4749
  store i32 %i.bwl, ptr %i.awi, align 4, !noalias !4749
  store i32 %.sroa.030.3209.i.i, ptr %i.awj, align 8, !noalias !4749
  store <2 x i32> %i.bwi, ptr %i.awk, align 4, !noalias !4750
  store i8 %i.bwg, ptr %.sroa.6150.0..sroa_idx151.i.i, align 4, !noalias !4750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7153.0..sroa_idx154.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7153.i.i, i64 3, i1 false), !noalias !4750
  store i16 %i.bwj, ptr %i.awl, align 2, !noalias !4749
  store i8 3, ptr %i.y, align 8, !noalias !4749
  %.val3.i81.i.i = load i64, ptr %i.avv, align 8, !alias.scope !4751, !noalias !4752, !noundef !9
  %i.bwm = zext i32 %i.bwl to i64                 ; 2 uses
  %i.bwn = icmp ugt i64 %.val3.i81.i.i, %i.bwm
  br i1 %i.bwn, label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit.i.i, label %.invoke.i537

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit.i.i: ; preds = %.noexc52.i
  %.val.i82.i.i = load ptr, ptr %i.avw, align 8, !alias.scope !4751, !noalias !4752, !nonnull !9, !noundef !9
  %i.bwo = getelementptr inbounds nuw [24 x i8], ptr %.val.i82.i.i, i64 %i.bwm ; 2 uses
  %.sroa.03.0.in.i.i83.i.i = getelementptr inbounds nuw i8, ptr %i.bwo, i64 8
  %.sroa.03.0.i.i84.i.i = load ptr, ptr %.sroa.03.0.in.i.i83.i.i, align 8, !noalias !4753, !nonnull !9, !noundef !9
  %.sroa.34.0.in.i.i85.i.i = getelementptr inbounds nuw i8, ptr %i.bwo, i64 16
  %.sroa.34.0.i.i86.i.i = load i64, ptr %.sroa.34.0.in.i.i85.i.i, align 8, !noalias !4753, !noundef !9
  %i.bwp = invoke { ptr, ptr } @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms13extract_atoms(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i84.i.i, i64 noundef %.sroa.34.0.i.i86.i.i, i16 noundef %i.bwj)
          to label %.noexc54.i unwind label %.loopexit.i534, !noalias !4686 ; 2 uses

.noexc54.i:                                       ; preds = %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit.i.i
  %i.bwq = extractvalue { ptr, ptr } %i.bwp, 0
  %i.bwr = extractvalue { ptr, ptr } %i.bwp, 1
  %i.bws = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_5atoms4AtomEL_ENvMsa_NtB6_5rulesNtB3a_14SubPatternAtom9from_atomB2I_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull %i.bwq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bwr)
          to label %.noexc55.i unwind label %.loopexit.i534, !noalias !4686

.noexc55.i:                                       ; preds = %.noexc54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7153.i.i)
  br label %bb.wd

bb.wg:                                            ; preds = %bb.wd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7163.i.i)
  %i.bwt = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !4754)
  %i.bwu = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 64
  %i.bwv = load i8, ptr %i.bwu, align 8, !range !16, !alias.scope !4755, !noalias !4756, !noundef !9 ; 2 uses
  %i.bww = icmp eq i8 %i.bwv, 2
  %i.bwx = load <2 x i32>, ptr %i.bwt, align 8, !alias.scope !4757, !noalias !4742
  br i1 %i.bww, label %bb.wh, label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i

bb.wh:                                            ; preds = %bb.wg
  %.sroa.7163.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7163.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7163.0..sroa_idx.i.i, i64 3, i1 false), !alias.scope !4758, !noalias !4742
  br label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i

_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i: ; preds = %bb.wh, %bb.wg
  %.val67.i.i = load ptr, ptr %i.bwa, align 8, !alias.scope !4723, !noalias !4742, !nonnull !9, !noundef !9
  %i.bwy = getelementptr i8, ptr %.sroa.0135.0207.i.i, i64 16
  %.val68.i.i = load i64, ptr %i.bwy, align 8, !alias.scope !4723, !noalias !4742, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !4759)
  %i.bwz = invoke fastcc noundef i32 @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler14intern_literal(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val67.i.i, i64 noundef %.val68.i.i, i1 noundef zeroext false)
          to label %.noexc56.i unwind label %.loopexit.i534, !noalias !4686 ; 2 uses

.noexc56.i:                                       ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4760
  store i32 %i.bwz, ptr %i.awm, align 4, !noalias !4760
  store i32 %.sroa.032.3208.i.i, ptr %i.awn, align 8, !noalias !4760
  store <2 x i32> %i.bwx, ptr %i.awo, align 4, !noalias !4761
  store i8 %i.bwv, ptr %.sroa.6160.0..sroa_idx161.i.i, align 4, !noalias !4761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7163.0..sroa_idx164.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7163.i.i, i64 3, i1 false), !noalias !4761
  store i16 %.sroa.0137.0.i.i, ptr %i.awp, align 2, !noalias !4760
  store i8 3, ptr %i.x, align 8, !noalias !4760
  %.val3.i90.i.i = load i64, ptr %i.avv, align 8, !alias.scope !4762, !noalias !4763, !noundef !9
  %i.bxa = zext i32 %i.bwz to i64                 ; 2 uses
  %i.bxb = icmp ugt i64 %.val3.i90.i.i, %i.bxa
  br i1 %i.bxb, label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit96.i.i, label %.invoke.i537

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit96.i.i: ; preds = %.noexc56.i
  %.val.i91.i.i = load ptr, ptr %i.avw, align 8, !alias.scope !4762, !noalias !4763, !nonnull !9, !noundef !9
  %i.bxc = getelementptr inbounds nuw [24 x i8], ptr %.val.i91.i.i, i64 %i.bxa ; 2 uses
  %.sroa.03.0.in.i.i92.i.i = getelementptr inbounds nuw i8, ptr %i.bxc, i64 8
  %.sroa.03.0.i.i93.i.i = load ptr, ptr %.sroa.03.0.in.i.i92.i.i, align 8, !noalias !4764, !nonnull !9, !noundef !9
  %.sroa.34.0.in.i.i94.i.i = getelementptr inbounds nuw i8, ptr %i.bxc, i64 16
  %.sroa.34.0.i.i95.i.i = load i64, ptr %.sroa.34.0.in.i.i94.i.i, align 8, !noalias !4764, !noundef !9
  %i.bxd = invoke { ptr, ptr } @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms13extract_atoms(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i93.i.i, i64 noundef %.sroa.34.0.i.i95.i.i, i16 noundef %.sroa.0137.0.i.i)
          to label %.noexc58.i unwind label %.loopexit.i534, !noalias !4686 ; 2 uses

.noexc58.i:                                       ; preds = %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit96.i.i
  %i.bxe = extractvalue { ptr, ptr } %i.bxd, 0
  %i.bxf = extractvalue { ptr, ptr } %i.bxd, 1
  %i.bxg = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_5atoms4AtomEL_ENvMsa_NtB6_5rulesNtB3a_14SubPatternAtom9from_atomB2I_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull %i.bxe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bxf)
          to label %.noexc59.i unwind label %.loopexit.i534, !noalias !4686

.noexc59.i:                                       ; preds = %.noexc58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7163.i.i)
  br label %bb.wi

bb.wi:                                            ; preds = %.noexc60.i, %.noexc59.i, %bb.wd
  %.sroa.032.4.i.i = phi i32 [ %i.bxg, %.noexc59.i ], [ %.sroa.032.3208.i.i, %bb.wd ], [ %.sroa.032.5.i.i, %.noexc60.i ]
  %.sroa.030.5.i.i = phi i32 [ %.sroa.030.4.i.i, %.noexc59.i ], [ %.sroa.030.4.i.i, %bb.wd ], [ %.sroa.030.6.i.i, %.noexc60.i ]
  %i.bxh = icmp eq ptr %i.bvu, %i.but
  br i1 %i.bxh, label %.loopexit264.i, label %bb.wa

bb.wj:                                            ; preds = %.noexc51.i
  %i.bxi = load i64, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !range !57, !noalias !4724, !noundef !9
  %i.bxj = load ptr, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !noalias !4724, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4724
  br label %.loopexit264.i

bb.wk:                                            ; preds = %.noexc51.i
  %i.bxk = shl nuw nsw i8 %.val61.i.i, 5
  %i.bxl = and i8 %i.bxk, 32
  %i.bxm = zext nneg i8 %i.bxl to i16
  %.sroa.441.0.copyload.i.i = load i64, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !noalias !4724 ; 2 uses
  %.sroa.542.0.copyload.i.i = load ptr, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !noalias !4724 ; 2 uses
  %.sroa.643.0.copyload.i.i = load i8, ptr %.sroa.643.0..sroa_idx.i.i, align 8, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4724
  store i64 %i.bwc, ptr %i.ag, align 8, !noalias !4724
  store i64 %.sroa.441.0.copyload.i.i, ptr %.sroa.249.0..sroa_idx.i.i, align 8, !noalias !4724
  store ptr %.sroa.542.0.copyload.i.i, ptr %.sroa.350.0..sroa_idx.i.i, align 8, !noalias !4724
  %i.bxn = zext i8 %.sroa.643.0.copyload.i.i to i16
  %i.bxo = shl nuw nsw i16 %i.bxn, 6
  %i.bxp = or disjoint i16 %i.bxo, %i.bxm
  %spec.select205.i.i = or i16 %i.bxp, %.sroa.0137.0.i.i ; 2 uses
  %i.bxq = inttoptr i64 %.sroa.441.0.copyload.i.i to ptr ; 2 uses
  %i.bxr = ptrtoint ptr %.sroa.542.0.copyload.i.i to i64
  br i1 %.not198.i.i, label %bb.wl, label %bb.wm

bb.wl:                                            ; preds = %bb.ws, %bb.wk
  %.sroa.030.6.i.i = phi i32 [ %i.bye, %bb.ws ], [ %.sroa.030.3209.i.i, %bb.wk ]
  br i1 %.not.i31.i, label %bb.ww, label %bb.wt

bb.wm:                                            ; preds = %bb.wk
  %i.bxs = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  %i.bxt = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 64 ; 2 uses
  %i.bxu = load i8, ptr %i.bxt, align 8, !range !16, !alias.scope !4766, !noalias !4767, !noundef !9 ; 2 uses
  %i.bxv = icmp eq i8 %i.bxu, 2
  br i1 %i.bxv, label %bb.wn, label %bb.wo

bb.wn:                                            ; preds = %bb.wm
  %.sroa.0170.0.copyload.i.i = load i64, ptr %i.bxs, align 8, !alias.scope !4768, !noalias !4742 ; 2 uses
  %.sroa.0170.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0170.0.copyload.i.i to i32
  %.sroa.0170.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.0170.0.copyload.i.i, 32
  %.sroa.6171.0.copyload.i.i = load i32, ptr %i.bxt, align 8, !alias.scope !4768, !noalias !4742
  br label %bb.wp

bb.wo:                                            ; preds = %bb.wm
  %i.bxw = load i32, ptr %i.bxs, align 8, !alias.scope !4769, !noalias !4770, !noundef !9
  %i.bxx = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 60
  %i.bxy = load i32, ptr %i.bxx, align 4, !alias.scope !4771, !noalias !4770, !noundef !9
  %.sroa.6171.8.insert.ext.i.i = zext nneg i8 %i.bxu to i32
  %i.bxz = zext i32 %i.bxy to i64
  br label %bb.wp

bb.wp:                                            ; preds = %bb.wo, %bb.wn
  %.sroa.0170.sroa.5.0.i.i = phi i64 [ %.sroa.0170.sroa.5.0.extract.shift.i.i, %bb.wn ], [ %i.bxz, %bb.wo ]
  %.sroa.0170.sroa.0.0.i.i = phi i32 [ %.sroa.0170.sroa.0.0.extract.trunc.i.i, %bb.wn ], [ %i.bxw, %bb.wo ]
  %.sroa.6171.0.i.i = phi i32 [ %.sroa.6171.0.copyload.i.i, %bb.wn ], [ %.sroa.6171.8.insert.ext.i.i, %bb.wo ]
  %i.bya = or i16 %spec.select205.i.i, 1
  %.sroa.0170.sroa.5.0.insert.shift.i.i = shl nuw i64 %.sroa.0170.sroa.5.0.i.i, 32
  %.sroa.0170.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.0170.sroa.0.0.i.i to i64
  %.sroa.0170.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0170.sroa.5.0.insert.shift.i.i, %.sroa.0170.sroa.0.0.insert.ext.i.i
  %.sroa.9.8.insert.ext.i.i = zext i32 %.sroa.6171.0.i.i to i64
  %i.byb = getelementptr inbounds nuw [40 x i8], ptr %i.bxq, i64 %i.bxr
  call void @llvm.experimental.noalias.scope.decl(metadata !4772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4724
  %i.byc = load i64, ptr %i.xw, align 8, !alias.scope !4773, !noalias !4774, !noundef !9 ; 2 uses
  %i.byd = icmp ult i64 %i.byc, 288230376151711744
  call void @llvm.assume(i1 %i.byd)
  %i.bye = trunc i64 %i.byc to i32                ; 2 uses
  store i32 %i.bye, ptr %i.w, align 4, !noalias !4775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4775
  store ptr %i.bxq, ptr %i.v, align 8, !alias.scope !4776, !noalias !4777
  store ptr %i.byb, ptr %i.avz, align 8, !alias.scope !4776, !noalias !4777
  store ptr %i.a, ptr %i.awa, align 8, !alias.scope !4776, !noalias !4777
  store ptr %i.w, ptr %i.awb, align 8, !alias.scope !4776, !noalias !4777
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5rules14SubPatternAtomEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2c_INtNtB2g_6cloned6ClonedINtNtNtB2k_5slice4iter4IterNtNtBZ_2re10RegexpAtomEENCNvMs5_BX_NtBX_8Compiler7c_chains_0ENCINvMs4_BX_B4r_15add_sub_patternB2Z_NvMsa_BV_BT_16from_regexp_atomB3S_E0EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.v)
          to label %bb.wq unwind label %bb.wy, !noalias !4686

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4775
  %i.byf = load i64, ptr %i.xw, align 8, !alias.scope !4778, !noalias !4779, !noundef !9 ; 3 uses
  %i.byg = load i64, ptr %i.avm, align 8, !range !14, !alias.scope !4778, !noalias !4779, !noundef !9
  %i.byh = icmp eq i64 %i.byf, %i.byg
  br i1 %i.byh, label %bb.wr, label %bb.ws

bb.wr:                                            ; preds = %bb.wq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdNtBP_10SubPatternEE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.avm) #44
          to label %bb.ws unwind label %bb.wy, !noalias !4686

bb.ws:                                            ; preds = %bb.wr, %bb.wq
  %i.byi = load ptr, ptr %i.avn, align 8, !alias.scope !4778, !noalias !4779, !nonnull !9, !noundef !9
  %i.byj = getelementptr inbounds nuw [32 x i8], ptr %i.byi, i64 %i.byf ; 6 uses
  store i32 %i.bnt, ptr %i.byj, align 8, !noalias !4780
  %.sroa.4.i100.sroa.3.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 8
  store i8 6, ptr %.sroa.4.i100.sroa.3.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %.sroa.4.i100.sroa.5.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 10
  store i16 %i.bya, ptr %.sroa.4.i100.sroa.5.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 2, !noalias !4780
  %.sroa.4.i100.sroa.6.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 12
  store i32 %.sroa.030.3209.i.i, ptr %.sroa.4.i100.sroa.6.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 4, !noalias !4780
  %.sroa.4.i100.sroa.7.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 16
  store i64 %.sroa.0170.sroa.0.0.insert.insert.i.i, ptr %.sroa.4.i100.sroa.7.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %.sroa.4.i100.sroa.8.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.byj, i64 24
  store i64 %.sroa.9.8.insert.ext.i.i, ptr %.sroa.4.i100.sroa.8.0..sroa.4.0..sroa_idx.i103.sroa_idx.i.i, align 8, !noalias !4780
  %i.byk = add i64 %i.byf, 1
  store i64 %i.byk, ptr %i.xw, align 8, !alias.scope !4778, !noalias !4779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4724
  br label %bb.wl

bb.wt:                                            ; preds = %bb.wl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i unwind label %bb.wu, !noalias !4686

bb.wu:                                            ; preds = %bb.wt
  %i.byl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body47.i unwind label %bb.wv, !noalias !4686

bb.wv:                                            ; preds = %bb.wu
  %i.bym = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i: ; preds = %bb.wt
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc60.i unwind label %.loopexit.i534, !noalias !4686

bb.ww:                                            ; preds = %bb.wl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4724
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7180.i.i)
  %i.byn = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  %i.byo = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 64
  %i.byp = load i8, ptr %i.byo, align 8, !range !16, !alias.scope !4782, !noalias !4783, !noundef !9 ; 2 uses
  %i.byq = icmp eq i8 %i.byp, 2
  %i.byr = load <2 x i32>, ptr %i.byn, align 8, !alias.scope !4784, !noalias !4742
  br i1 %i.byq, label %bb.wx, label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i

bb.wx:                                            ; preds = %bb.ww
  %.sroa.7180.0..sroa_idx181.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0207.i.i, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.0..sroa_idx181.i.i, i64 3, i1 false), !alias.scope !4785, !noalias !4742
  br label %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i

.noexc60.i:                                       ; preds = %.noexc61.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i
  %.sroa.032.5.i.i = phi i32 [ %i.byx, %.noexc61.i ], [ %.sroa.032.3208.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4724
  br label %bb.wi

_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i: ; preds = %bb.wx, %bb.ww
  store i32 %.sroa.032.3208.i.i, ptr %i.awc, align 4, !noalias !4724
  store <2 x i32> %i.byr, ptr %i.awd, align 8, !noalias !4724
  store i8 %i.byp, ptr %.sroa.6177.0..sroa_idx.i.i, align 8, !noalias !4724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7180.i.i, i64 3, i1 false), !noalias !4724
  store i16 %spec.select205.i.i, ptr %i.awe, align 2, !noalias !4724
  store i8 6, ptr %i.ae, align 8, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7180.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4724
  %i.bys = load ptr, ptr %.sroa.249.0..sroa_idx.i.i, align 8, !noalias !4724, !nonnull !9, !noundef !9 ; 3 uses
  %i.byt = load i64, ptr %i.ag, align 8, !range !14, !noalias !4724, !noundef !9
  %i.byu = load i64, ptr %.sroa.350.0..sroa_idx.i.i, align 8, !noalias !4724, !noundef !9 ; 2 uses
  %i.byv = icmp ult i64 %i.byu, 230584300921369396
  call void @llvm.assume(i1 %i.byv)
  %i.byw = getelementptr inbounds nuw [40 x i8], ptr %i.bys, i64 %i.byu
  store ptr %i.bys, ptr %i.ad, align 8, !noalias !4724
  store i64 %i.byt, ptr %i.awf, align 8, !noalias !4724
  store ptr %i.bys, ptr %i.awg, align 8, !noalias !4724
  store ptr %i.byw, ptr %i.awh, align 8, !noalias !4724
  %i.byx = invoke fastcc noundef i32 @_RINvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler15add_sub_patternINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB8_2re10RegexpAtomENvMsa_NtB6_5rulesNtB2o_14SubPatternAtom16from_regexp_atomB1V_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %0, i32 noundef %i.bnt, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ad)
          to label %.noexc61.i unwind label %.loopexit.i534, !noalias !4686

.noexc61.i:                                       ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !4724
  br label %.noexc60.i

bb.wy:                                            ; preds = %bb.wr, %bb.wp
  %lpad.thr_comm192.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #42
          to label %.body47.i unwind label %bb.wz, !noalias !4686

bb.wz:                                            ; preds = %bb.xa, %bb.wy
  %i.byy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !4686
  unreachable

bb.xa:                                            ; preds = %bb.vu, %bb.vs
  %lpad.thr_comm.i32.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #42
          to label %.body47.i unwind label %bb.wz, !noalias !4686

bb.xb:                                            ; preds = %bb.vi
  call void @llvm.experimental.noalias.scope.decl(metadata !4786)
  %i.byz = load ptr, ptr %i.awq, align 8, !alias.scope !4786, !noalias !4687, !nonnull !9, !noundef !9
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 78
  %i.bzb = load i8, ptr %i.bza, align 2, !range !46, !noalias !4787, !noundef !9
  %i.bzc = trunc nuw i8 %i.bzb to i1
  %i.bzd = icmp ne i64 %.sroa.0.sroa.0.0.i, 4
  call void @llvm.assume(i1 %i.bzd)
  br i1 %i.bzc, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.i, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.bze = icmp eq i64 %.sroa.0.sroa.0.0.i, 7
  br i1 %i.bze, label %bb.xd, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i

bb.xd:                                            ; preds = %bb.xc
  %i.bzf = load ptr, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4786, !noalias !4687, !nonnull !9, !noundef !9 ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 40
  %i.bzh = load ptr, ptr %i.bzg, align 8, !noalias !4787, !nonnull !9, !noundef !9
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 78
  %i.bzj = load i8, ptr %i.bzi, align 2, !range !46, !noalias !4787, !noundef !9
  %i.bzk = trunc nuw i8 %i.bzj to i1
  br i1 %i.bzk, label %.split.i, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i

.split.i:                                         ; preds = %bb.xd
  %i.bzl = load i64, ptr %i.bzf, align 8, !range !34, !noalias !4787, !noundef !9 ; 2 uses
  %i.bzm = icmp ne i64 %i.bzl, 4
  call void @llvm.assume(i1 %i.bzm)
  %.not249.i = icmp eq i64 %i.bzl, 8
  br i1 %.not249.i, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_3Hir22is_alternation_literal.exit.thread.i, label %bb.xh

.body47.i:                                        ; preds = %.loopexit.split-lp.i528.loopexit, %.loopexit.split-lp.i528.loopexit.split-lp, %bb.act, %bb.acc, %bb.abu, %bb.abl, %.body107.i, %bb.aax, %bb.aav, %bb.zm, %.body49.i.i, %bb.yo, %bb.ym, %common.resume.sink.split.i.i, %.loopexit.i534, %bb.xa, %bb.wy, %bb.wu, %bb.vx
  %.pn20.i = phi { ptr, i32 } [ %.pn.i544, %.body107.i ], [ %lpad.thr_comm230.i, %bb.act ], [ %lpad.thr_comm.split-lp231.i, %bb.abu ], [ %lpad.thr_comm.i32.i, %bb.xa ], [ %i.byl, %bb.wu ], [ %i.bvm, %bb.vx ], [ %lpad.thr_comm192.i.i, %bb.wy ], [ %i.cjq, %bb.abl ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %i.cev, %bb.zm ], [ %i.cku, %bb.acc ], [ %lpad.phi.i.i552, %bb.ym ], [ %lpad.phi.i.i552, %bb.yo ], [ %i.civ, %bb.aav ], [ %.pn.pn.pn.pn.ph.i.i, %bb.aax ], [ %.pn.pn.i.i541, %.body49.i.i ], [ %lpad.loopexit.i535, %.loopexit.i534 ], [ %lpad.loopexit810, %.loopexit.split-lp.i528.loopexit ], [ %lpad.loopexit.split-lp811, %.loopexit.split-lp.i528.loopexit.split-lp ] ; 2 uses
  %.sroa.012.0.i = phi i1 [ true, %.body107.i ], [ true, %bb.act ], [ true, %bb.abu ], [ true, %bb.xa ], [ true, %bb.wu ], [ true, %bb.vx ], [ true, %bb.wy ], [ true, %bb.abl ], [ false, %common.resume.sink.split.i.i ], [ true, %bb.zm ], [ true, %bb.acc ], [ false, %bb.ym ], [ false, %bb.yo ], [ true, %bb.aav ], [ true, %bb.aax ], [ true, %.body49.i.i ], [ true, %.loopexit.i534 ], [ true, %.loopexit.split-lp.i528.loopexit ], [ true, %.loopexit.split-lp.i528.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bz) #42
          to label %bb.acj unwind label %bb.abp, !noalias !4686

.loopexit.i534:                                   ; preds = %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit112.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit109.i.i, %.noexc58.i, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit96.i.i, %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit89.i.i, %.noexc54.i, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_tail.exit.i.i, %_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x2re3hirNtB5_17ChainedPatternGapNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %bb.wc
  %lpad.loopexit.i535 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i528.loopexit:                 ; preds = %bb.vl, %bb.vn, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit.i.i, %.noexc41.i, %bb.vo, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler20c_literal_chain_head.exit77.i.i, %.noexc45.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs7gfv9tzbXmh_6yara_x2re10RegexpAtomEEB1c_.exit.i.i, %bb.vz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit71.i.i, %bb.abm, %bb.abq, %bb.acd
  %lpad.loopexit810 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit.split-lp.i528.loopexit.split-lp:        ; preds = %.invoke.i537
  %lpad.loopexit.split-lp811 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i

.loopexit264.i:                                   ; preds = %bb.wi, %bb.abs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i, %bb.wj, %bb.vp
  %.sroa.7.0.i = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i ], [ %i.cjw, %bb.abs ], [ %i.bua, %bb.vp ], [ %i.bxj, %bb.wj ], [ undef, %bb.wi ]
  %.sroa.0.0.i536 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7gfv9tzbXmh_6yara_x.exit113.i ], [ %i.cjv, %bb.abs ], [ %i.btz, %bb.vp ], [ %i.bxi, %bb.wj ], [ -1, %bb.wi ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.xf unwind label %bb.xe, !noalias !4686

bb.xe:                                            ; preds = %.loopexit264.i
  %i.bzn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x2re3hir14ChainedPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body64.thread.i unwind label %bb.xg, !noalias !4686

bb.xf:                                            ; preds = %.loopexit264.i
end_hunk_0
