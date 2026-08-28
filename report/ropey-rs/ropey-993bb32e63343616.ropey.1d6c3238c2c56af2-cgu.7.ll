Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.7?download=true
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal:_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.hi = load <16 x i8>, ptr %i.hh, align 16, !noalias !85
  %i.hj = icmp slt <16 x i8> %i.hi, splat (i8 -64)
  %i.hk = zext <16 x i1> %i.hj to <16 x i8>
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i189.i.i, i64 48
  %i.hm = load <16 x i8>, ptr %i.hl, align 16, !noalias !85
  %i.hn = icmp slt <16 x i8> %i.hm, splat (i8 -64)
  %i.ho = zext <16 x i1> %i.hn to <16 x i8>
  %i.hp = add nuw nsw <16 x i8> %i.hg, %i.hc
  %i.hq = add nuw nsw <16 x i8> %i.hp, %i.hk
  %i.hr = add nuw nsw <16 x i8> %i.hq, %i.ho
  %i.hs = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.hr, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i6.i.i = extractelement <2 x i64> %i.hs, i64 0
  %.sroa.0.8.vec.extract.i7.i.i = extractelement <2 x i64> %i.hs, i64 1
  %i.ht = add i64 %.sroa.0.8.vec.extract.i7.i.i, %.sroa.01.0.i190.i.i
  %i.hu = add i64 %i.ht, %.sroa.0.0.vec.extract.i6.i.i ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i1.i, label %._crit_edge192.i.i, label %.lr.ph191.i.i

bb.ad:                                            ; preds = %bb.x
  %i.hv = load i64, ptr %i.h, align 8, !noalias !85, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !115
  store i64 0, ptr %i.j, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bw, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.hv, ptr %.sroa.9.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.ad
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.loopexit, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.eq, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ep, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %i.ia, %.preheader.i.i.epil ], [ %.sroa.04.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i64 [ %i.hz, %.preheader.i.i.epil ], [ %.sroa.02.0.i.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.04.0.i.i.i.epil
  %.val.i.i.i.epil = load i8, ptr %i.hw, align 1, !alias.scope !94, !noalias !85, !noundef !8
  %i.hx = icmp sgt i8 %.val.i.i.i.epil, -65
  %i.hy = zext i1 %i.hx to i64
  %i.hz = add i64 %.sroa.02.0.i.i.i.epil, %i.hy   ; 2 uses
  %i.ia = add nuw nsw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.i.epil, !llvm.loop !118

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.epil, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i = phi i64 [ %i.gx, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit.i.i ], [ 0, %bb.ac ], [ %i.ep, %.loopexit.loopexit.unr-lcssa ], [ %i.hz, %.preheader.i.i.epil ]
  %i.ib = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.n)
          to label %bb.ae unwind label %bb.n

bb.ae:                                            ; preds = %.loopexit
  %i.ic = add i64 %i.ci, %.sroa.0.0.i.i.i
  %i.id = sub i64 %i.br, %i.ic
  %i.ie = invoke noundef zeroext i1 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node13fix_tree_seam(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.ib, i64 noundef %i.id)
          to label %bb.s unwind label %bb.n       ; 0 uses

bb.af:                                            ; preds = %bb.ap, %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2wCc12Mnjqg_5ropey.exit.i
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.a, %bb.b, %bb.af
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.invoke:                                          ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17, %._crit_edge
  %i.ig = phi ptr [ @1, %._crit_edge ], [ @4, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ig) #19
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17
  %.sink11.i15 = select i1 %i.an, ptr %i.ae, ptr %i.r
  %i.ih = load ptr, ptr %i.af, align 8, !nonnull !8
  %.sink12.i14 = select i1 %i.an, ptr %i.ih, ptr %i.ae
  %i.ii = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ii, ptr %.sink11.i15, align 8
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i14, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !8, !noundef !8 ; 4 uses
  store ptr %i.ik, ptr %i.q, align 8
  %i.il = add i64 %.sroa.0.057, -1                ; 3 uses
  %i.im = invoke noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.ai unwind label %.loopexit51

bb.ah:                                            ; preds = %bb.am
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.in = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.im)
          to label %bb.aj unwind label %.loopexit51 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.io = load i8, ptr %i.in, align 8, !range !4, !noundef !8
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.iq)
          to label %bb.am unwind label %.loopexit51

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #19
          to label %bb.g unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  store ptr %i.ik, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.ir, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %bb.an unwind label %bb.ah

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not = icmp eq i64 %i.il, 0
  br i1 %.not, label %._crit_edge.loopexit, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit17

.loopexit51:                                      ; preds = %bb.ag, %bb.ai, %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit51
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit51 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.is = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !119
  %i.it = icmp eq i64 %i.is, 1
  br i1 %i.it, label %bb.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4rope4RopeEBF_.exit unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder16append_leaf_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1024 x i8], align 8              ; 8 uses
  %i.e = alloca [1024 x i8], align 8              ; 8 uses
  %i.f = alloca [1024 x i8], align 8              ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [968 x i8], align 8               ; 4 uses
  %.sroa.412 = alloca [975 x i8], align 1         ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.49 = alloca [975 x i8], align 1          ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 5 uses
  %i.n = alloca [968 x i8], align 8               ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.4 = alloca [975 x i8], align 1           ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 5 uses
  %i.t = alloca [968 x i8], align 8               ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !124, !noalias !127, !noundef !8 ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %.pre = load i64, ptr %i.z, align 8
  %i.aa = select i1 %i.y, i64 %.pre, i64 %i.x     ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.a, label %bb.b, !prof !12

.body42:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit
  br i1 %.sroa.019.4, label %.body42.thread124, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.a:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %bb.c unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread124

bb.b:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit
  %.sink11.i = select i1 %i.y, ptr %i.z, ptr %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8
  %.sink12.i = select i1 %i.y, ptr %i.ae, ptr %i.z
  %i.af = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.af, ptr %.sink11.i, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sink12.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 5 uses
  store ptr %i.ah, ptr %i.u, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !4, !noundef !8
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ah, ptr %i.c, align 8, !noalias !129
  %i.al = load i64, ptr %i.w, align 8, !alias.scope !132, !noalias !135, !noundef !8 ; 3 uses
  %i.am = icmp ugt i64 %i.al, 4
  br i1 %i.am, label %bb.e, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !132, !noalias !135, !nonnull !8, !noundef !8
  %.pre.i = load i64, ptr %i.z, align 8, !alias.scope !129
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i

bb.f:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !137
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %.body42.thread124

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #22
          to label %.body42.thread124 unwind label %bb.j

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i: ; preds = %bb.d, %bb.e
  %i.as = phi i64 [ %.pre.i, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.ao, %bb.e ], [ %i.z, %bb.d ]
  %.sink11.i.i = phi ptr [ %i.z, %bb.e ], [ %i.w, %bb.d ]
  %.sink.i.i = phi i64 [ %i.al, %bb.e ], [ 4, %bb.d ]
  %i.at = icmp eq i64 %i.as, %.sink.i.i
  br i1 %i.at, label %bb.h, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit, !prof !12

bb.h:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !129, !nonnull !8, !noundef !8
  %.pre6.i = load i64, ptr %i.z, align 8, !alias.scope !129
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.ax = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9leaf_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ai)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body42.thread

bb.m:                                             ; preds = %bb.k
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 960
  store i8 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.bb = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.bc)
          to label %bb.v unwind label %bb.ak

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !142
  %i.bd = load i64, ptr %i.w, align 8, !alias.scope !145, !noalias !148, !noundef !8 ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 4
  br i1 %i.be, label %bb.p, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !145, !noalias !148, !nonnull !8, !noundef !8
  %.pre.i52 = load i64, ptr %i.z, align 8, !alias.scope !142
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44

bb.q:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !150
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.r, label %.body42.thread

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %.body42.thread unwind label %bb.u

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44: ; preds = %bb.o, %bb.p
  %i.bk = phi i64 [ %.pre.i52, %bb.p ], [ %i.bd, %bb.o ] ; 2 uses
  %.sink12.i.i45 = phi ptr [ %i.bg, %bb.p ], [ %i.z, %bb.o ]
  %.sink11.i.i46 = phi ptr [ %i.z, %bb.p ], [ %i.w, %bb.o ]
  %.sink.i.i47 = phi i64 [ %i.bd, %bb.p ], [ 4, %bb.o ]
  %i.bl = icmp eq i64 %i.bk, %.sink.i.i47
  br i1 %i.bl, label %bb.s, label %bb.am, !prof !12

bb.s:                                             ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !142, !nonnull !8, !noundef !8
  %.pre6.i51 = load i64, ptr %i.z, align 8, !alias.scope !142
  br label %bb.am

bb.u:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.v:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.bp, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.br)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %1, ptr %i.bs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.t, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.4, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !155
  %i.bv = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !155 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.z, label %bb.ac, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.f) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bv, ptr noundef nonnull align 8 dereferenceable(1024) %i.f, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bv, ptr %i.a, align 8, !noalias !158
  %i.bz = load i64, ptr %i.w, align 8, !alias.scope !161, !noalias !164, !noundef !8 ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 4
  br i1 %i.ca, label %bb.ad, label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !161, !noalias !164, !nonnull !8, !noundef !8
  %.pre.i65 = load i64, ptr %i.z, align 8, !alias.scope !158
  br label %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57

bb.ae:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !166
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.ai

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57: ; preds = %bb.ac, %bb.ad
  %i.cg = phi i64 [ %.pre.i65, %bb.ad ], [ %i.bz, %bb.ac ] ; 2 uses
  %.sink12.i.i58 = phi ptr [ %i.cc, %bb.ad ], [ %i.z, %bb.ac ]
  %.sink11.i.i59 = phi ptr [ %i.z, %bb.ad ], [ %i.w, %bb.ac ]
  %.sink.i.i60 = phi i64 [ %i.bz, %bb.ad ], [ 4, %bb.ac ]
  %i.ch = icmp eq i64 %i.cg, %.sink.i.i60
  br i1 %i.ch, label %bb.ag, label %bb.aj, !prof !12

bb.ag:                                            ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57
  invoke void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E21reserve_one_uncheckedB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !158, !nonnull !8, !noundef !8
  %.pre6.i64 = load i64, ptr %i.z, align 8, !alias.scope !158
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aj:                                            ; preds = %bb.ah, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57
  %i.cl = phi i64 [ %.pre6.i64, %bb.ah ], [ %i.cg, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57 ]
  %.sroa.04.0.i61 = phi ptr [ %i.cj, %bb.ah ], [ %.sink12.i.i58, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57 ]
  %.sroa.0.0.i62 = phi ptr [ %i.z, %bb.ah ], [ %.sink11.i.i59, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i57 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i61, i64 %i.cl
  store ptr %i.bv, ptr %i.cm, align 8
  %i.cn = load i64, ptr %.sroa.0.0.i62, align 8, !alias.scope !158, !noundef !8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %.sroa.0.0.i62, align 8, !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit: ; preds = %bb.an, %bb.am, %bb.bg, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

bb.ak:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.n
  %.sroa.014.2.a = phi i1 [ false, %bb.v ], [ true, %bb.n ], [ false, %bb.x ], [ false, %bb.w ]
  %.sroa.019.4 = phi i1 [ true, %bb.v ], [ true, %bb.n ], [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit: ; preds = %bb.ak
  br i1 %.sroa.014.2.a, label %.body42.thread, label %.body42

bb.al:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.ak
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.am:                                            ; preds = %bb.t, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44
  %i.cr = phi i64 [ %.pre6.i51, %bb.t ], [ %i.bk, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44 ]
  %.sroa.04.0.i48 = phi ptr [ %i.bn, %bb.t ], [ %.sink12.i.i45, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44 ]
  %.sroa.0.0.i49 = phi ptr [ %i.z, %bb.t ], [ %.sink11.i.i46, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i44 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i48, i64 %i.cr
  store ptr %1, ptr %i.cs, align 8
  %i.ct = load i64, ptr %.sroa.0.0.i49, align 8, !alias.scope !142, !noundef !8
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %.sroa.0.0.i49, align 8, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.cv = load ptr, ptr %i.u, align 8, !alias.scope !177, !nonnull !8, !noundef !8
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !177
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit: ; preds = %bb.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i
  %i.cy = phi i64 [ %.pre6.i, %bb.i ], [ %i.as, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.av, %bb.i ], [ %.sink12.i.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i ]
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.i ], [ %.sink11.i.i, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E10triple_mutB1m_.exit.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.04.0.i, i64 %i.cy
  store ptr %i.ah, ptr %i.cz, align 8
  %i.da = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !129, !noundef !8
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %.sroa.0.0.i, align 8, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dc = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8 ; 3 uses
  store ptr %i.dc, ptr %i.o, align 8
  %i.dd = load i64, ptr %i.w, align 8, !alias.scope !178, !noalias !181, !noundef !8 ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 4
  %i.df = load i64, ptr %i.z, align 8
  %.sink12.i74 = select i1 %i.de, i64 %i.df, i64 %i.dd
  %.sroa.02.0134 = add i64 %.sink12.i74, -1       ; 2 uses
  %i.dg = icmp slt i64 %.sroa.02.0134, 0
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

.body36.thread109.loopexit:                       ; preds = %bb.ap, %bb.ar, %bb.at, %bb.au, %bb.av, %bb.ao, %bb.ba
  %i.dh = phi ptr [ %i.dl, %bb.ap ], [ %i.dl, %bb.ar ], [ %i.dl, %bb.at ], [ %i.dl, %bb.au ], [ %i.dl, %bb.av ], [ %i.dl, %bb.ao ], [ %i.dy, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body36.thread109

.body36.thread109.loopexit.split-lp:              ; preds = %bb.as, %bb.bc, %bb.bd, %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body36.thread109

.lr.ph:                                           ; preds = %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.bb
  %i.dl = phi ptr [ %i.dc, %.lr.ph ], [ %i.ef, %bb.bb ] ; 11 uses
  %.sroa.02.0135 = phi i64 [ %.sroa.02.0134, %.lr.ph ], [ %.sroa.02.0, %bb.bb ] ; 6 uses
  %i.dm = invoke noundef nonnull align 8 ptr @_RNvXso_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index5IndexjE5indexB1m_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i64 noundef %.sroa.02.0135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %bb.ap unwind label %.body36.thread109.loopexit

._crit_edge:                                      ; preds = %bb.bb, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit
  %i.dn = phi ptr [ %i.dc, %_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6tripleB1m_.exit ], [ %i.ef, %bb.bb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 960
  store i8 0, ptr %.sroa.525.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.do)
          to label %bb.bh unwind label %bb.bn

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load ptr, ptr %i.dm, align 8, !nonnull !8, !noundef !8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = invoke noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.dq)
          to label %bb.aq unwind label %.body36.thread109.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.ds = icmp ult i64 %i.dr, 23
  br i1 %i.ds, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.at unwind label %.body36.thread109.loopexit

bb.as:                                            ; preds = %bb.aq
  %i.du = invoke noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.bc unwind label %.body36.thread109.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  %i.dv = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.dt)
          to label %bb.au unwind label %.body36.thread109.loopexit

bb.au:                                            ; preds = %bb.at
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node12children_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.dv)
          to label %bb.av unwind label %.body36.thread109.loopexit

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.dx)
          to label %bb.aw unwind label %.body36.thread109.loopexit

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  store ptr %i.dl, ptr %i.di, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren10push_split(ptr noalias nofree noundef nonnull sret([968 x i8]) align 8 captures(none) dereferenceable(968) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.dw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.i, i64 968, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  store i64 1, ptr %i.dj, align 8
  store i8 1, ptr %i.dk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.412, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !183
  %i.dy = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !183 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ax, label %bb.ba, !prof !12

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc76 unwind label %bb.ay

.noexc76:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.d) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dy, ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412)
  store ptr %i.dy, ptr %i.o, align 8
  %i.ec = invoke noundef nonnull align 8 ptr @_RNvXsp_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.02.0135, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.bb unwind label %.body36.thread109.loopexit ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  store i64 %i.ed, ptr %i.o, align 8
  store ptr %i.dy, ptr %i.ec, align 8
  %.sroa.02.0 = add nsw i64 %.sroa.02.0135, -1
  %i.ee = icmp slt i64 %.sroa.02.0135, 1
  %i.ef = inttoptr i64 %i.ed to ptr               ; 2 uses
  br i1 %i.ee, label %._crit_edge, label %bb.ao

bb.bc:                                            ; preds = %bb.as
  %i.eg = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE8make_mutBM_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.du)
          to label %bb.bd unwind label %.body36.thread109.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.eh = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node12children_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(1008) %i.eg)
          to label %bb.be unwind label %.body36.thread109.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node9text_info(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ei)
          to label %bb.bf unwind label %.body36.thread109.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.dl, ptr %i.ej, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.eh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bm, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.bh:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.dn, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49)
  %.sroa.49.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.49, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(968) %.sroa.49.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(968) %i.n, i64 968, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 1, ptr %i.em, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(975) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(975) %.sroa.49, i64 975, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !186
  %i.en = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !186 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bj, label %bb.bm, !prof !12

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc78 unwind label %bb.bk

.noexc78:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.e) #16
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.en, ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49)
  call void @_RNvMsc_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_E6insertB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 0, ptr noundef nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bg

bb.bn:                                            ; preds = %._crit_edge, %bb.bh
  %.sroa.017.3.ph = phi i1 [ false, %bb.bh ], [ true, %._crit_edge ]
  %lpad.thr_comm115 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs_NtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children5innerNtB4_20NodeChildrenInternalNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81: ; preds = %bb.bn
  br i1 %.sroa.017.3.ph, label %.body36.thread109, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

.body36.thread109:                                ; preds = %.body36.thread109.loopexit, %.body36.thread109.loopexit.split-lp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81
  %i.er = phi ptr [ %i.dn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %i.dh, %.body36.thread109.loopexit ], [ %i.dl, %.body36.thread109.loopexit.split-lp ]
  %.pn106 = phi { ptr, i32 } [ %lpad.thr_comm115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %lpad.loopexit, %.body36.thread109.loopexit ], [ %lpad.loopexit.split-lp, %.body36.thread109.loopexit.split-lp ] ; 2 uses
  %i.es = atomicrmw sub ptr %i.er, i64 1 release, align 8, !noalias !189
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.bo:                                            ; preds = %.body36.thread109
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.al

.body42.thread:                                   ; preds = %bb.q, %bb.r, %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit
  %.pn.pn97 = phi { ptr, i32 } [ %i.cp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ %i.ay, %bb.l ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ] ; 2 uses
  %.sroa.019.296 = phi i1 [ %.sroa.019.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit ], [ true, %bb.l ], [ false, %bb.r ], [ false, %bb.q ]
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.eu = load ptr, ptr %i.u, align 8, !alias.scope !200, !nonnull !8, !noundef !8
  %i.ev = atomicrmw sub ptr %i.eu, i64 1 release, align 8, !noalias !200
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85

bb.bp:                                            ; preds = %.body42.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85: ; preds = %bb.bp, %.body42.thread
  br i1 %.sroa.019.296, label %.body42.thread124, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87: ; preds = %bb.bk, %bb.ae, %bb.af, %bb.aa, %.body36.thread109, %bb.bo, %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81, %.body42.thread124, %bb.bq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85, %.body42
  %.pn3490 = phi { ptr, i32 } [ %i.ep, %bb.bk ], [ %.pn.pn97, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 ], [ %i.cp, %.body42 ], [ %.pn3491, %bb.bq ], [ %.pn3491, %.body42.thread124 ], [ %.pn106, %.body36.thread109 ], [ %lpad.thr_comm115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2wCc12Mnjqg_5ropey4tree13node_children12NodeChildrenEBH_.exit81 ], [ %i.cd, %bb.ae ], [ %i.ea, %bb.ay ], [ %i.cd, %bb.af ], [ %.pn106, %bb.bo ], [ %i.bx, %bb.aa ]
  resume { ptr, i32 } %.pn3490

.body42.thread124:                                ; preds = %bb.g, %bb.f, %.split.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85, %.body42
  %.pn3491 = phi { ptr, i32 } [ %i.ac, %.split.thread ], [ %i.cp, %.body42 ], [ %.pn.pn97, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit85 ], [ %i.ap, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.ex = load ptr, ptr %i.v, align 8, !alias.scope !207, !nonnull !8, !noundef !8
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !207
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87

bb.bq:                                            ; preds = %.body42.thread124
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit87 unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1024 x i8], align 8              ; 8 uses
  %i.b = alloca [1000 x i8], align 8              ; 4 uses
  %.sroa.4 = alloca [1007 x i8], align 1          ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB2_8NodeText8from_str(ptr noalias nofree noundef nonnull sret([1000 x i8]) align 8 captures(none) dereferenceable(1000) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  invoke void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1000) %i.b, i64 1000, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1007) %.sroa.4, i64 1007, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !208
  %i.h = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef 8) #18, !noalias !208 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1024) #19
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.a) #16
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.c
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.h, ptr noundef nonnull align 8 dereferenceable(1024) %i.a, i64 1024, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  store i64 1, ptr %i.d, align 8, !alias.scope !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.l, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs2efQY0w7vw4_8smallvec8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_EEB1P_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6append(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder6finish(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  invoke fastcc void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15append_internal(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.b = call fastcc noundef nonnull ptr @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder15finish_internal(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey12rope_builder11RopeBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
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
  %i.m = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !214
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEEB1f_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
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
  %i.p = load i64, ptr %i.b, align 8, !range !219, !noundef !8 ; 2 uses
  %i.q = add nuw i64 %i.p, 15
  %i.r = sub i64 0, %i.p
  %i.s = and i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1008) %i.v, ptr noundef nonnull align 1 dereferenceable(1008) %i.o, i64 1008, i1 false)
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey4crlf15find_good_split(i64 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %0, %2
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %0, %2
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 %0         ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !220, !noundef !8 ; 2 uses
  %i.f = icmp slt i8 %i.e, -64
  br i1 %i.f, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %0, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !220
  unreachable

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit:    ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !220, !noundef !8
  %i.i = icmp ne i8 %i.h, 13
  %i.j = icmp ne i8 %i.e, 10
  %i.k = or i1 %i.j, %i.i
  br i1 %i.k, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19: ; preds = %bb.c, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit
  %.sroa.0.126 = add nsw i64 %0, -1               ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.126, 0
  %i.m = icmp eq i64 %.sroa.0.126, %2
  %or.cond.i1227 = or i1 %i.l, %i.m
  br i1 %or.cond.i1227, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ], [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.128, %.split ] ; 2 uses
  %.sroa.04.130 = add nuw nsw i64 %0, 1           ; 4 uses
  %i.n = icmp eq i64 %.sroa.04.130, %2
  br i1 %i.n, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

.lr.ph:                                           ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge
  %.sroa.0.128 = phi i64 [ %.sroa.0.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge ], [ %.sroa.0.126, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread19 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.o = icmp ult i64 %.sroa.0.128, %2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %1, i64 %.sroa.0.128 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !223, !noundef !8 ; 2 uses
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge, label %.split

bb.f:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.128, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !223
  unreachable

.split:                                           ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !223, !noundef !8
  %i.u = icmp ne i8 %i.t, 13
  %i.v = icmp ne i8 %i.q, 10
  %i.w = or i1 %i.v, %i.u
  br i1 %i.w, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit14.backedge: ; preds = %.split, %bb.e
  %.sroa.0.1 = add nsw i64 %.sroa.0.128, -1       ; 4 uses
  %i.x = icmp eq i64 %.sroa.0.1, 0
  %i.y = icmp eq i64 %.sroa.0.1, %2
  %or.cond.i12 = or i1 %i.x, %i.y
  br i1 %or.cond.i12, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, label %.lr.ph

.lr.ph34:                                         ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge
  %.sroa.04.133 = phi i64 [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ] ; 5 uses
  %.sroa.04.1.in32 = phi i64 [ %.sroa.04.133, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.z = icmp ult i64 %.sroa.04.133, %2
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph34
  %i.aa = getelementptr i8, ptr %1, i64 %.sroa.04.133
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !226, !noundef !8 ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, label %.split23

bb.h:                                             ; preds = %.lr.ph34
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %.sroa.04.130)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !226
  unreachable

.split23:                                         ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 %.sroa.04.1.in32
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !226, !noundef !8
  %i.af = icmp ne i8 %i.ae, 13
  %i.ag = icmp ne i8 %i.ab, 10
  %i.ah = or i1 %i.ag, %i.af
  br i1 %i.ah, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge: ; preds = %.split23, %bb.g
  %.sroa.04.1 = add nuw nsw i64 %.sroa.04.133, 1  ; 3 uses
  %i.ai = icmp eq i64 %.sroa.04.1, %2
  br i1 %i.ai, label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread, label %.lr.ph34

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread: ; preds = %.split23, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader
  %.sroa.04.1.lcssa = phi i64 [ %.sroa.04.130, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.preheader ], [ %.sroa.04.133, %.split23 ], [ %.sroa.04.1, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.backedge ]
  %.not = icmp eq i64 %.sroa.0.1.lcssa, 0
  %spec.select = select i1 %.not, i64 %.sroa.04.1.lcssa, i64 %.sroa.0.1.lcssa
  br label %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit.thread: ; preds = %bb.a, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread
  %.sroa.0.3 = phi i64 [ %spec.select, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit17.thread ], [ %0, %_RNvNtCs2wCc12Mnjqg_5ropey4crlf8is_break.exit ], [ %0, %bb.a ]
  ret i64 %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs2wCc12Mnjqg_5ropey12rope_builderNtB4_11RopeBuilderNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs2wCc12Mnjqg_5ropey12rope_builderNtB2_11RopeBuilder3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsv_Cs2efQY0w7vw4_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1m_(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
