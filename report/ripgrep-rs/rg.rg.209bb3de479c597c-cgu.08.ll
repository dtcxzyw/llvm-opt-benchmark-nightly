Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.08?download=true
inline.NumInlined: 705
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvXsd_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB6_8BTreeSetINtNtBc_6borrow3CowShEEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB18_E9from_iterINtNtBc_3vec3VecB18_EECs2NzvFoTxuAy_2rg:bb.a
  %.sroa.05.07.i27.i.i.i.prol = phi i64 [ %i.ec, %.lr.ph.i25.i.i.i.prol ], [ %.sroa.638.0.i.i.i, %.lr.ph.i25.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i25.i.i.i.prol ], [ 0, %.lr.ph.i25.i.i.i.preheader ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i26.i.i.i.prol, i64 274, !dbg !3863
  %i.dw = load i16, ptr %i.dv, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.dx = zext nneg i16 %i.dw to i64, !dbg !3872
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i26.i.i.i.prol, i64 280, !dbg !3875
  %i.dz = icmp ult i16 %i.dw, 12, !dbg !3879
  call void @llvm.assume(i1 %i.dz), !dbg !3884
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx, !dbg !3885
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 3 uses
  %i.ec = add i64 %.sroa.05.07.i27.i.i.i.prol, -1, !dbg !3893 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !3856 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !3856
  br i1 %prol.iter.cmp.not, label %.lr.ph.i25.i.i.i.prol.loopexit, label %.lr.ph.i25.i.i.i.prol, !dbg !3856, !llvm.loop !3895

.lr.ph.i25.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i25.i.i.i.prol, %.lr.ph.i25.i.i.i.preheader
  %.lcssa133.unr = phi ptr [ poison, %.lr.ph.i25.i.i.i.preheader ], [ %i.eb, %.lr.ph.i25.i.i.i.prol ]
  %.sroa.03.08.i26.i.i.i.unr = phi ptr [ %.sroa.037.0.i.i.i, %.lr.ph.i25.i.i.i.preheader ], [ %i.eb, %.lr.ph.i25.i.i.i.prol ]
  %.sroa.05.07.i27.i.i.i.unr = phi i64 [ %.sroa.638.0.i.i.i, %.lr.ph.i25.i.i.i.preheader ], [ %i.ec, %.lr.ph.i25.i.i.i.prol ]
  %i.ed = icmp ult i64 %.sroa.638.0.i.i.i, 8, !dbg !3856
  br i1 %i.ed, label %.loopexit.i.i.i, label %.lr.ph.i25.i.i.i, !dbg !3856

.lr.ph.i25.i.i.i:                                 ; preds = %.lr.ph.i25.i.i.i.prol.loopexit, %.lr.ph.i25.i.i.i
  %.sroa.03.08.i26.i.i.i = phi ptr [ %i.gh, %.lr.ph.i25.i.i.i ], [ %.sroa.03.08.i26.i.i.i.unr, %.lr.ph.i25.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i27.i.i.i = phi i64 [ %i.gi, %.lr.ph.i25.i.i.i ], [ %.sroa.05.07.i27.i.i.i.unr, %.lr.ph.i25.i.i.i.prol.loopexit ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i26.i.i.i, i64 274, !dbg !3863
  %i.ef = load i16, ptr %i.ee, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.eg = zext nneg i16 %i.ef to i64, !dbg !3872
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i26.i.i.i, i64 280, !dbg !3875
  %i.ei = icmp ult i16 %i.ef, 12, !dbg !3879
  call void @llvm.assume(i1 %i.ei), !dbg !3884
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg, !dbg !3885
  %i.ek = load ptr, ptr %i.ej, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 274, !dbg !3863
  %i.em = load i16, ptr %i.el, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.en = zext nneg i16 %i.em to i64, !dbg !3872
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 280, !dbg !3875
  %i.ep = icmp ult i16 %i.em, 12, !dbg !3879
  call void @llvm.assume(i1 %i.ep), !dbg !3884
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.en, !dbg !3885
  %i.er = load ptr, ptr %i.eq, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 274, !dbg !3863
  %i.et = load i16, ptr %i.es, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.eu = zext nneg i16 %i.et to i64, !dbg !3872
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 280, !dbg !3875
  %i.ew = icmp ult i16 %i.et, 12, !dbg !3879
  call void @llvm.assume(i1 %i.ew), !dbg !3884
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu, !dbg !3885
  %i.ey = load ptr, ptr %i.ex, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 274, !dbg !3863
  %i.fa = load i16, ptr %i.ez, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.fb = zext nneg i16 %i.fa to i64, !dbg !3872
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 280, !dbg !3875
  %i.fd = icmp ult i16 %i.fa, 12, !dbg !3879
  call void @llvm.assume(i1 %i.fd), !dbg !3884
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb, !dbg !3885
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 274, !dbg !3863
  %i.fh = load i16, ptr %i.fg, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.fi = zext nneg i16 %i.fh to i64, !dbg !3872
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 280, !dbg !3875
  %i.fk = icmp ult i16 %i.fh, 12, !dbg !3879
  call void @llvm.assume(i1 %i.fk), !dbg !3884
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi, !dbg !3885
  %i.fm = load ptr, ptr %i.fl, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 274, !dbg !3863
  %i.fo = load i16, ptr %i.fn, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.fp = zext nneg i16 %i.fo to i64, !dbg !3872
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 280, !dbg !3875
  %i.fr = icmp ult i16 %i.fo, 12, !dbg !3879
  call void @llvm.assume(i1 %i.fr), !dbg !3884
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp, !dbg !3885
  %i.ft = load ptr, ptr %i.fs, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 274, !dbg !3863
  %i.fv = load i16, ptr %i.fu, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.fw = zext nneg i16 %i.fv to i64, !dbg !3872
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 280, !dbg !3875
  %i.fy = icmp ult i16 %i.fv, 12, !dbg !3879
  call void @llvm.assume(i1 %i.fy), !dbg !3884
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw, !dbg !3885
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 274, !dbg !3863
  %i.gc = load i16, ptr %i.gb, align 2, !dbg !3863, !noalias !3869, !noundef !14 ; 2 uses
  %i.gd = zext nneg i16 %i.gc to i64, !dbg !3872
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 280, !dbg !3875
  %i.gf = icmp ult i16 %i.gc, 12, !dbg !3879
  call void @llvm.assume(i1 %i.gf), !dbg !3884
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd, !dbg !3885
  %i.gh = load ptr, ptr %i.gg, align 8, !dbg !3886, !noalias !3869, !nonnull !14, !noundef !14 ; 2 uses
  %i.gi = add i64 %.sroa.05.07.i27.i.i.i, -8, !dbg !3893 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0, !dbg !3856
  br i1 %i.gj, label %.loopexit.i.i.i, label %.lr.ph.i25.i.i.i, !dbg !3856

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i25.i.i.i.prol.loopexit, %.lr.ph.i25.i.i.i, %bb.af, %bb.ae
  %.sroa.8.2.i.i = phi i64 [ %.sroa.8.0.i.i, %bb.af ], [ %.sroa.8.1.i.i, %bb.ae ], [ %.sroa.8.1.i.i, %.lr.ph.i25.i.i.i ], [ %.sroa.8.1.i.i, %.lr.ph.i25.i.i.i.prol.loopexit ], !dbg !3777
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.af ], [ %.sroa.0.1.i.i, %bb.ae ], [ %.sroa.0.1.i.i, %.lr.ph.i25.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i25.i.i.i.prol.loopexit ], !dbg !3777
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.053.i.i.i, %bb.af ], [ %.sroa.037.0.i.i.i, %bb.ae ], [ %.lcssa133.unr, %.lr.ph.i25.i.i.i.prol.loopexit ], [ %i.gh, %.lr.ph.i25.i.i.i ], !dbg !3897
  %i.gk = add i64 %.sroa.012.0.i.i, 1, !dbg !3898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3899, !noalias !3330
  br label %bb.i, !dbg !3345

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_6borrow3CowShENtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2NzvFoTxuAy_2rg.exit33.i.i.i
  %.sroa.01.071.i.i.i = phi i64 [ %i.gn, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_6borrow3CowShENtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2NzvFoTxuAy_2rg.exit33.i.i.i ], [ 0, %bb.ab ]
  %.sroa.043.070.i.i.i = phi ptr [ %i.gl, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_6borrow3CowShENtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2NzvFoTxuAy_2rg.exit33.i.i.i ], [ %i.de, %bb.ab ] ; 3 uses
  %i.gl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_6borrow3CowShENtNtBL_7set_val9SetValZSTEE13new_uninit_inCs2NzvFoTxuAy_2rg()
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_6borrow3CowShENtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2NzvFoTxuAy_2rg.exit33.i.i.i unwind label %.body.i30.i.i.i, !dbg !3900, !noalias !3909 ; 6 uses

.body.i30.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !dbg !3912
  unreachable, !dbg !3912

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedINtNtB8_6borrow3CowShENtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs2NzvFoTxuAy_2rg.exit33.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gn = add nuw i64 %.sroa.01.071.i.i.i, 1, !dbg !3915 ; 2 uses
  store ptr null, ptr %i.gl, align 8, !dbg !3922, !noalias !3909
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 274, !dbg !3926
  store i16 0, ptr %i.go, align 2, !dbg !3926, !noalias !3909
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 280, !dbg !3929
  store ptr %.sroa.043.070.i.i.i, ptr %i.gp, align 8, !dbg !3930, !noalias !3909
  store ptr %i.gl, ptr %.sroa.043.070.i.i.i, align 8, !dbg !3932, !noalias !3938
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.043.070.i.i.i, i64 272, !dbg !3943
  store i16 0, ptr %i.gq, align 8, !dbg !3943, !noalias !3945
  %exitcond.not.i.i.i = icmp eq i64 %i.gn, %i.dd, !dbg !3793
  br i1 %exitcond.not.i.i.i, label %.loopexit92.i.i.i, label %.lr.ph.i.i.i, !dbg !3808

bb.af:                                            ; preds = %bb.l
  %i.gr = zext nneg i16 %i.ac to i64, !dbg !3946
  %i.gs = add nuw nsw i16 %i.ac, 1, !dbg !3954
  store i16 %i.gs, ptr %i.ab, align 2, !dbg !3954, !noalias !3956
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.053.i.i.i, i64 8, !dbg !3960
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gr, !dbg !3963
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3968, !noalias !3330
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.053.i.i.i) ]
  br label %.loopexit.i.i.i, !dbg !3969

bb.ag:                                            ; preds = %.loopexit58.i.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %.body18.i.i.i unwind label %bb.ah, !dbg !3899, !noalias !3330

bb.ah:                                            ; preds = %bb.ag, %.body18.i.i.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3970, !noalias !3330
  unreachable, !dbg !3970

bb.ai:                                            ; preds = %bb.aj
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3971, !noalias !3972
  unreachable, !dbg !3971

bb.aj:                                            ; preds = %_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtB4_6borrow3CowShENvYBH_NtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltECs2NzvFoTxuAy_2rg.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.ai, !dbg !3973, !noalias !3972

.loopexit:                                        ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i, %_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextINtNtBc_6borrow3CowShENtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs2NzvFoTxuAy_2rg.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterINtNtBK_6borrow3CowShENtNtBG_7set_val9SetValZSTINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBK_3vec9into_iter8IntoIterB1X_ENCINvMse_NtBG_3setINtB41_8BTreeSetB1X_E16from_sorted_iterB3g_E0EEECs2NzvFoTxuAy_2rg.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3976, !noalias !3305
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !dbg !3977, !alias.scope !3273, !noalias !3979
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3977
  store i64 %.sroa.8.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3977, !alias.scope !3273, !noalias !3979
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3977
  store i64 %.sroa.012.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !3977, !alias.scope !3273, !noalias !3979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !3980, !noalias !3280
  br label %bb.ak, !dbg !3258

bb.ak:                                            ; preds = %.loopexit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_6borrow3CowShEEECs2NzvFoTxuAy_2rg.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !3258
  ret void, !dbg !3981

bb.al:                                            ; preds = %bb.e, %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_6borrow3CowShEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %common.resume unwind label %bb.am, !dbg !3258

bb.am:                                            ; preds = %bb.al
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3982
  unreachable, !dbg !3982
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBd_6string6StringE9or_insertB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3983 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.5.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.sroa.5.i.i = alloca [16 x i8], align 1 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.517.i.i = alloca i64, align 8            ; 8 uses
  %.sroa.719.i.i = alloca [16 x i8], align 8      ; 5 uses
  %.sroa.13.i.i = alloca i64, align 8             ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 6 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 5 uses
  %.sroa.14.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.10.i.i = alloca [16 x i8], align 8       ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3987
  %i.m = load i8, ptr %i.l, align 8, !dbg !3987, !range !3988, !noundef !14 ; 6 uses
  %i.n = icmp eq i8 %i.m, -1, !dbg !3987
  %.val4 = load ptr, ptr %0, align 8, !dbg !3989  ; 9 uses
  br i1 %i.n, label %bb.ci, label %bb.b, !dbg !3990

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3991
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3991 ; 12 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3991
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !3991
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3991
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !3991 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !3992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !3992
  %.not.i = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !3994
  br i1 %.not.i, label %bb.c, label %bb.j, !dbg !4000

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtB6_6string6StringEE13new_uninit_inB1t_()
          to label %bb.d unwind label %bb.cf, !dbg !4001, !noalias !4007 ; 6 uses

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.o, align 8, !dbg !4012, !noalias !4007
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 274, !dbg !4020 ; 3 uses
  store i16 0, ptr %i.p, align 2, !dbg !4020, !noalias !4007
  store ptr %i.o, ptr %.val4, align 8, !dbg !4026, !noalias !4007
  %i.q = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !4026
  store i64 0, ptr %i.q, align 8, !dbg !4026, !noalias !4007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !4029, !noalias !4007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4029
  %i.r = load i16, ptr %i.p, align 2, !dbg !4032, !noalias !4036, !noundef !14 ; 3 uses
  %i.s = icmp ult i16 %i.r, 11, !dbg !4040
  br i1 %i.s, label %bb.i, label %bb.e, !dbg !4040, !prof !3241

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #21
          to label %bb.g unwind label %bb.f, !dbg !4042, !noalias !4036

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #23
          to label %common.resume unwind label %bb.h, !dbg !4043, !noalias !4044

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4045, !noalias !4044
  unreachable, !dbg !4045

bb.i:                                             ; preds = %bb.d
  %i.v = zext nneg i16 %i.r to i64, !dbg !4046    ; 3 uses
  %i.w = add nuw nsw i16 %i.r, 1, !dbg !4049
  store i16 %i.w, ptr %i.p, align 2, !dbg !4049, !noalias !4036
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 276, !dbg !4050
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v, !dbg !4053
  store i8 %i.m, ptr %i.y, align 1, !dbg !4058, !noalias !4036
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !4061
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v, !dbg !4064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !4071, !noalias !4007
  br label %bb.cg, !dbg !4072

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !4073
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i), !dbg !4073
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i), !dbg !4073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !4077, !noalias !4078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4083), !dbg !4086
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.5.i.i), !dbg !4087
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 274, !dbg !4094 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !4094, !noalias !4095, !noundef !14 ; 3 uses
  %i.ad = icmp ugt i16 %i.ac, 10, !dbg !4098
  br i1 %i.ad, label %bb.k, label %bb.l, !dbg !4098

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp ult i64 %.sroa.7.0.copyload, 5, !dbg !4099
  br i1 %i.ae, label %bb.r, label %bb.o, !dbg !4099

bb.l:                                             ; preds = %bb.j
  %i.af = zext nneg i16 %i.ac to i64, !dbg !4102  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 276, !dbg !4110 ; 2 uses
  %i.ah = add i64 %.sroa.7.0.copyload, 1, !dbg !4114 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ah, %i.af, !dbg !4119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.7.0.copyload, !dbg !4120 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n, !dbg !4119

bb.m:                                             ; preds = %bb.l
  store i8 %i.m, ptr %i.ai, align 1, !dbg !4123, !alias.scope !4126, !noalias !4129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4135), !dbg !4138
  br label %bb.ac, !dbg !4139

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah, !dbg !4144
  %i.ak = sub nsw i64 %i.af, %.sroa.7.0.copyload, !dbg !4146 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.ai, i64 %i.ak, i1 false), !dbg !4147, !alias.scope !4126, !noalias !4129
  store i8 %i.m, ptr %i.ai, align 1, !dbg !4123, !alias.scope !4126, !noalias !4129
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !4150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !4134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4134
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.sroa.7.0.copyload, !dbg !4153
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ah, !dbg !4156
  %i.ao = mul nuw nsw i64 %i.ak, 24, !dbg !4158
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ao, i1 false), !dbg !4158, !alias.scope !4161, !noalias !4163
  br label %bb.ac, !dbg !4164

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.7.0.copyload, label %bb.p [
    i64 5, label %bb.r
    i64 6, label %bb.q
  ], !dbg !4165

bb.p:                                             ; preds = %bb.o
  %i.ap = add i64 %.sroa.7.0.copyload, -7, !dbg !4166
  br label %bb.r, !dbg !4167

bb.q:                                             ; preds = %bb.o
  br label %bb.r, !dbg !4168

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.k ], [ false, %bb.o ], !dbg !4169
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.q ], [ %i.ap, %bb.p ], [ %.sroa.7.0.copyload, %bb.k ], [ %.sroa.7.0.copyload, %bb.o ], !dbg !4169 ; 7 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.q ], [ 6, %bb.p ], [ 4, %bb.k ], [ %.sroa.7.0.copyload, %bb.o ], !dbg !4169 ; 5 uses
  %i.aq = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtB6_6string6StringEE13new_uninit_inB1t_()
          to label %.noexc.i.i.i unwind label %bb.w, !dbg !4170, !noalias !4095 ; 7 uses

.noexc.i.i.i:                                     ; preds = %bb.r
  store ptr null, ptr %i.aq, align 8, !dbg !4177, !noalias !4185
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 274, !dbg !4189 ; 2 uses
  store i16 0, ptr %i.ar, align 2, !dbg !4189, !noalias !4185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4195), !dbg !4198
  %i.as = load i16, ptr %i.ab, align 2, !dbg !4200, !noalias !4205, !noundef !14
  %i.at = zext i16 %i.as to i64, !dbg !4207
  %i.au = xor i64 %.sroa.013.0.i.i.i, -1, !dbg !4211
  %i.av = add nsw i64 %i.at, %i.au, !dbg !4211    ; 5 uses
  %i.aw = trunc i64 %i.av to i16, !dbg !4213
  store i16 %i.aw, ptr %i.ar, align 2, !dbg !4213, !alias.scope !4195, !noalias !4215
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 276, !dbg !4216 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.013.0.i.i.i, !dbg !4219
  %i.az = load i8, ptr %i.ay, align 1, !dbg !4224, !range !4231, !noalias !4205, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4232, !noalias !4205
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !4234 ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.013.0.i.i.i, !dbg !4237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !dbg !4243, !noalias !4205
  %i.bc = icmp ult i64 %i.av, 12
  br i1 %i.bc, label %bb.x, label %bb.s, !dbg !4252, !prof !4269

bb.s:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.av, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
          to label %bb.u unwind label %bb.t, !dbg !4270, !noalias !4205

bb.t:                                             ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %.thread.i.i.i.i unwind label %bb.v, !dbg !4271, !noalias !4205

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4272, !noalias !4205
  unreachable, !dbg !4272

.thread.i.i.i.i:                                  ; preds = %bb.t
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef 288, i64 noundef 8) #27, !dbg !4273, !noalias !4185
  br label %bb.ad, !dbg !4284

bb.w:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.013.0.i.i.i, 1, !dbg !4285 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bg, !dbg !4286
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 276, !dbg !4299
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr nonnull readonly align 1 %i.bh, i64 range(i64 0, 65536) %i.av, i1 false), !dbg !4300, !alias.scope !4305, !noalias !4215
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bg, !dbg !4309
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !4323
  %i.bl = mul nuw nsw i64 %i.av, 24, !dbg !4324
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull readonly align 8 %i.bj, i64 %i.bl, i1 false), !dbg !4324, !alias.scope !4329, !noalias !4215
  %i.bm = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16, !dbg !4333
  store i16 %i.bm, ptr %i.ab, align 2, !dbg !4333, !noalias !4205
  %.sroa.4.i.i.sroa.3.7.copyload.i.i = load i64, ptr %i.e, align 8, !dbg !4334, !noalias !4095
  %.sroa.4.i.i.sroa.5.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !4334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.i.i.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.sroa.5.7..sroa_idx.i.i, i64 16, i1 false), !dbg !4334, !noalias !4095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4271, !noalias !4205
  %spec.select30.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.aq, ptr %.sroa.5.0.copyload, !dbg !4335 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 274, !dbg !4337 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !dbg !4337, !noalias !4341, !noundef !14 ; 2 uses
  %i.bp = zext i16 %i.bo to i64, !dbg !4346       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 276, !dbg !4348 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.bp, !dbg !4350
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.510.0.i.i.i, !dbg !4352 ; 3 uses
  br i1 %.not.i16.not.i.i.i, label %bb.z, label %bb.y, !dbg !4350

bb.y:                                             ; preds = %bb.x
  store i8 %i.m, ptr %i.br, align 1, !dbg !4354, !alias.scope !4356, !noalias !4341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360), !dbg !4363
  br label %bb.aa, !dbg !4364

bb.z:                                             ; preds = %bb.x
  %i.bs = add nuw nsw i64 %.sroa.510.0.i.i.i, 1, !dbg !4366 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs, !dbg !4367
  %i.bu = sub nuw nsw i64 %i.bp, %.sroa.510.0.i.i.i, !dbg !4369 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.br, i64 %i.bu, i1 false), !dbg !4370, !alias.scope !4356, !noalias !4341
  store i8 %i.m, ptr %i.br, align 1, !dbg !4354, !alias.scope !4356, !noalias !4341
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 8, !dbg !4372 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4359
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.sroa.510.0.i.i.i, !dbg !4374
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bs, !dbg !4376
  %i.by = mul nuw nsw i64 %i.bu, 24, !dbg !4378
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr nonnull align 8 %i.bw, i64 %i.by, i1 false), !dbg !4378, !alias.scope !4380, !noalias !4382
  br label %bb.aa, !dbg !4383

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 8, !dbg !4372
  %i.ca = add i16 %i.bo, 1, !dbg !4384
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.sroa.510.0.i.i.i, !dbg !4385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !4387, !alias.scope !4390, !noalias !4341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4391
  store i16 %i.ca, ptr %i.bn, align 2, !dbg !4392, !noalias !4341
  store i64 %.sroa.4.i.i.sroa.3.7.copyload.i.i, ptr %.sroa.6.i.i, align 8, !dbg !4393, !noalias !4395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.i.i.sroa.5.i.i, i64 16, i1 false), !dbg !4393, !noalias !4395
  br label %bb.ae, !dbg !4396

bb.ab:                                            ; preds = %bb.ad
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4397, !noalias !4398
  unreachable, !dbg !4397

bb.ac:                                            ; preds = %bb.n, %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !4150
  %i.ce = add nuw nsw i16 %i.ac, 1, !dbg !4399
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %.sroa.7.0.copyload, !dbg !4400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !4402, !alias.scope !4404, !noalias !4129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !4405
  store i16 %i.ce, ptr %i.ab, align 2, !dbg !4406, !noalias !4129
  br label %bb.ae, !dbg !4396

bb.ad:                                            ; preds = %bb.w, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.bd, %.thread.i.i.i.i ], [ %i.bf, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #23
          to label %common.resume unwind label %bb.ab, !dbg !4396, !noalias !4398

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.12.0.i.i = phi ptr [ %i.aq, %bb.aa ], [ undef, %bb.ac ], !dbg !4407 ; 2 uses
  %.sroa.10.0.i.i = phi i64 [ %.sroa.6.0.copyload, %bb.aa ], [ undef, %bb.ac ], !dbg !4407 ; 2 uses
  %.sroa.03.0.i.i = phi i8 [ %i.az, %bb.aa ], [ undef, %bb.ac ], !dbg !4407 ; 2 uses
  %.sink54.i.sroa.phi.i.i = phi ptr [ %.sroa.14.i.i, %bb.aa ], [ %.sroa.6.i.i, %bb.ac ]
  %.sink53.i.i.i = phi i64 [ 0, %bb.aa ], [ -1, %bb.ac ]
  %.sink51.i.i.i = phi ptr [ %spec.select30.i.i.i, %bb.aa ], [ %.sroa.5.0.copyload, %bb.ac ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %.sroa.510.0.i.i.i, %bb.aa ], [ %.sroa.7.0.copyload, %bb.ac ] ; 3 uses
  store i64 %.sink53.i.i.i, ptr %.sink54.i.sroa.phi.i.i, align 8, !dbg !4408, !alias.scope !4083, !noalias !4395
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.5.i.i), !dbg !4409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !4410, !noalias !4078
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = load i64, ptr %.sroa.6.i.i, align 8, !dbg !4073, !range !1005, !noalias !4078, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, -1, !dbg !4073
  br i1 %.not.i.i, label %bb.ag, label %bb.af, !dbg !4411

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !4412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !dbg !4413, !noalias !4078
  %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.56..i.i = load i64, ptr %.sroa.14.i.i, align 8, !dbg !4413, !noalias !4078, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !4414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !4414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i), !dbg !4414
  %i.cg = load ptr, ptr %.sroa.5.0.copyload, align 8, !dbg !4415, !noalias !4420, !noundef !14 ; 2 uses
  %.not.i81.i.i = icmp eq ptr %i.cg, null, !dbg !4423
  br i1 %.not.i81.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !4426

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.au, !dbg !4426

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !4414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !4414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i), !dbg !4414
  br label %bb.cg, !dbg !4427

._crit_edge.loopexit.i.i:                         ; preds = %bb.cb
  %.sroa.0.sroa.7.0.extract.shift.i.i = and i64 %.sroa.015.0.i.i, -256, !dbg !4430
  br label %._crit_edge.i.i, !dbg !4432

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.af
  %.sroa.0.sroa.7.sroa.0.0.i.i = phi i64 [ 0, %bb.af ], [ %.sroa.0.sroa.7.0.extract.shift.i.i, %._crit_edge.loopexit.i.i ], !dbg !4433
  %.sroa.0.sroa.0.0.i.i = phi i8 [ %.sroa.03.0.i.i, %bb.af ], [ %.sroa.0.sroa.0.0.extract.trunc.i.i, %._crit_edge.loopexit.i.i ], !dbg !4433 ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %bb.af ], [ %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, %._crit_edge.loopexit.i.i ], !dbg !4433
  %.lcssa74.i.i = phi i64 [ %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.56..i.i, %bb.af ], [ %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.56..i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.11.067.lcssa.i.i = phi ptr [ %.sroa.12.0.i.i, %bb.af ], [ %.sroa.11.0.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.lcssa60.i.i = phi i64 [ %.sroa.10.0.i.i, %bb.af ], [ %i.dg, %._crit_edge.loopexit.i.i ]
  %.lcssa53.i.i = phi ptr [ %.sroa.5.0.copyload, %bb.af ], [ %i.dc, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !4434, !noalias !4078
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.0.sroa.0.0.i.i to i64, !dbg !4430
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.7.sroa.0.0.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i, !dbg !4430
  %.sroa.02.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i, i64 16, i1 false), !dbg !4430, !noalias !4078
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.g, align 8, !dbg !4434, !noalias !4078
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !4434 ; 4 uses
  store i64 %.sroa.7.0.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4434, !noalias !4078
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !4434
  store ptr %.lcssa53.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !4434, !noalias !4078
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !4434
  store i64 %.lcssa60.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !dbg !4434, !noalias !4078
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !4434
  store ptr %.sroa.11.067.lcssa.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !dbg !4434, !noalias !4078
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !4434
  store i64 %.lcssa74.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !dbg !4434, !noalias !4078
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.ci = load ptr, ptr %.val4, align 8, !dbg !4435, !noalias !4443, !noundef !14 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !4435 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.ci, null, !dbg !4435
  br i1 %.not.i19.i.i, label %bb.ah, label %bb.aj, !dbg !4446, !prof !163

bb.ah:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
          to label %bb.ai unwind label %bb.as, !dbg !4447, !noalias !4443

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4450), !dbg !4453
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !4459, !alias.scope !4450, !noalias !4443, !noundef !14 ; 2 uses
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtB6_6string6StringEE13new_uninit_inB1y_()
          to label %.noexc.i.i.i.i unwind label %bb.an, !dbg !4465, !noalias !4475 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.aj
  store ptr null, ptr %i.cl, align 8, !dbg !4476, !noalias !4475
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 274, !dbg !4484 ; 3 uses
  store i16 0, ptr %i.cm, align 2, !dbg !4484, !noalias !4475
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 288, !dbg !4490 ; 2 uses
  store ptr %i.ci, ptr %i.cn, align 8, !dbg !4492, !noalias !4475
  %i.co = add i64 %i.ck, 1, !dbg !4495            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.co, 0, !dbg !4496
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.ao, !dbg !4499, !prof !163

bb.ak:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
          to label %bb.al unwind label %bb.am, !dbg !4500, !noalias !4475

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 384, i64 noundef 8) #27, !dbg !4501, !noalias !4475
  br label %.body.i.i.i.i, !dbg !4512

bb.an:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i, !dbg !4513

.body.i.i.i.i:                                    ; preds = %bb.an, %bb.am
  tail call void @llvm.trap(), !dbg !4514
  unreachable, !dbg !4514

bb.ao:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.cl, ptr %i.ci, align 8, !dbg !4517, !noalias !4537
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 272, !dbg !4542
  store i16 0, ptr %i.cr, align 8, !dbg !4542, !noalias !4545
  store ptr %i.cl, ptr %.val4, align 8, !dbg !4546, !alias.scope !4450, !noalias !4443
  store i64 %i.co, ptr %i.cj, align 8, !dbg !4546, !alias.scope !4450, !noalias !4443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4550, !noalias !4443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx.i.i, i64 24, i1 false), !dbg !4550, !noalias !4078
  %i.cs = icmp eq i64 %.lcssa74.i.i, %i.ck, !dbg !4551
  br i1 %i.cs, label %bb.ap, label %.invoke.i.i.i.i, !dbg !4551, !prof !3241

.invoke.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao
  %i.ct = phi ptr [ @29, %bb.ao ], [ @27, %bb.ap ]
  %i.cu = phi i64 [ 48, %bb.ao ], [ 32, %bb.ap ]
  %i.cv = phi ptr [ @30, %bb.ao ], [ @31, %bb.ap ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cv) #21
          to label %.cont.i.i.i.i unwind label %bb.aq, !dbg !4554, !noalias !4555

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load i16, ptr %i.cm, align 2, !dbg !4558, !noalias !4555, !noundef !14 ; 3 uses
  %i.cx = icmp ult i16 %i.cw, 11, !dbg !4560
  br i1 %i.cx, label %bb.cd, label %.invoke.i.i.i.i, !dbg !4560, !prof !3241

bb.aq:                                            ; preds = %.invoke.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.ar, !dbg !4562, !noalias !4443

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4563, !noalias !4443
  unreachable, !dbg !4563

bb.as:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx.i.i) #23
          to label %common.resume unwind label %bb.at, !dbg !4564, !noalias !4078

bb.at:                                            ; preds = %bb.as
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4565, !noalias !4078
  unreachable, !dbg !4565

bb.au:                                            ; preds = %bb.cb, %.lr.ph.i.i
  %.sroa.0.sroa.0.1.i.i = phi i8 [ %.sroa.03.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.sroa.0.0.extract.trunc.i.i, %bb.cb ], !dbg !4433 ; 4 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %.lr.ph.i.i ], [ %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, %bb.cb ], !dbg !4433
  %i.dc = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.kf, %bb.cb ] ; 18 uses
  %i.dd = phi ptr [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.dc, %bb.cb ]
  %i.de = phi i64 [ %.sroa.10.0.i.i, %.lr.ph.i.i ], [ %i.dg, %bb.cb ] ; 2 uses
  %.sroa.11.06782.i.i = phi ptr [ %.sroa.12.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.0.i.i, %bb.cb ] ; 2 uses
  %i.df = phi i64 [ %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.56..i.i, %.lr.ph.i.i ], [ %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.56..i.i, %bb.cb ]
  %i.dg = add i64 %i.de, 1, !dbg !4566            ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 272, !dbg !4572
  %i.di = load i16, ptr %i.dh, align 8, !dbg !4572, !noalias !4420 ; 4 uses
  %i.dj = zext i16 %i.di to i64, !dbg !4573       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i), !dbg !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i.i), !dbg !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i), !dbg !4576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !4578, !noalias !4078
  store i64 %.sroa.7.1.i.i, ptr %i.h, align 8, !dbg !4578, !noalias !4078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i, i64 16, i1 false), !dbg !4578, !noalias !4078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579), !dbg !4582
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i), !dbg !4583
  %i.dk = icmp eq i64 %i.df, %i.de, !dbg !4586
  br i1 %i.dk, label %bb.aw, label %bb.av, !dbg !4586, !prof !3241

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %bb.ax unwind label %.loopexit.split-lp.i.i, !dbg !4587, !noalias !4588

bb.aw:                                            ; preds = %bb.au
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 274, !dbg !4591 ; 4 uses
  %i.dm = load i16, ptr %i.dl, align 2, !dbg !4591, !noalias !4588, !noundef !14 ; 5 uses
  %i.dn = icmp ult i16 %i.dm, 11, !dbg !4594
  br i1 %i.dn, label %bb.az, label %bb.ay, !dbg !4594

.loopexit31.i.i:                                  ; preds = %bb.bg
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp.i.i:                           ; preds = %bb.av
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.do = icmp ult i16 %i.di, 5, !dbg !4595
  br i1 %i.do, label %bb.bg, label %bb.bd, !dbg !4595

bb.az:                                            ; preds = %bb.aw
  %i.dp = zext nneg i16 %i.dm to i64, !dbg !4598  ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBd_6string6StringE9or_insertB1g_:bb.a
  %i.hi = load ptr, ptr %i.hh, align 8, !dbg !4953, !alias.scope !4925, !noalias !4957, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.fr, ptr %i.hi, align 8, !dbg !4960, !noalias !4962
  %i.hj = trunc nuw nsw i64 %i.hb to i16, !dbg !4963
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 272, !dbg !4964
  store i16 %i.hj, ptr %i.hk, align 8, !dbg !4964, !noalias !4957
  %i.hl = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3, !dbg !4942 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hg, !dbg !4948
  %i.hn = load ptr, ptr %i.hm, align 8, !dbg !4953, !alias.scope !4925, !noalias !4957, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.fr, ptr %i.hn, align 8, !dbg !4960, !noalias !4962
  %i.ho = trunc nuw nsw i64 %i.hg to i16, !dbg !4963
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 272, !dbg !4964
  store i16 %i.ho, ptr %i.hp, align 8, !dbg !4964, !noalias !4957
  %i.hq = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4, !dbg !4942 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hl, !dbg !4948
  %i.hs = load ptr, ptr %i.hr, align 8, !dbg !4953, !alias.scope !4925, !noalias !4957, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.fr, ptr %i.hs, align 8, !dbg !4960, !noalias !4962
  %i.ht = trunc nuw nsw i64 %i.hl to i16, !dbg !4963
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 272, !dbg !4964
  store i16 %i.ht, ptr %i.hu, align 8, !dbg !4964, !noalias !4957
  %niter.next.3 = add i64 %niter, 4, !dbg !4930   ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !4930
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.br, !dbg !4930

bb.bs:                                            ; preds = %bb.bo
  unreachable

bb.bt:                                            ; preds = %bb.bp
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4966, !noalias !4739
  unreachable, !dbg !4966

bb.bu:                                            ; preds = %bb.bp, %bb.bi
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gv, %bb.bp ], [ %i.ge, %bb.bi ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fr, i64 noundef 384, i64 noundef 8) #27, !dbg !4967, !noalias !4739
  br label %bb.ca, !dbg !4966

.unr-lcssa:                                       ; preds = %bb.br
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4930
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader, !dbg !4930

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bq
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.bq ], [ %i.hq, %.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0, !dbg !4930
  tail call void @llvm.assume(i1 %lcmp.mod152), !dbg !4930
  br label %bb.bv, !dbg !4930

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.hw, %bb.bv ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bv ]
  %i.hw = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1, !dbg !4942
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.sroa.0.09.i.i.i.i.i.i.epil, !dbg !4948
  %i.hy = load ptr, ptr %i.hx, align 8, !dbg !4953, !alias.scope !4925, !noalias !4957, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %i.fr, ptr %i.hy, align 8, !dbg !4960, !noalias !4962
  %i.hz = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16, !dbg !4963
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 272, !dbg !4964
  store i16 %i.hz, ptr %i.ia, align 8, !dbg !4964, !noalias !4957
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !4930 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !4930
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bv, !dbg !4930, !llvm.loop !4974

.epilog-lcssa:                                    ; preds = %bb.bv, %.unr-lcssa
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !4975, !noalias !4588
  %.sroa.0.i.sroa.4.0.copyload.i.i = load i64, ptr %i.ch, align 8, !dbg !4975, !noalias !4588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !dbg !4975, !noalias !4588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4905, !noalias !4739
  %spec.select.i27.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.fr, ptr %i.dc, !dbg !4977 ; 11 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 274, !dbg !4979 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !dbg !4979, !noalias !4983, !noundef !14 ; 2 uses
  %i.id = zext i16 %i.ic to i64, !dbg !4987       ; 5 uses
  %i.ie = add i16 %i.ic, 1, !dbg !4989
  %i.if = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 276, !dbg !4990 ; 2 uses
  %i.ig = add nuw nsw i64 %.sroa.5.0.i.i.i, 1, !dbg !4992 ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.id, !dbg !4994
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.5.0.i.i.i, !dbg !4995 ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.bx, label %bb.bw, !dbg !4994

bb.bw:                                            ; preds = %.epilog-lcssa
  store i8 %.sroa.0.sroa.0.1.i.i, ptr %i.ih, align 1, !dbg !4997, !alias.scope !4999, !noalias !4983
  %i.ii = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 8, !dbg !5002
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %.sroa.5.0.i.i.i, !dbg !5004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !5007, !noalias !5009
  br label %bb.by, !dbg !5010

bb.bx:                                            ; preds = %.epilog-lcssa
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ig, !dbg !5012
  %i.il = sub nuw nsw i64 %i.id, %.sroa.5.0.i.i.i, !dbg !5014 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ik, ptr nonnull align 1 %i.ih, i64 %i.il, i1 false), !dbg !5015, !alias.scope !4999, !noalias !4983
  store i8 %.sroa.0.sroa.0.1.i.i, ptr %i.ih, align 1, !dbg !4997, !alias.scope !4999, !noalias !4983
  %i.im = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 8, !dbg !5002 ; 2 uses
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %.sroa.5.0.i.i.i, !dbg !5017 ; 2 uses
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %i.ig, !dbg !5019
  %i.ip = mul nuw nsw i64 %i.il, 24, !dbg !5021
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.io, ptr nonnull align 8 %i.in, i64 %i.ip, i1 false), !dbg !5021, !alias.scope !5023, !noalias !5026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !5007, !noalias !5009
  %i.iq = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 288, !dbg !5028 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ig, !dbg !5030
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.sroa.5.0.i.i.i, !dbg !5032
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16, !dbg !5032
  %i.iu = shl nuw nsw i64 %i.il, 3, !dbg !5034
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.it, ptr nonnull align 8 %i.ir, i64 %i.iu, i1 false), !dbg !5034, !alias.scope !5036, !noalias !4983
  br label %bb.by, !dbg !5039

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.iv = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 288, !dbg !5028 ; 6 uses
  %i.iw = add nuw nsw i64 %i.id, 2, !dbg !5040    ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.ig, !dbg !5041
  store ptr %.sroa.11.06782.i.i, ptr %i.ix, align 8, !dbg !5043, !alias.scope !5036, !noalias !4983
  store i16 %i.ie, ptr %i.ib, align 2, !dbg !5045, !noalias !4983
  %i.iy = icmp samesign ult i64 %i.ig, %i.iw, !dbg !5046
  br i1 %i.iy, label %.lr.ph.i.i11.i.i.i.preheader, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, !dbg !5051

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.by
  %i.iz = add nuw nsw i64 %i.id, 1, !dbg !5051
  %i.ja = sub nsw i64 %i.iz, %.sroa.5.0.i.i.i, !dbg !5051
  %i.jb = sub nsw i64 %i.id, %.sroa.5.0.i.i.i, !dbg !5051
  %xtraiter153 = and i64 %i.ja, 3, !dbg !5051     ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0, !dbg !5051
  br i1 %lcmp.mod154.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !dbg !5051

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jc, %.lr.ph.i.i11.i.i.i.prol ], [ %i.ig, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jc = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1, !dbg !5052 ; 2 uses
  %i.jd = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12, !dbg !5055
  tail call void @llvm.assume(i1 %i.jd), !dbg !5060
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.0.06.i.i12.i.i.i.prol, !dbg !5061
  %i.jf = load ptr, ptr %i.je, align 8, !dbg !5062, !noalias !4983, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %spec.select.i27.i.i, ptr %i.jf, align 8, !dbg !5066, !noalias !4983
  %i.jg = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16, !dbg !5068
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 272, !dbg !5069
  store i16 %i.jg, ptr %i.jh, align 8, !dbg !5069, !noalias !4983
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !5051 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter153, !dbg !5051
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !dbg !5051, !llvm.loop !5071

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.ig, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jc, %.lr.ph.i.i11.i.i.i.prol ]
  %i.ji = icmp ult i64 %i.jb, 3, !dbg !5051
  br i1 %i.ji, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, label %.lr.ph.i.i11.i.i.i, !dbg !5051

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.jy, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.jj = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1, !dbg !5052 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.0.06.i.i12.i.i.i, !dbg !5061
  %i.jl = load ptr, ptr %i.jk, align 8, !dbg !5062, !noalias !4983, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %spec.select.i27.i.i, ptr %i.jl, align 8, !dbg !5066, !noalias !4983
  %i.jm = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16, !dbg !5068
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 272, !dbg !5069
  store i16 %i.jm, ptr %i.jn, align 8, !dbg !5069, !noalias !4983
  %i.jo = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2, !dbg !5052 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jj, !dbg !5061
  %i.jq = load ptr, ptr %i.jp, align 8, !dbg !5062, !noalias !4983, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %spec.select.i27.i.i, ptr %i.jq, align 8, !dbg !5066, !noalias !4983
  %i.jr = trunc nuw nsw i64 %i.jj to i16, !dbg !5068
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 272, !dbg !5069
  store i16 %i.jr, ptr %i.js, align 8, !dbg !5069, !noalias !4983
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3, !dbg !5052 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jo, !dbg !5061
  %i.jv = load ptr, ptr %i.ju, align 8, !dbg !5062, !noalias !4983, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %spec.select.i27.i.i, ptr %i.jv, align 8, !dbg !5066, !noalias !4983
  %i.jw = trunc nuw nsw i64 %i.jo to i16, !dbg !5068
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 272, !dbg !5069
  store i16 %i.jw, ptr %i.jx, align 8, !dbg !5069, !noalias !4983
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4, !dbg !5052 ; 2 uses
  %i.jz = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9, !dbg !5055
  tail call void @llvm.assume(i1 %i.jz), !dbg !5060
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jt, !dbg !5061
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !5062, !noalias !4983, !nonnull !14, !noundef !14 ; 2 uses
  store ptr %spec.select.i27.i.i, ptr %i.kb, align 8, !dbg !5066, !noalias !4983
  %i.kc = trunc nuw nsw i64 %i.jt to i16, !dbg !5068
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 272, !dbg !5069
  store i16 %i.kc, ptr %i.kd, align 8, !dbg !5069, !noalias !4983
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.jy, %i.iw, !dbg !5046
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, label %.lr.ph.i.i11.i.i.i, !dbg !5051

_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.by
  store i64 %.sroa.0.i.sroa.4.0.copyload.i.i, ptr %.sroa.517.i.i, align 8, !dbg !5072, !noalias !5073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.5.i.i, i64 16, i1 false), !dbg !5072, !noalias !5073
  br label %.loopexit.i.i, !dbg !5074

bb.bz:                                            ; preds = %bb.ca
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5075, !noalias !5009
  unreachable, !dbg !5075

bb.ca:                                            ; preds = %bb.bu, %.loopexit.split-lp.i.i, %.loopexit31.i.i
  %.pn.ph.i23.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bu ], [ %lpad.loopexit.i.i, %.loopexit31.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #23
          to label %common.resume unwind label %bb.bz, !dbg !5074, !noalias !5009

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, %bb.bc
  %.sroa.11.0.i.i = phi ptr [ %i.fr, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ undef, %bb.bc ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ], !dbg !5076 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ undef, %bb.bc ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ], !dbg !5076 ; 2 uses
  %.sink40.i.sroa.phi.i.i = phi ptr [ %.sroa.13.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ %.sroa.517.i.i, %bb.bc ], [ %.sroa.517.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.517.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sink.i28.i.i = phi i64 [ %i.dg, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringNtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ -1, %bb.bc ], [ -1, %.lr.ph.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i28.i.i, ptr %.sink40.i.sroa.phi.i.i, align 8, !dbg !5077, !alias.scope !4579, !noalias !5073
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i), !dbg !5078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5079, !noalias !4078
  %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i = load i64, ptr %.sroa.517.i.i, align 8, !dbg !4576, !range !1005, !noalias !4078, !noundef !14 ; 3 uses
  %.not16.i.i = icmp eq i64 %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, -1, !dbg !4576
  br i1 %.not16.i.i, label %bb.cc, label %bb.cb, !dbg !5080

bb.cb:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.719.i.i, i64 16, i1 false), !dbg !5081, !noalias !4078
  %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.56..i.i = load i64, ptr %.sroa.13.i.i, align 8, !dbg !5081, !noalias !4078, !noundef !14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i), !dbg !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i.i), !dbg !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i), !dbg !5082
  %.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.015.0.i.i to i8, !dbg !5083 ; 2 uses
  %i.kf = load ptr, ptr %i.dc, align 8, !dbg !4415, !noalias !4420, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kf, null, !dbg !4423
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i, label %bb.au, !dbg !4426

bb.cc:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i), !dbg !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i.i), !dbg !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i), !dbg !5082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !5084
  br label %bb.cg, !dbg !5084

bb.cd:                                            ; preds = %bb.ap
  %i.kg = zext nneg i16 %i.cw to i64, !dbg !5085  ; 3 uses
  %i.kh = add nuw nsw i16 %i.cw, 1, !dbg !5088
  store i16 %i.kh, ptr %i.cm, align 2, !dbg !5088, !noalias !4555
  %i.ki = getelementptr inbounds nuw i8, ptr %i.cl, i64 276, !dbg !5089
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg, !dbg !5092
  store i8 %.sroa.0.sroa.0.0.i.i, ptr %i.kj, align 1, !dbg !5097, !noalias !4555
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !5100
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %i.kg, !dbg !5103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx.i.i, i64 24, i1 false), !dbg !5109, !noalias !4078
  %i.km = add nuw nsw i64 %i.kg, 1, !dbg !5110    ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.km, !dbg !5111
  store ptr %.sroa.11.067.lcssa.i.i, ptr %i.kn, align 8, !dbg !5119, !noalias !4555
  store ptr %i.cl, ptr %.sroa.11.067.lcssa.i.i, align 8, !dbg !5122, !noalias !4555
  %i.ko = trunc nuw nsw i64 %i.km to i16, !dbg !5125
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.11.067.lcssa.i.i, i64 272, !dbg !5126
  store i16 %i.ko, ptr %i.kp, align 8, !dbg !5126, !noalias !4555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5128, !noalias !4443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5129, !noalias !4078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !5084
  br label %bb.cg, !dbg !5084

bb.ce:                                            ; preds = %bb.cf
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5130, !noalias !5131
  unreachable, !dbg !5130

bb.cf:                                            ; preds = %bb.c
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #23
          to label %common.resume unwind label %bb.ce, !dbg !5132, !noalias !5131

bb.cg:                                            ; preds = %bb.ag, %bb.cc, %bb.cd, %bb.i
  %.sroa.12.0.i = phi i64 [ %i.v, %bb.i ], [ %.sink.i.i.i, %bb.cd ], [ %.sink.i.i.i, %bb.cc ], [ %.sink.i.i.i, %bb.ag ], !dbg !5133
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.i ], [ %.sink51.i.i.i, %bb.cd ], [ %.sink51.i.i.i, %bb.cc ], [ %.sink51.i.i.i, %bb.ag ], !dbg !5133 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.val4, i64 16, !dbg !5134 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !5134, !noalias !4007, !noundef !14
  %i.ku = add i64 %i.kt, 1, !dbg !5134
  store i64 %i.ku, ptr %i.ks, align 8, !dbg !5134, !noalias !4007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8, !dbg !5136
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.kv, i64 %.sroa.12.0.i, !dbg !5143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5148
  br label %bb.ch, !dbg !5149

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit, %bb.cg
  %.sroa.0.0 = phi ptr [ %i.lb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit ], [ %i.kw, %bb.cg ], !dbg !3989
  ret ptr %.sroa.0.0, !dbg !5150

bb.ci:                                            ; preds = %bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5151
  %.val5 = load i64, ptr %i.kx, align 8, !dbg !5151, !noundef !14
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit unwind label %bb.cj, !dbg !5153

bb.cj:                                            ; preds = %bb.ci
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.ck, !dbg !5156

bb.ck:                                            ; preds = %bb.cj
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5153
  unreachable, !dbg !5153

common.resume:                                    ; preds = %bb.f, %bb.ad, %bb.aq, %bb.as, %bb.ca, %bb.cf, %bb.cj
  %common.resume.op = phi { ptr, i32 } [ %i.ky, %bb.cj ], [ %i.da, %bb.as ], [ %i.t, %bb.f ], [ %i.kr, %bb.cf ], [ %i.cy, %bb.aq ], [ %.pn.ph.i.i.i, %bb.ad ], [ %.pn.ph.i23.i.i, %bb.ca ]
  resume { ptr, i32 } %common.resume.op, !dbg !3989

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.ci
  %i.la = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !5158
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.la, i64 %.val5, !dbg !5161
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !5164
  br label %bb.ch, !dbg !5149
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBd_3vec3VecNtNtBd_6string6StringEB1N_EE9or_insertB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5166 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.5.i.i = alloca [40 x i8], align 8 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.4.i.i.sroa.5.i.i = alloca [40 x i8], align 1 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.517.i.i = alloca i64, align 8            ; 8 uses
  %.sroa.719.i.i = alloca [40 x i8], align 8      ; 5 uses
  %.sroa.13.i.i = alloca i64, align 8             ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 6 uses
  %.sroa.8.i.i = alloca [40 x i8], align 8        ; 5 uses
  %.sroa.14.i.i = alloca i64, align 8             ; 5 uses
  %.sroa.10.i.i = alloca [40 x i8], align 8       ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5167
  %i.m = load i8, ptr %i.l, align 8, !dbg !5167, !range !3988, !noundef !14 ; 6 uses
  %i.n = icmp eq i8 %i.m, -1, !dbg !5167
  %.val4 = load ptr, ptr %0, align 8, !dbg !5168  ; 9 uses
  br i1 %i.n, label %bb.ci, label %bb.b, !dbg !5169

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5170
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5170 ; 14 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5170
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !5170
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5170
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !5170 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5171
  %.not.i = icmp eq ptr %.sroa.5.0.copyload, null, !dbg !5173
  br i1 %.not.i, label %bb.c, label %bb.j, !dbg !5178

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtB6_3vec3VecNtNtB6_6string6StringEB20_EEE13new_uninit_inB1t_()
          to label %bb.d unwind label %bb.cf, !dbg !5179, !noalias !5185 ; 6 uses

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 528, !dbg !5190
  store ptr null, ptr %i.p, align 8, !dbg !5190, !noalias !5185
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 538, !dbg !5198 ; 3 uses
  store i16 0, ptr %i.q, align 2, !dbg !5198, !noalias !5185
  store ptr %i.o, ptr %.val4, align 8, !dbg !5204, !noalias !5185
  %i.r = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !5204
  store i64 0, ptr %i.r, align 8, !dbg !5204, !noalias !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5207, !noalias !5185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5207
  %i.s = load i16, ptr %i.q, align 2, !dbg !5210, !noalias !5214, !noundef !14 ; 3 uses
  %i.t = icmp ult i16 %i.s, 11, !dbg !5218
  br i1 %i.t, label %bb.i, label %bb.e, !dbg !5218, !prof !3241

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #21
          to label %bb.g unwind label %bb.f, !dbg !5220, !noalias !5214

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #23
          to label %.body unwind label %bb.h, !dbg !5221, !noalias !5222

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5223, !noalias !5222
  unreachable, !dbg !5223

bb.i:                                             ; preds = %bb.d
  %i.w = zext nneg i16 %i.s to i64, !dbg !5224    ; 3 uses
  %i.x = add nuw nsw i16 %i.s, 1, !dbg !5227
  store i16 %i.x, ptr %i.q, align 2, !dbg !5227, !noalias !5214
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 540, !dbg !5228
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w, !dbg !5231
  store i8 %i.m, ptr %i.z, align 1, !dbg !5236, !noalias !5214
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.w, !dbg !5239
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5248, !noalias !5185
  br label %bb.cg, !dbg !5249

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i), !dbg !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i), !dbg !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5254, !noalias !5255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5260), !dbg !5263
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.sroa.5.i.i), !dbg !5264
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 538, !dbg !5271 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !5271, !noalias !5272, !noundef !14 ; 3 uses
  %i.ad = icmp ugt i16 %i.ac, 10, !dbg !5275
  br i1 %i.ad, label %bb.k, label %bb.l, !dbg !5275

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp ult i64 %.sroa.7.0.copyload, 5, !dbg !5276
  br i1 %i.ae, label %bb.r, label %bb.o, !dbg !5276

bb.l:                                             ; preds = %bb.j
  %i.af = zext nneg i16 %i.ac to i64, !dbg !5279  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 540, !dbg !5287 ; 2 uses
  %i.ah = add i64 %.sroa.7.0.copyload, 1, !dbg !5291 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.ah, %i.af, !dbg !5293
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.7.0.copyload, !dbg !5294 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n, !dbg !5293

bb.m:                                             ; preds = %bb.l
  store i8 %i.m, ptr %i.ai, align 1, !dbg !5296, !alias.scope !5298, !noalias !5301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307), !dbg !5310
  br label %bb.ac, !dbg !5311

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah, !dbg !5316
  %i.ak = sub nsw i64 %i.af, %.sroa.7.0.copyload, !dbg !5318 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.ai, i64 %i.ak, i1 false), !dbg !5319, !alias.scope !5298, !noalias !5301
  store i8 %i.m, ptr %i.ai, align 1, !dbg !5296, !alias.scope !5298, !noalias !5301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5306
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, !dbg !5321
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload, i64 %i.ah, !dbg !5324
  %i.an = mul nuw nsw i64 %i.ak, 48, !dbg !5326
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.al, i64 %i.an, i1 false), !dbg !5326, !alias.scope !5329, !noalias !5331
  br label %bb.ac, !dbg !5332

bb.o:                                             ; preds = %bb.k
  switch i64 %.sroa.7.0.copyload, label %bb.p [
    i64 5, label %bb.r
    i64 6, label %bb.q
  ], !dbg !5333

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %.sroa.7.0.copyload, -7, !dbg !5334
  br label %bb.r, !dbg !5335

bb.q:                                             ; preds = %bb.o
  br label %bb.r, !dbg !5336

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.k ], [ false, %bb.o ], !dbg !5337
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.q ], [ %i.ao, %bb.p ], [ %.sroa.7.0.copyload, %bb.k ], [ %.sroa.7.0.copyload, %bb.o ], !dbg !5337 ; 7 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.q ], [ 6, %bb.p ], [ 4, %bb.k ], [ %.sroa.7.0.copyload, %bb.o ], !dbg !5337 ; 5 uses
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtB6_3vec3VecNtNtB6_6string6StringEB20_EEE13new_uninit_inB1t_()
          to label %.noexc.i.i.i unwind label %bb.w, !dbg !5338, !noalias !5272 ; 7 uses

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 528, !dbg !5345
  store ptr null, ptr %i.aq, align 8, !dbg !5345, !noalias !5353
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 538, !dbg !5357 ; 2 uses
  store i16 0, ptr %i.ar, align 2, !dbg !5357, !noalias !5353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5363), !dbg !5366
  %i.as = load i16, ptr %i.ab, align 2, !dbg !5368, !noalias !5373, !noundef !14
  %i.at = zext i16 %i.as to i64, !dbg !5375
  %i.au = xor i64 %.sroa.013.0.i.i.i, -1, !dbg !5379
  %i.av = add nsw i64 %i.at, %i.au, !dbg !5379    ; 5 uses
  %i.aw = trunc i64 %i.av to i16, !dbg !5381
  store i16 %i.aw, ptr %i.ar, align 2, !dbg !5381, !alias.scope !5363, !noalias !5383
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 540, !dbg !5384 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.013.0.i.i.i, !dbg !5387
  %i.az = load i8, ptr %i.ay, align 1, !dbg !5392, !range !4231, !noalias !5373, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !5399, !noalias !5373
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.013.0.i.i.i, !dbg !5401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !dbg !5409, !noalias !5373
  %i.bb = icmp ult i64 %i.av, 12
  br i1 %i.bb, label %bb.x, label %bb.s, !dbg !5418, !prof !4269

bb.s:                                             ; preds = %.noexc.i.i.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.av, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
          to label %bb.u unwind label %bb.t, !dbg !5430, !noalias !5373

bb.t:                                             ; preds = %bb.s
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #23
          to label %.thread.i.i.i.i unwind label %bb.v, !dbg !5431, !noalias !5373

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5432, !noalias !5373
  unreachable, !dbg !5432

.thread.i.i.i.i:                                  ; preds = %bb.t
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 552, i64 noundef 8) #27, !dbg !5433, !noalias !5353
  br label %bb.ad, !dbg !5444

bb.w:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.bf = add nuw nsw i64 %.sroa.013.0.i.i.i, 1, !dbg !5445 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bf, !dbg !5446
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 540, !dbg !5459
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull readonly align 1 %i.bg, i64 range(i64 0, 65536) %i.av, i1 false), !dbg !5460, !alias.scope !5463, !noalias !5383
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload, i64 %i.bf, !dbg !5467
  %i.bj = mul nuw nsw i64 %i.av, 48, !dbg !5481
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(552) %i.ap, ptr nonnull readonly align 8 %i.bi, i64 %i.bj, i1 false), !dbg !5481, !alias.scope !5486, !noalias !5383
  %i.bk = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16, !dbg !5490
  store i16 %i.bk, ptr %i.ab, align 2, !dbg !5490, !noalias !5373
  %.sroa.4.i.i.sroa.3.7.copyload.i.i = load i64, ptr %i.e, align 8, !dbg !5491, !noalias !5272
  %.sroa.4.i.i.sroa.5.7..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !5491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.i.i.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.sroa.5.7..sroa_idx.i.i, i64 40, i1 false), !dbg !5491, !noalias !5272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5431, !noalias !5373
  %spec.select31.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.ap, ptr %.sroa.5.0.copyload, !dbg !5492 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 538, !dbg !5494 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !dbg !5494, !noalias !5498, !noundef !14 ; 2 uses
  %i.bn = zext i16 %i.bm to i64, !dbg !5503       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 540, !dbg !5505 ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.bn, !dbg !5507
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.510.0.i.i.i, !dbg !5509 ; 3 uses
  br i1 %.not.i16.not.i.i.i, label %bb.z, label %bb.y, !dbg !5507

bb.y:                                             ; preds = %bb.x
  store i8 %i.m, ptr %i.bp, align 1, !dbg !5511, !alias.scope !5513, !noalias !5498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5517), !dbg !5520
  br label %bb.aa, !dbg !5521

bb.z:                                             ; preds = %bb.x
  %i.bq = add nuw nsw i64 %.sroa.510.0.i.i.i, 1, !dbg !5523 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq, !dbg !5524
  %i.bs = sub nuw nsw i64 %i.bn, %.sroa.510.0.i.i.i, !dbg !5526 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %i.bp, i64 %i.bs, i1 false), !dbg !5527, !alias.scope !5513, !noalias !5498
  store i8 %i.m, ptr %i.bp, align 1, !dbg !5511, !alias.scope !5513, !noalias !5498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !5516
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i, !dbg !5529
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i.i.i, i64 %i.bq, !dbg !5531
  %i.bv = mul nuw nsw i64 %i.bs, 48, !dbg !5533
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 8 %i.bt, i64 %i.bv, i1 false), !dbg !5533, !alias.scope !5535, !noalias !5537
  br label %bb.aa, !dbg !5538

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bw = add i16 %i.bm, 1, !dbg !5539
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i, !dbg !5540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !5542, !alias.scope !5545, !noalias !5498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5546
  store i16 %i.bw, ptr %i.bl, align 2, !dbg !5547, !noalias !5498
  store i64 %.sroa.4.i.i.sroa.3.7.copyload.i.i, ptr %.sroa.6.i.i, align 8, !dbg !5548, !noalias !5550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.4.i.i.sroa.5.i.i, i64 40, i1 false), !dbg !5548, !noalias !5550
  br label %bb.ae, !dbg !5551

bb.ab:                                            ; preds = %bb.ad
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5552, !noalias !5553
  unreachable, !dbg !5552

bb.ac:                                            ; preds = %bb.n, %bb.m
  %i.bz = add nuw nsw i16 %i.ac, 1, !dbg !5554
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.7.0.copyload, !dbg !5555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !5557, !alias.scope !5559, !noalias !5301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5560
  store i16 %i.bz, ptr %i.ab, align 2, !dbg !5561, !noalias !5301
  br label %bb.ae, !dbg !5551

bb.ad:                                            ; preds = %bb.w, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.bc, %.thread.i.i.i.i ], [ %i.be, %bb.w ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #23
          to label %.body unwind label %bb.ab, !dbg !5551, !noalias !5553

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.12.0.i.i = phi ptr [ %i.ap, %bb.aa ], [ undef, %bb.ac ], !dbg !5562 ; 2 uses
  %.sroa.10.0.i.i = phi i64 [ %.sroa.6.0.copyload, %bb.aa ], [ undef, %bb.ac ], !dbg !5562 ; 2 uses
  %.sroa.03.0.i.i = phi i8 [ %i.az, %bb.aa ], [ undef, %bb.ac ], !dbg !5562 ; 2 uses
  %.sink55.i.sroa.phi.i.i = phi ptr [ %.sroa.14.i.i, %bb.aa ], [ %.sroa.6.i.i, %bb.ac ]
  %.sink54.i.i.i = phi i64 [ 0, %bb.aa ], [ -1, %bb.ac ]
  %.sink52.i.i.i = phi ptr [ %spec.select31.i.i.i, %bb.aa ], [ %.sroa.5.0.copyload, %bb.ac ] ; 3 uses
  %.sink.i.i.i = phi i64 [ %.sroa.510.0.i.i.i, %bb.aa ], [ %.sroa.7.0.copyload, %bb.ac ] ; 3 uses
  store i64 %.sink54.i.i.i, ptr %.sink55.i.sroa.phi.i.i, align 8, !dbg !5563, !alias.scope !5260, !noalias !5550
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.sroa.5.i.i), !dbg !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5565, !noalias !5255
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = load i64, ptr %.sroa.6.i.i, align 8, !dbg !5250, !range !1005, !noalias !5255, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, -1, !dbg !5250
  br i1 %.not.i.i, label %bb.ag, label %bb.af, !dbg !5566

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !5567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, i64 40, i1 false), !dbg !5568, !noalias !5255
  %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.80..i.i = load i64, ptr %.sroa.14.i.i, align 8, !dbg !5568, !noalias !5255, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i), !dbg !5569
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 528, !dbg !5570
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !5570, !noalias !5575, !noundef !14 ; 2 uses
  %.not.i83.i.i = icmp eq ptr %i.cc, null, !dbg !5578
  br i1 %.not.i83.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !5581

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.10.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.au, !dbg !5581

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !5569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i), !dbg !5569
  br label %bb.cg, !dbg !5582

._crit_edge.loopexit.i.i:                         ; preds = %bb.cb
  %.sroa.0.sroa.7.0.extract.shift.i.i = and i64 %.sroa.015.0.i.i, -256, !dbg !5584
  br label %._crit_edge.i.i, !dbg !5586

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.af
  %.sroa.0.sroa.7.sroa.0.0.i.i = phi i64 [ 0, %bb.af ], [ %.sroa.0.sroa.7.0.extract.shift.i.i, %._crit_edge.loopexit.i.i ], !dbg !5587
  %.sroa.0.sroa.0.0.i.i = phi i8 [ %.sroa.03.0.i.i, %bb.af ], [ %.sroa.0.sroa.0.0.extract.trunc.i.i, %._crit_edge.loopexit.i.i ], !dbg !5587 ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %bb.af ], [ %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, %._crit_edge.loopexit.i.i ], !dbg !5587
  %.lcssa76.i.i = phi i64 [ %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.80..i.i, %bb.af ], [ %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.80..i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.11.069.lcssa.i.i = phi ptr [ %.sroa.12.0.i.i, %bb.af ], [ %.sroa.11.0.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.lcssa62.i.i = phi i64 [ %.sroa.10.0.i.i, %bb.af ], [ %i.de, %._crit_edge.loopexit.i.i ]
  %.lcssa55.i.i = phi ptr [ %.sroa.5.0.copyload, %bb.af ], [ %i.da, %._crit_edge.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5588, !noalias !5255
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.0.sroa.0.0.i.i to i64, !dbg !5584
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.7.sroa.0.0.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i, !dbg !5584
  %.sroa.02.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, i64 40, i1 false), !dbg !5584, !noalias !5255
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.g, align 8, !dbg !5588, !noalias !5255
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !5588 ; 4 uses
  store i64 %.sroa.7.0.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5588, !noalias !5255
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !5588
  store ptr %.lcssa55.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !5588, !noalias !5255
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !5588
  store i64 %.lcssa62.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !dbg !5588, !noalias !5255
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !5588
  store ptr %.sroa.11.069.lcssa.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !dbg !5588, !noalias !5255
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !5588
  store i64 %.lcssa76.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !dbg !5588, !noalias !5255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.ce = load ptr, ptr %.val4, align 8, !dbg !5589, !noalias !5595, !noundef !14 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !5589 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.ce, null, !dbg !5589
  br i1 %.not.i19.i.i, label %bb.ah, label %bb.aj, !dbg !5598, !prof !163

bb.ah:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #21
          to label %bb.ai unwind label %bb.as, !dbg !5599, !noalias !5595

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5602), !dbg !5605
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !5611, !alias.scope !5602, !noalias !5595, !noundef !14 ; 2 uses
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtB6_3vec3VecNtNtB6_6string6StringEB25_EEE13new_uninit_inB1y_()
          to label %.noexc.i.i.i.i unwind label %bb.an, !dbg !5617, !noalias !5627 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 528, !dbg !5628
  store ptr null, ptr %i.ci, align 8, !dbg !5628, !noalias !5627
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 538, !dbg !5636 ; 3 uses
  store i16 0, ptr %i.cj, align 2, !dbg !5636, !noalias !5627
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 552, !dbg !5642 ; 2 uses
  store ptr %i.ce, ptr %i.ck, align 8, !dbg !5644, !noalias !5627
  %i.cl = add i64 %i.cg, 1, !dbg !5647            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0, !dbg !5648
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.ao, !dbg !5651, !prof !163

bb.ak:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
          to label %bb.al unwind label %bb.am, !dbg !5652, !noalias !5627

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 648, i64 noundef 8) #27, !dbg !5653, !noalias !5627
  br label %.body.i.i.i.i, !dbg !5664

bb.an:                                            ; preds = %bb.aj
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i, !dbg !5665

.body.i.i.i.i:                                    ; preds = %bb.an, %bb.am
  tail call void @llvm.trap(), !dbg !5666
  unreachable, !dbg !5666

bb.ao:                                            ; preds = %.noexc.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 528, !dbg !5669
  store ptr %i.ch, ptr %i.co, align 8, !dbg !5669, !noalias !5689
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 536, !dbg !5694
  store i16 0, ptr %i.cp, align 8, !dbg !5694, !noalias !5697
  store ptr %i.ch, ptr %.val4, align 8, !dbg !5698, !alias.scope !5602, !noalias !5595
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !5698, !alias.scope !5602, !noalias !5595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5702, !noalias !5595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !dbg !5702, !noalias !5255
  %i.cq = icmp eq i64 %.lcssa76.i.i, %i.cg, !dbg !5703
  br i1 %i.cq, label %bb.ap, label %.invoke.i.i.i.i, !dbg !5703, !prof !3241

.invoke.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao
  %i.cr = phi ptr [ @29, %bb.ao ], [ @27, %bb.ap ]
  %i.cs = phi i64 [ 48, %bb.ao ], [ 32, %bb.ap ]
  %i.ct = phi ptr [ @30, %bb.ao ], [ @31, %bb.ap ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #21
          to label %.cont.i.i.i.i unwind label %bb.aq, !dbg !5706, !noalias !5707

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load i16, ptr %i.cj, align 2, !dbg !5710, !noalias !5707, !noundef !14 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11, !dbg !5712
  br i1 %i.cv, label %bb.cd, label %.invoke.i.i.i.i, !dbg !5712, !prof !3241

bb.aq:                                            ; preds = %.invoke.i.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c) #23
          to label %.body unwind label %bb.ar, !dbg !5714, !noalias !5595

bb.ar:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5715, !noalias !5595
  unreachable, !dbg !5715

bb.as:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i) #23
          to label %.body unwind label %bb.at, !dbg !5716, !noalias !5255

bb.at:                                            ; preds = %bb.as
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !5717, !noalias !5255
  unreachable, !dbg !5717

bb.au:                                            ; preds = %bb.cb, %.lr.ph.i.i
  %.sroa.0.sroa.0.1.i.i = phi i8 [ %.sroa.03.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.sroa.0.0.extract.trunc.i.i, %bb.cb ], !dbg !5587 ; 4 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %.lr.ph.i.i ], [ %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, %bb.cb ], !dbg !5587
  %i.da = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.ko, %bb.cb ] ; 20 uses
  %i.db = phi ptr [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.da, %bb.cb ]
  %i.dc = phi i64 [ %.sroa.10.0.i.i, %.lr.ph.i.i ], [ %i.de, %bb.cb ] ; 2 uses
  %.sroa.11.06984.i.i = phi ptr [ %.sroa.12.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.0.i.i, %bb.cb ] ; 2 uses
  %i.dd = phi i64 [ %.sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.80..i.i, %.lr.ph.i.i ], [ %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.80..i.i, %bb.cb ]
  %i.de = add i64 %i.dc, 1, !dbg !5718            ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 536, !dbg !5724
  %i.dg = load i16, ptr %i.df, align 8, !dbg !5724, !noalias !5575 ; 4 uses
  %i.dh = zext i16 %i.dg to i64, !dbg !5725       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i), !dbg !5728
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i.i), !dbg !5728
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i), !dbg !5728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5730, !noalias !5255
  store i64 %.sroa.7.1.i.i, ptr %i.h, align 8, !dbg !5730, !noalias !5255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, i64 40, i1 false), !dbg !5730, !noalias !5255
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5731), !dbg !5734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i), !dbg !5735
  %i.di = icmp eq i64 %i.dd, %i.dc, !dbg !5738
  br i1 %i.di, label %bb.aw, label %bb.av, !dbg !5738, !prof !3241

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
          to label %bb.ax unwind label %.loopexit.split-lp.i.i, !dbg !5739, !noalias !5740

bb.aw:                                            ; preds = %bb.au
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 538, !dbg !5743 ; 4 uses
  %i.dk = load i16, ptr %i.dj, align 2, !dbg !5743, !noalias !5740, !noundef !14 ; 5 uses
  %i.dl = icmp ult i16 %i.dk, 11, !dbg !5746
  br i1 %i.dl, label %bb.az, label %bb.ay, !dbg !5746

.loopexit31.i.i:                                  ; preds = %bb.bg
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp.i.i:                           ; preds = %bb.av
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.dm = icmp ult i16 %i.dg, 5, !dbg !5747
  br i1 %i.dm, label %bb.bg, label %bb.bd, !dbg !5747
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBd_3vec3VecNtNtBd_6string6StringEB1N_EE9or_insertB1g_:bb.a
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hh, !dbg !6079
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !6084, !alias.scope !6065, !noalias !6088, !nonnull !14, !noundef !14 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 528, !dbg !6091
  store ptr %i.fs, ptr %i.hq, align 8, !dbg !6091, !noalias !6093
  %i.hr = trunc nuw nsw i64 %i.hh to i16, !dbg !6094
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 536, !dbg !6095
  store i16 %i.hr, ptr %i.hs, align 8, !dbg !6095, !noalias !6088
  %i.ht = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4, !dbg !6076 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hn, !dbg !6079
  %i.hv = load ptr, ptr %i.hu, align 8, !dbg !6084, !alias.scope !6065, !noalias !6088, !nonnull !14, !noundef !14 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 528, !dbg !6091
  store ptr %i.fs, ptr %i.hw, align 8, !dbg !6091, !noalias !6093
  %i.hx = trunc nuw nsw i64 %i.hn to i16, !dbg !6094
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 536, !dbg !6095
  store i16 %i.hx, ptr %i.hy, align 8, !dbg !6095, !noalias !6088
  %niter.next.3 = add i64 %niter, 4, !dbg !6070   ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !6070
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.br, !dbg !6070

bb.bs:                                            ; preds = %bb.bo
  unreachable

bb.bt:                                            ; preds = %bb.bp
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6097, !noalias !5882
  unreachable, !dbg !6097

bb.bu:                                            ; preds = %bb.bp, %bb.bi
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gf, %bb.bi ], [ %i.gv, %bb.bp ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fs, i64 noundef 648, i64 noundef 8) #27, !dbg !6098, !noalias !5882
  br label %bb.ca, !dbg !6097

.unr-lcssa:                                       ; preds = %bb.br
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6070
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader, !dbg !6070

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bq
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.bq ], [ %i.ht, %.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0, !dbg !6070
  tail call void @llvm.assume(i1 %lcmp.mod152), !dbg !6070
  br label %bb.bv, !dbg !6070

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ia, %bb.bv ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bv ]
  %i.ia = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1, !dbg !6076
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.sroa.0.09.i.i.i.i.i.i.epil, !dbg !6079
  %i.ic = load ptr, ptr %i.ib, align 8, !dbg !6084, !alias.scope !6065, !noalias !6088, !nonnull !14, !noundef !14 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 528, !dbg !6091
  store ptr %i.fs, ptr %i.id, align 8, !dbg !6091, !noalias !6093
  %i.ie = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16, !dbg !6094
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 536, !dbg !6095
  store i16 %i.ie, ptr %i.if, align 8, !dbg !6095, !noalias !6088
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !6070 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !6070
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bv, !dbg !6070, !llvm.loop !6105

.epilog-lcssa:                                    ; preds = %bb.bv, %.unr-lcssa
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !6106, !noalias !5740
  %.sroa.0.i.sroa.4.0.copyload.i.i = load i64, ptr %i.cd, align 8, !dbg !6106, !noalias !5740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.5.0..sroa_idx.i.i, i64 40, i1 false), !dbg !6106, !noalias !5740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6108, !noalias !5882
  %spec.select.i27.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.fs, ptr %i.da, !dbg !6109 ; 12 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 538, !dbg !6111 ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 2, !dbg !6111, !noalias !6115, !noundef !14 ; 2 uses
  %i.ii = zext i16 %i.ih to i64, !dbg !6119       ; 5 uses
  %i.ij = add i16 %i.ih, 1, !dbg !6121
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 540, !dbg !6122 ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.5.0.i.i.i, 1, !dbg !6124 ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ii, !dbg !6126
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.sroa.5.0.i.i.i, !dbg !6127 ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.bx, label %bb.bw, !dbg !6126

bb.bw:                                            ; preds = %.epilog-lcssa
  store i8 %.sroa.0.sroa.0.1.i.i, ptr %i.im, align 1, !dbg !6129, !alias.scope !6131, !noalias !6115
  %i.in = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i27.i.i, i64 %.sroa.5.0.i.i.i, !dbg !6134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.in, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !6137, !noalias !6139
  br label %bb.by, !dbg !6140

bb.bx:                                            ; preds = %.epilog-lcssa
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il, !dbg !6142
  %i.ip = sub nuw nsw i64 %i.ii, %.sroa.5.0.i.i.i, !dbg !6144 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.io, ptr nonnull align 1 %i.im, i64 %i.ip, i1 false), !dbg !6145, !alias.scope !6131, !noalias !6115
  store i8 %.sroa.0.sroa.0.1.i.i, ptr %i.im, align 1, !dbg !6129, !alias.scope !6131, !noalias !6115
  %i.iq = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i27.i.i, i64 %.sroa.5.0.i.i.i, !dbg !6147 ; 2 uses
  %i.ir = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i27.i.i, i64 %i.il, !dbg !6149
  %i.is = mul nuw nsw i64 %i.ip, 48, !dbg !6151
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ir, ptr nonnull align 8 %i.iq, i64 %i.is, i1 false), !dbg !6151, !alias.scope !6153, !noalias !6156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iq, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !6137, !noalias !6139
  %i.it = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 552, !dbg !6158 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.il, !dbg !6160
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.sroa.5.0.i.i.i, !dbg !6162
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16, !dbg !6162
  %i.ix = shl nuw nsw i64 %i.ip, 3, !dbg !6164
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr nonnull align 8 %i.iu, i64 %i.ix, i1 false), !dbg !6164, !alias.scope !6166, !noalias !6115
  br label %bb.by, !dbg !6169

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.iy = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 552, !dbg !6158 ; 6 uses
  %i.iz = add nuw nsw i64 %i.ii, 2, !dbg !6170    ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.il, !dbg !6171
  store ptr %.sroa.11.06984.i.i, ptr %i.ja, align 8, !dbg !6173, !alias.scope !6166, !noalias !6115
  store i16 %i.ij, ptr %i.ig, align 2, !dbg !6175, !noalias !6115
  %i.jb = icmp samesign ult i64 %i.il, %i.iz, !dbg !6176
  br i1 %i.jb, label %.lr.ph.i.i11.i.i.i.preheader, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, !dbg !6181

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.by
  %i.jc = add nuw nsw i64 %i.ii, 1, !dbg !6181
  %i.jd = sub nsw i64 %i.jc, %.sroa.5.0.i.i.i, !dbg !6181
  %i.je = sub nsw i64 %i.ii, %.sroa.5.0.i.i.i, !dbg !6181
  %xtraiter153 = and i64 %i.jd, 3, !dbg !6181     ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0, !dbg !6181
  br i1 %lcmp.mod154.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !dbg !6181

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jf, %.lr.ph.i.i11.i.i.i.prol ], [ %i.il, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1, !dbg !6182 ; 2 uses
  %i.jg = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12, !dbg !6185
  tail call void @llvm.assume(i1 %i.jg), !dbg !6190
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.0.06.i.i12.i.i.i.prol, !dbg !6191
  %i.ji = load ptr, ptr %i.jh, align 8, !dbg !6192, !noalias !6115, !nonnull !14, !noundef !14 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 528, !dbg !6196
  store ptr %spec.select.i27.i.i, ptr %i.jj, align 8, !dbg !6196, !noalias !6115
  %i.jk = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16, !dbg !6198
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 536, !dbg !6199
  store i16 %i.jk, ptr %i.jl, align 8, !dbg !6199, !noalias !6115
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6181 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter153, !dbg !6181
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !dbg !6181, !llvm.loop !6201

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.il, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jf, %.lr.ph.i.i11.i.i.i.prol ]
  %i.jm = icmp ult i64 %i.je, 3, !dbg !6181
  br i1 %i.jm, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, label %.lr.ph.i.i11.i.i.i, !dbg !6181

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.kf, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.jn = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1, !dbg !6182 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.0.06.i.i12.i.i.i, !dbg !6191
  %i.jp = load ptr, ptr %i.jo, align 8, !dbg !6192, !noalias !6115, !nonnull !14, !noundef !14 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 528, !dbg !6196
  store ptr %spec.select.i27.i.i, ptr %i.jq, align 8, !dbg !6196, !noalias !6115
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16, !dbg !6198
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 536, !dbg !6199
  store i16 %i.jr, ptr %i.js, align 8, !dbg !6199, !noalias !6115
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2, !dbg !6182 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jn, !dbg !6191
  %i.jv = load ptr, ptr %i.ju, align 8, !dbg !6192, !noalias !6115, !nonnull !14, !noundef !14 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 528, !dbg !6196
  store ptr %spec.select.i27.i.i, ptr %i.jw, align 8, !dbg !6196, !noalias !6115
  %i.jx = trunc nuw nsw i64 %i.jn to i16, !dbg !6198
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 536, !dbg !6199
  store i16 %i.jx, ptr %i.jy, align 8, !dbg !6199, !noalias !6115
  %i.jz = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3, !dbg !6182 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jt, !dbg !6191
  %i.kb = load ptr, ptr %i.ka, align 8, !dbg !6192, !noalias !6115, !nonnull !14, !noundef !14 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 528, !dbg !6196
  store ptr %spec.select.i27.i.i, ptr %i.kc, align 8, !dbg !6196, !noalias !6115
  %i.kd = trunc nuw nsw i64 %i.jt to i16, !dbg !6198
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 536, !dbg !6199
  store i16 %i.kd, ptr %i.ke, align 8, !dbg !6199, !noalias !6115
  %i.kf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4, !dbg !6182 ; 2 uses
  %i.kg = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9, !dbg !6185
  tail call void @llvm.assume(i1 %i.kg), !dbg !6190
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jz, !dbg !6191
  %i.ki = load ptr, ptr %i.kh, align 8, !dbg !6192, !noalias !6115, !nonnull !14, !noundef !14 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 528, !dbg !6196
  store ptr %spec.select.i27.i.i, ptr %i.kj, align 8, !dbg !6196, !noalias !6115
  %i.kk = trunc nuw nsw i64 %i.jz to i16, !dbg !6198
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 536, !dbg !6199
  store i16 %i.kk, ptr %i.kl, align 8, !dbg !6199, !noalias !6115
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.kf, %i.iz, !dbg !6176
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, label %.lr.ph.i.i11.i.i.i, !dbg !6181

_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.by
  store i64 %.sroa.0.i.sroa.4.0.copyload.i.i, ptr %.sroa.517.i.i, align 8, !dbg !6202, !noalias !6203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.719.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.5.i.i, i64 40, i1 false), !dbg !6202, !noalias !6203
  br label %.loopexit.i.i, !dbg !6204

bb.bz:                                            ; preds = %bb.ca
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6205, !noalias !6139
  unreachable, !dbg !6205

bb.ca:                                            ; preds = %bb.bu, %.loopexit.split-lp.i.i, %.loopexit31.i.i
  %.pn.ph.i23.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bu ], [ %lpad.loopexit.i.i, %.loopexit31.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h) #23
          to label %.body unwind label %bb.bz, !dbg !6204, !noalias !6139

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i, %bb.bc
  %.sroa.11.0.i.i = phi ptr [ %i.fs, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ undef, %bb.bc ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ], !dbg !6206 ; 3 uses
  %.sroa.015.0.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ undef, %bb.bc ], [ undef, %.lr.ph.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.prol.loopexit ], !dbg !6206 ; 2 uses
  %.sink41.i.sroa.phi.i.i = phi ptr [ %.sroa.13.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ %.sroa.517.i.i, %bb.bc ], [ %.sroa.517.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.517.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sink.i28.i.i = phi i64 [ %i.de, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2NzvFoTxuAy_2rg5flags8CategoryTINtNtBb_3vec3VecNtNtBb_6string6StringEB2d_ENtB1m_8InternalENtB1m_4EdgeE10insert_fitB1G_.exit14.i.i.i ], [ -1, %bb.bc ], [ -1, %.lr.ph.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i28.i.i, ptr %.sink41.i.sroa.phi.i.i, align 8, !dbg !6207, !alias.scope !5731, !noalias !6203
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5.i.i), !dbg !6208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6209, !noalias !5255
  %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i = load i64, ptr %.sroa.517.i.i, align 8, !dbg !5728, !range !1005, !noalias !5255, !noundef !14 ; 3 uses
  %.not16.i.i = icmp eq i64 %.sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.i.0..sroa.517.i.0..sroa.517.i.0..sroa.517.0..sroa.517.0..sroa.517.8..i.i, -1, !dbg !5728
  br i1 %.not16.i.i, label %bb.cc, label %bb.cb, !dbg !6210

bb.cb:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.719.i.i, i64 40, i1 false), !dbg !6211, !noalias !5255
  %.sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.80..i.i = load i64, ptr %.sroa.13.i.i, align 8, !dbg !6211, !noalias !5255, !noundef !14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i), !dbg !6212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i.i), !dbg !6212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i), !dbg !6212
  %.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.015.0.i.i to i8, !dbg !6213 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.da, i64 528, !dbg !5570
  %i.ko = load ptr, ptr %i.kn, align 8, !dbg !5570, !noalias !5575, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ko, null, !dbg !5578
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i, label %bb.au, !dbg !5581

bb.cc:                                            ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517.i.i), !dbg !6212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i.i), !dbg !6212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i), !dbg !6212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !6214
  br label %bb.cg, !dbg !6214

bb.cd:                                            ; preds = %bb.ap
  %i.kp = zext nneg i16 %i.cu to i64, !dbg !6215  ; 3 uses
  %i.kq = add nuw nsw i16 %i.cu, 1, !dbg !6218
  store i16 %i.kq, ptr %i.cj, align 2, !dbg !6218, !noalias !5707
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ch, i64 540, !dbg !6219
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kp, !dbg !6222
  store i8 %.sroa.0.sroa.0.0.i.i, ptr %i.ks, align 1, !dbg !6227, !noalias !5707
  %i.kt = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.kp, !dbg !6230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kt, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !dbg !6238, !noalias !5255
  %i.ku = add nuw nsw i64 %i.kp, 1, !dbg !6239    ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ku, !dbg !6240
  store ptr %.sroa.11.069.lcssa.i.i, ptr %i.kv, align 8, !dbg !6248, !noalias !5707
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.11.069.lcssa.i.i, i64 528, !dbg !6251
  store ptr %i.ch, ptr %i.kw, align 8, !dbg !6251, !noalias !5707
  %i.kx = trunc nuw nsw i64 %i.ku to i16, !dbg !6254
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.11.069.lcssa.i.i, i64 536, !dbg !6255
  store i16 %i.kx, ptr %i.ky, align 8, !dbg !6255, !noalias !5707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6257, !noalias !5595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6258, !noalias !5255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !6214
  br label %bb.cg, !dbg !6214

bb.ce:                                            ; preds = %bb.cf
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6259, !noalias !6260
  unreachable, !dbg !6259

bb.cf:                                            ; preds = %bb.c
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k) #23
          to label %.body unwind label %bb.ce, !dbg !6261, !noalias !6260

bb.cg:                                            ; preds = %bb.ag, %bb.cc, %bb.cd, %bb.i
  %.sroa.12.0.i = phi i64 [ %i.w, %bb.i ], [ %.sink.i.i.i, %bb.cd ], [ %.sink.i.i.i, %bb.cc ], [ %.sink.i.i.i, %bb.ag ], !dbg !6262
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.i ], [ %.sink52.i.i.i, %bb.cd ], [ %.sink52.i.i.i, %bb.cc ], [ %.sink52.i.i.i, %bb.ag ], !dbg !6262 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val4, i64 16, !dbg !6263 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !dbg !6263, !noalias !5185, !noundef !14
  %i.ld = add i64 %i.lc, 1, !dbg !6263
  store i64 %i.ld, ptr %i.lb, align 8, !dbg !6263, !noalias !5185
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.le = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.i, i64 %.sroa.12.0.i, !dbg !6265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !6275
  br label %bb.ch, !dbg !6276

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %.sroa.0.0 = phi ptr [ %i.lg, %bb.ci ], [ %i.le, %bb.cg ], !dbg !5168
  ret ptr %.sroa.0.0, !dbg !6277

bb.ci:                                            ; preds = %bb.a
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6278
  %.val5 = load i64, ptr %i.lf, align 8, !dbg !6278, !noundef !14
  %i.lg = getelementptr inbounds nuw [48 x i8], ptr %.val4, i64 %.val5, !dbg !6280
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBH_6string6StringEBC_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %1), !dbg !6276
  br label %bb.ch, !dbg !6276

.body:                                            ; preds = %bb.cf, %bb.ca, %bb.as, %bb.aq, %bb.ad, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.cy, %bb.as ], [ %i.u, %bb.f ], [ %i.la, %bb.cf ], [ %i.cw, %bb.aq ], [ %.pn.ph.i.i.i, %bb.ad ], [ %.pn.ph.i23.i.i, %bb.ca ]
  resume { ptr, i32 } %eh.lpad-body, !dbg !6285
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringINtNtCskKLDkoKarTP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2NzvFoTxuAy_2rg(ptr %.0.val, i64 %.16.val) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !6286 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !6287
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.16.val, !dbg !6289 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272, !dbg !6294
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.16.val, !dbg !6296 ; 5 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.b, !dbg !6302

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c, !dbg !6312

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6302
  unreachable, !dbg !6302

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit unwind label %bb.d, !dbg !6314

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !6316

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs2NzvFoTxuAy_2rg(ptr nonnull %i.d) #23
          to label %common.resume unwind label %bb.h, !dbg !6316

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg.exit.i
  %i.h = load i64, ptr %i.d, align 8, !dbg !6317, !range !1005, !alias.scope !6323, !noundef !14
  %i.i = icmp eq i64 %i.h, -1, !dbg !6317
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs2NzvFoTxuAy_2rg.exit, label %bb.e, !dbg !6317

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.f, !dbg !6326

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.g, !dbg !6330

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6326
  unreachable, !dbg !6326

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !6332

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !6333
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs2NzvFoTxuAy_2rg.exit, !dbg !6317

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEEECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i
  ret void, !dbg !6335

bb.h:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !6336
  unreachable, !dbg !6336
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3setINtB5_8BTreeSetINtNtBb_6borrow3CowShEE12intersectionCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #6 !dbg !6337 {
bb.a:
  %.val254 = load ptr, ptr %1, align 8, !dbg !6338, !noundef !14 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6338
  %.val255 = load i64, ptr %i.a, align 8, !dbg !6338 ; 12 uses
  %.not.i = icmp eq ptr %.val254, null, !dbg !6341
  br i1 %.not.i, label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CowShENtNtB7_7set_val9SetValZSTE15first_key_valueCs2NzvFoTxuAy_2rg.exit.thread, label %.preheader.i, !dbg !6346

.preheader.i:                                     ; preds = %bb.a
  %i.b = icmp eq i64 %.val255, 0, !dbg !6347
  br i1 %i.b, label %._crit_edge.i.thread, label %.lr.ph.i.preheader, !dbg !6347

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %.val255, 7, !dbg !6347     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6347
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !6347

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.015.02.i.prol = phi i64 [ %i.e, %.lr.ph.i.prol ], [ %.val255, %.lr.ph.i.preheader ]
  %.sroa.017.01.i.prol = phi ptr [ %i.d, %.lr.ph.i.prol ], [ %.val254, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.017.01.i.prol, i64 280, !dbg !6354
  %i.d = load ptr, ptr %i.c, align 8, !dbg !6359, !nonnull !14, !noundef !14 ; 3 uses
  %i.e = add i64 %.sroa.015.02.i.prol, -1, !dbg !6366 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !6347 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !6347
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !6347, !llvm.loop !6368

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa350.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %.sroa.015.02.i.unr = phi i64 [ %.val255, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.sroa.017.01.i.unr = phi ptr [ %.val254, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.f = icmp ult i64 %.val255, 8, !dbg !6347
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i, !dbg !6347

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa350 = phi ptr [ %.lcssa350.unr, %.lr.ph.i.prol.loopexit ], [ %i.ai, %.lr.ph.i ], !dbg !6359 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa350, i64 274, !dbg !6369
  %i.h = load i16, ptr %i.g, align 2, !dbg !6369, !noundef !14
  %.not29.i = icmp eq i16 %i.h, 0, !dbg !6374
  br i1 %.not29.i, label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CowShENtNtB7_7set_val9SetValZSTE15first_key_valueCs2NzvFoTxuAy_2rg.exit.thread, label %.lr.ph.i.i.preheader, !dbg !6374

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter351 = and i64 %.val255, 7, !dbg !6375  ; 2 uses
end_hunk_2
