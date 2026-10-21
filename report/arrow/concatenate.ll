Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/concatenate?download=true
inline.NumInlined: 2834
inline.NumDeleted: 1091
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNO5arrow12_GLOBAL__N_115ConcatenateImpl11ConcatenateEPSt10shared_ptrINS_9ArrayDataEEPNS0_10ErrorHintsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #20, !noalias !614
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_115ConcatenateImpl7BuffersEmi(ptr dead_on_unwind noalias writable align 8 %77, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1, i32 noundef 8)
          to label %bb.rv unwind label %bb.rx, !inline_history !362

bb.rv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit138.i
  %i.beh = load ptr, ptr %77, align 8, !tbaa !72, !noalias !614
  %i.bei = icmp eq ptr %i.beh, null
  br i1 %i.bei, label %bb.rz, label %bb.rw, !prof !73

bb.rw:                                            ; preds = %bb.rv
  store ptr null, ptr %117, align 8, !tbaa !72, !alias.scope !614
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %_ZN5arrow6StatusC2ERKS0_.exit140.i unwind label %bb.ry, !inline_history !362

bb.rx:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit138.i
  %i.bej = landingpad { ptr, i32 }
          cleanup
  br label %bb.vb

bb.ry:                                            ; preds = %bb.rw
  %i.bek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ut

bb.rz:                                            ; preds = %bb.rv
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #20, !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.bel = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 2 uses
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !115, !noalias !633 ; 4 uses
  store ptr %i.bem, ptr %78, align 8, !tbaa !115, !alias.scope !634, !noalias !614
  %i.ben = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.beq = load <2 x ptr>, ptr %i.beo, align 8, !tbaa !162, !noalias !633
  %i.ber = load ptr, ptr %i.beo, align 8, !tbaa !114, !noalias !633 ; 3 uses
  store <2 x ptr> %i.beq, ptr %i.ben, align 8, !tbaa !162, !alias.scope !634, !noalias !614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bel, i8 0, i64 24, i1 false), !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #20, !noalias !614
  %i.bes = load ptr, ptr %1, align 8, !tbaa !109, !noalias !614, !nonnull !85, !align !110
  %i.bet = load ptr, ptr %i.c, align 8, !tbaa !96, !noalias !614
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 40
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !115 ; 3 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 32
  %i.bex = load ptr, ptr %i.bew, align 8, !tbaa !152 ; 3 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 9
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !159, !range !84, !noundef !85
  %i.bfa = trunc nuw i8 %i.bez to i1
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bex, i64 8
  %i.bfc = load i8, ptr %i.bfb, align 8, !range !84
  %i.bfd = trunc nuw i8 %i.bfc to i1
  %i.bfe = select i1 %i.bfa, i1 %i.bfd, i1 false, !prof !73
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bex, i64 16
  %i.bfg = load ptr, ptr %i.bff, align 8
  %i.bfh = select i1 %i.bfe, ptr %i.bfg, ptr null, !prof !73
  %i.bfi = load ptr, ptr %i.axi, align 8, !tbaa !107, !noalias !614
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bev, i64 16 ; 4 uses
  %.val92.i170 = load ptr, ptr %64, align 8, !noalias !614
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.bfk = icmp eq ptr %i.bem, %i.ber
  br i1 %i.bfk, label %.loopexit.i.i173, label %.lr.ph.i.i141.i

.lr.ph.i.i141.i:                                  ; preds = %bb.rz, %.lr.ph.i.i141.i
  %.05.i.i.i171 = phi i64 [ %i.bfo, %.lr.ph.i.i141.i ], [ 0, %bb.rz ]
  %.sroa.01.04.i.i.i172 = phi ptr [ %i.bfp, %.lr.ph.i.i141.i ], [ %i.bem, %bb.rz ] ; 2 uses
  %i.bfl = load ptr, ptr %.sroa.01.04.i.i.i172, align 8, !tbaa !152, !noalias !635
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 24
  %i.bfn = load i64, ptr %i.bfm, align 8, !tbaa !180, !noalias !635
  %i.bfo = add nsw i64 %i.bfn, %.05.i.i.i171      ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i.i172, i64 16 ; 2 uses
  %i.bfq = icmp eq ptr %i.bfp, %i.ber
  br i1 %i.bfq, label %.loopexit.i.i173, label %.lr.ph.i.i141.i

.loopexit.i.i173:                                 ; preds = %.lr.ph.i.i141.i, %bb.rz
  %.0.lcssa.i.i.i174 = phi i64 [ 0, %bb.rz ], [ %i.bfo, %.lr.ph.i.i141.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #20, !noalias !636
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.116") align 8 %60, i64 noundef %.0.lcssa.i.i.i174, ptr noundef %i.bfi)
          to label %.noexc151.i unwind label %bb.ud, !inline_history !362

.noexc151.i:                                      ; preds = %.loopexit.i.i173
  %i.bfr = load ptr, ptr %60, align 8, !tbaa !72, !noalias !636
  %i.bfs = icmp eq ptr %i.bfr, null
  br i1 %i.bfs, label %bb.sb, label %bb.sa, !prof !73

bb.sa:                                            ; preds = %.noexc151.i
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %79, ptr noundef nonnull align 8 dereferenceable(8) %60) #20, !inline_history !362
  br label %bb.tx

bb.sb:                                            ; preds = %.noexc151.i
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #20, !noalias !636
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.bft = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.bfu = load i64, ptr %i.bft, align 8, !tbaa !181, !noalias !639
  store i64 %i.bfu, ptr %61, align 8, !tbaa !181, !alias.scope !640, !noalias !636
  store ptr null, ptr %i.bft, align 8, !tbaa !181, !noalias !639
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #20, !noalias !636
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %.noexc.i.i198 unwind label %bb.sj, !noalias !635, !inline_history !362

.noexc.i.i198:                                    ; preds = %bb.sb
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bev, i64 24
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !58, !noalias !635 ; 8 uses
  %i.bfx = load <2 x ptr>, ptr %i.bfj, align 8, !tbaa !101, !noalias !635
  %i.bfy = load <2 x ptr>, ptr %59, align 16, !tbaa !101, !noalias !636
  store <2 x ptr> %i.bfy, ptr %i.bfj, align 8, !tbaa !101, !noalias !635
  store <2 x ptr> %i.bfx, ptr %59, align 16, !tbaa !101, !noalias !636
  %.not.i.i.i.i.i142.i = icmp eq ptr %i.bfw, null
  br i1 %.not.i.i.i.i.i142.i, label %bb.si, label %bb.sc

bb.sc:                                            ; preds = %.noexc.i.i198
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfw, i64 8 ; 4 uses
  %i.bga = load atomic i64, ptr %i.bfz acquire, align 8, !noalias !635 ; 2 uses
  %i.bgb = icmp eq i64 %i.bga, 4294967297
  %i.bgc = trunc i64 %i.bga to i32                ; 2 uses
  br i1 %i.bgb, label %bb.sd, label %bb.se

bb.sd:                                            ; preds = %bb.sc
  store i32 0, ptr %i.bfz, align 8, !tbaa !60, !noalias !635
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfw, i64 12
  store i32 0, ptr %i.bgd, align 4, !tbaa !61, !noalias !635
  %i.bge = load ptr, ptr %i.bfw, align 8, !tbaa !63, !noalias !635
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 16
  %i.bgg = load ptr, ptr %i.bgf, align 8, !noalias !635
  call void %i.bgg(ptr noundef nonnull align 8 dereferenceable(16) %i.bfw) #20, !noalias !635, !inline_history !403
  %i.bgh = load ptr, ptr %i.bfw, align 8, !tbaa !63, !noalias !635
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 24
  %i.bgj = load ptr, ptr %i.bgi, align 8, !noalias !635
  call void %i.bgj(ptr noundef nonnull align 8 dereferenceable(16) %i.bfw) #20, !noalias !635, !inline_history !403
  br label %bb.si

bb.se:                                            ; preds = %bb.sc
  %i.bgk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64, !noalias !636
  %.not.i.i.i.i.i.i143.i = icmp eq i8 %i.bgk, 0
  br i1 %.not.i.i.i.i.i.i143.i, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bgl = add nsw i32 %i.bgc, -1
  store i32 %i.bgl, ptr %i.bfz, align 8, !tbaa !35, !noalias !635
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i144.i

bb.sg:                                            ; preds = %bb.se
  %i.bgm = atomicrmw volatile add ptr %i.bfz, i32 -1 acq_rel, align 4, !noalias !635
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i144.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i144.i: ; preds = %bb.sg, %bb.sf
  %.0.i.i.i.i.i.i.i145.i = phi i32 [ %i.bgc, %bb.sf ], [ %i.bgm, %bb.sg ]
  %i.bgn = icmp eq i32 %.0.i.i.i.i.i.i.i145.i, 1
  br i1 %i.bgn, label %bb.sh, label %bb.si, !prof !65

bb.sh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i144.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfw) #20, !noalias !635, !inline_history !362
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i144.i, %bb.sd, %.noexc.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20, !noalias !636
  %i.bgo = load ptr, ptr %61, align 8, !tbaa !181, !noalias !636 ; 3 uses
  %.not.i.i146.i = icmp eq ptr %i.bgo, null
  br i1 %.not.i.i146.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i200, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i199

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i199: ; preds = %bb.si
  %i.bgp = load ptr, ptr %i.bgo, align 8, !tbaa !63, !noalias !635
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 8
  %i.bgr = load ptr, ptr %i.bgq, align 8, !noalias !635
  call void %i.bgr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bgo) #20, !noalias !635, !inline_history !404
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i200

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i200: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i199, %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20, !noalias !636
  %i.bgs = load ptr, ptr %i.bfj, align 8, !tbaa !152, !noalias !635 ; 4 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 9
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !159, !range !84, !noalias !635, !noundef !85
  %i.bgv = trunc nuw i8 %i.bgu to i1
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgs, i64 8
  %i.bgx = load i8, ptr %i.bgw, align 8, !range !84, !noalias !635
  %i.bgy = trunc nuw i8 %i.bgx to i1
  %i.bgz = select i1 %i.bgv, i1 %i.bgy, i1 false, !prof !73
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgs, i64 16
  %i.bhb = load ptr, ptr %i.bha, align 8, !noalias !635
  %i.bhc = select i1 %i.bgz, ptr %i.bhb, ptr null, !prof !73
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgs, i64 24
  %i.bhe = load i64, ptr %i.bhd, align 8, !tbaa !180, !noalias !635
  call void @llvm.memset.p0.i64(ptr align 1 %i.bhc, i8 0, i64 %i.bhe, i1 false), !noalias !635
  %i.bhf = load ptr, ptr %i.bfj, align 8, !tbaa !152, !noalias !635 ; 3 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 9
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !159, !range !84, !noalias !635, !noundef !85
  %i.bhi = trunc nuw i8 %i.bhh to i1
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  %i.bhk = load i8, ptr %i.bhj, align 8, !range !84, !noalias !635
  %i.bhl = trunc nuw i8 %i.bhk to i1
  %i.bhm = select i1 %i.bhi, i1 %i.bhl, i1 false, !prof !73
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhf, i64 16
  %i.bho = load ptr, ptr %i.bhn, align 8, !noalias !635
  %i.bhp = select i1 %i.bhm, ptr %i.bho, ptr null, !prof !73
  %i.bhq = load ptr, ptr %i.ben, align 8, !tbaa !114, !noalias !636 ; 5 uses
  %i.bhr = load ptr, ptr %78, align 8, !tbaa !115, !noalias !636 ; 6 uses
  %.not606.not.i.i = icmp eq ptr %i.bhq, %i.bhr
  br i1 %.not606.not.i.i, label %.critedge62.i.i210, label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i200
  %i.bhs = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 7 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %58, i64 24 ; 5 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.bhx = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.bhy = ptrtoint ptr %i.bhq to i64
  %i.bhz = ptrtoint ptr %i.bhr to i64
  %i.bia = sub i64 %i.bhy, %i.bhz
  %i.bib = ashr exact i64 %i.bia, 4
  br label %bb.sk

bb.sj:                                            ; preds = %bb.sb
  %i.bic = landingpad { ptr, i32 }
          cleanup
  %i.bid = load ptr, ptr %61, align 8, !tbaa !181, !noalias !636 ; 3 uses
  %.not.i73.i.i194 = icmp eq ptr %i.bid, null
  br i1 %.not.i73.i.i194, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i196, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i195

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i195: ; preds = %bb.sj
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !63, !noalias !635
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 8
  %i.big = load ptr, ptr %i.bif, align 8, !noalias !635
  call void %i.big(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bid) #20, !noalias !635, !inline_history !404
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i196

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit75.i.i196: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i74.i.i195, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20, !noalias !636
  br label %bb.ua

bb.sk:                                            ; preds = %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208, %.lr.ph.i.i201
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i201 ], [ %i.bpz, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208 ] ; 4 uses
  %.0398.i.i = phi i64 [ 0, %.lr.ph.i.i201 ], [ %i.bpv, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208 ] ; 3 uses
  %.0407.i.i = phi i64 [ 0, %.lr.ph.i.i201 ], [ %i.bpy, %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208 ] ; 2 uses
  %i.bih = getelementptr inbounds nuw [16 x i8], ptr %.val92.i170, i64 %.09.i.i ; 2 uses
  %i.bii = load i64, ptr %i.bih, align 8, !tbaa !146, !noalias !635
  %i.bij = sub nsw i64 %.0407.i.i, %i.bii         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20, !noalias !636
  %i.bik = load ptr, ptr %i.bes, align 8, !tbaa !88, !noalias !635
  %i.bil = getelementptr inbounds nuw [16 x i8], ptr %i.bik, i64 %.09.i.i
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !96, !noalias !635 ; 5 uses
  %i.bin = getelementptr inbounds [8 x i8], ptr %i.bfh, i64 %.0398.i.i ; 8 uses
  %i.bio = getelementptr inbounds nuw [16 x i8], ptr %i.bhr, i64 %.09.i.i ; 2 uses
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !152, !noalias !635 ; 5 uses
  %i.biq = getelementptr inbounds [8 x i8], ptr %i.bhp, i64 %.0398.i.i ; 7 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bip, i64 24
  %i.bis = load i64, ptr %i.bir, align 8, !tbaa !180, !noalias !641
  %i.bit = icmp eq i64 %i.bis, 0
  br i1 %i.bit, label %_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEED2Ev.exit87.i.i208, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bim, i64 40
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !115, !noalias !641 ; 3 uses
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !152, !noalias !641
  %.not.i76.i.i202 = icmp eq ptr %i.biw, null
  br i1 %.not.i76.i.i202, label %.thread.i.i.i261, label %bb.sm

.thread.i.i.i261:                                 ; preds = %bb.sl
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bip, i64 9
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !159, !range !84, !noalias !641, !noundef !85
  %i.biz = trunc nuw i8 %i.biy to i1
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bip, i64 16
  %i.bjb = load ptr, ptr %i.bja, align 8, !noalias !641
  %i.bjc = select i1 %i.biz, ptr %i.bjb, ptr null, !prof !73
  br label %bb.sx

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #20, !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #20, !noalias !642
  %i.bjd = load ptr, ptr %i.biv, align 8, !tbaa !152, !noalias !641
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 24
  %i.bjf = load i64, ptr %i.bje, align 8, !tbaa !180, !noalias !641
  %i.bjg = shl nsw i64 %i.bjf, 3
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bim, i64 32
  %i.bji = load i64, ptr %i.bjh, align 8, !tbaa !149, !noalias !641 ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bjk = load i64, ptr %i.bjj, align 8, !tbaa !128, !noalias !641 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !642
  store ptr @.str.23, ptr %i.a, align 8, !tbaa !160, !noalias !643
  %i.bjl = icmp slt i64 %i.bji, 0
  br i1 %i.bjl, label %.invoke.i.i260, label %bb.sn, !prof !65

bb.sn:                                            ; preds = %bb.sm
  %i.bjm = icmp slt i64 %i.bjk, 0
  br i1 %i.bjm, label %.invoke.i.i260, label %bb.so, !prof !65

.invoke.i.i260:                                   ; preds = %bb.sn, %bb.sm
  %i.bjn = phi ptr [ @.str.25, %bb.sm ], [ @.str.26, %bb.sn ]
  invoke void @_ZN5arrow6Status10IndexErrorIJRA10_KcRPS2_RA14_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %i.bjn)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !635, !inline_history !362

bb.so:                                            ; preds = %bb.sn
  %i.bjo = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bji, i64 %i.bjk) ; 2 uses
  %i.bjp = extractvalue { i64, i1 } %i.bjo, 1
  br i1 %i.bjp, label %bb.sp, label %bb.sq, !prof !65

bb.sp:                                            ; preds = %bb.so
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA22_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.27)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !635, !inline_history !362

bb.sq:                                            ; preds = %bb.so
  %i.bjq = extractvalue { i64, i1 } %i.bjo, 0
  %i.bjr = icmp sgt i64 %i.bjq, %i.bjg
  br i1 %i.bjr, label %bb.sr, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203, !prof !65

bb.sr:                                            ; preds = %bb.sq
  invoke void @_ZN5arrow6Status10IndexErrorIJRPKcRA21_S2_S4_RA8_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(21) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(8) @.str.29)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i251 unwind label %bb.tw, !noalias !635, !inline_history !362

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203:        ; preds = %bb.sq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !642
  br label %bb.sv

_ZN5arrow6StatusD2Ev.exit.i.i.i251:               ; preds = %bb.sr, %bb.sp, %.invoke.i.i260
  %.pr.i.i.i252 = load ptr, ptr %57, align 8, !tbaa !72, !noalias !642 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  store ptr %.pr.i.i.i252, ptr %56, align 8, !tbaa !72, !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20, !noalias !642
  %i.bjs = icmp eq ptr %.pr.i.i.i252, null
  br i1 %i.bjs, label %bb.sv, label %bb.ss, !prof !609

bb.ss:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i251
  call fastcc void @_ZN5arrow6ResultINS_12_GLOBAL__N_121OffsetBufferOpOutcomeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !635, !inline_history !362
  %i.bjt = load ptr, ptr %56, align 8, !tbaa !72, !noalias !642 ; 2 uses
  %.not.i34.i.i.i253 = icmp eq ptr %i.bjt, null
  br i1 %.not.i34.i.i.i253, label %bb.tt, label %bb.st, !prof !73

bb.st:                                            ; preds = %bb.ss
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 1
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !83, !range !84, !noalias !635, !noundef !85
  %i.bjw = trunc nuw i8 %i.bjv to i1
  br i1 %i.bjw, label %bb.tt, label %bb.su

bb.su:                                            ; preds = %bb.st
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #20, !noalias !635, !inline_history !362
  br label %bb.tt

bb.sv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i251, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20, !noalias !642
  %.pr60.i.i.i204 = load ptr, ptr %i.biv, align 8, !tbaa !152, !noalias !641 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bip, i64 9
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !159, !range !84, !noalias !641, !noundef !85
  %i.bjz = trunc nuw i8 %i.bjy to i1
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bip, i64 16
  %i.bkb = load ptr, ptr %i.bka, align 8, !noalias !641
  %i.bkc = select i1 %i.bjz, ptr %i.bkb, ptr null, !prof !73 ; 2 uses
  %.not61.i.i.i205 = icmp eq ptr %.pr60.i.i.i204, null
  br i1 %.not61.i.i.i205, label %bb.sx, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.bkd = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i204, i64 9
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !159, !range !84, !noalias !641, !noundef !85
  %i.bkf = trunc nuw i8 %i.bke to i1
  %i.bkg = getelementptr inbounds nuw i8, ptr %.pr60.i.i.i204, i64 16
  %i.bkh = load ptr, ptr %i.bkg, align 8, !noalias !641
  %i.bki = select i1 %i.bkf, ptr %i.bkh, ptr null, !prof !73
  br label %bb.sx

bb.sx:                                            ; preds = %bb.sw, %bb.sv, %.thread.i.i.i261
  %i.bkj = phi ptr [ %i.bkc, %bb.sw ], [ %i.bkc, %bb.sv ], [ %i.bjc, %.thread.i.i.i261 ] ; 7 uses
  %i.bkk = phi ptr [ %i.bki, %bb.sw ], [ null, %bb.sv ], [ null, %.thread.i.i.i261 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #20, !noalias !642
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bim, i64 32 ; 2 uses
  %i.bkm = load i64, ptr %i.bkl, align 8, !tbaa !149, !noalias !641
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bim, i64 16 ; 4 uses
  %i.bko = load i64, ptr %i.bkn, align 8, !tbaa !128, !noalias !641
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bkk, i64 noundef %i.bkm, i64 noundef %i.bko)
          to label %.noexc82.i.i206 unwind label %bb.tw, !noalias !635, !inline_history !362

.noexc82.i.i206:                                  ; preds = %bb.sx
  %i.bkp = load i64, ptr %i.bkn, align 8, !tbaa !128, !noalias !641 ; 2 uses
  %i.bkq = icmp sgt i64 %i.bkp, 0
  br i1 %i.bkq, label %.lr.ph71.i.i.preheader.i211, label %._crit_edge.i.i.i207

.lr.ph71.i.i.preheader.i211:                      ; preds = %.noexc82.i.i206
  %i.bkr = load i8, ptr %58, align 8, !tbaa !184, !range !84, !noalias !636, !noundef !85
  %i.bks = trunc nuw i8 %i.bkr to i1
  br i1 %i.bks, label %.lr.ph71.i.i.i222, label %.lr.ph71.i.i.us.preheader.i

.lr.ph71.i.i.us.preheader.i:                      ; preds = %.lr.ph71.i.i.preheader.i211
  %.pre260.i = load i64, ptr %i.bhs, align 8, !tbaa !185, !noalias !636
  %.pre262.i = load i64, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  br label %.lr.ph71.i.i.us.i212

.lr.ph71.i.i.us.i212:                             ; preds = %.loopexit.i.i.us.i216, %.lr.ph71.i.i.us.preheader.i
  %i.bkt = phi i64 [ %i.bly, %.loopexit.i.i.us.i216 ], [ %i.bkp, %.lr.ph71.i.i.us.preheader.i ]
  %.03170.i.i.us.i213.a = phi i64 [ %119, %.loopexit.i.i.us.i216 ], [ %.pre262.i, %.lr.ph71.i.i.us.preheader.i ] ; 2 uses
  %118 = phi i64 [ %120, %.loopexit.i.i.us.i216 ], [ %.pre260.i, %.lr.ph71.i.i.us.preheader.i ] ; 2 uses
  %.03170.i.i.us.i213 = phi i64 [ %.3.i.i.us.i217, %.loopexit.i.i.us.i216 ], [ 0, %.lr.ph71.i.i.us.preheader.i ] ; 3 uses
  %i.bku = sub nsw i64 %118, %.03170.i.i.us.i213.a
  %.sroa.speculated.i.i.us.i214 = call i64 @llvm.smin.i64(i64 %i.bku, i64 32767) ; 4 uses
  %i.bkv = trunc i64 %.sroa.speculated.i.i.us.i214 to i16
  %sext.i.i.us.i215 = shl i64 %.sroa.speculated.i.i.us.i214, 48 ; 2 uses
  %i.bkw = ashr exact i64 %sext.i.i.us.i215, 48   ; 2 uses
  %i.bkx = add nsw i64 %i.bkw, %.03170.i.i.us.i213.a ; 2 uses
  store i64 %i.bkx, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  %i.bky = icmp sgt i16 %i.bkv, 0
  br i1 %i.bky, label %.lr.ph68.i.i.us.i218.preheader, label %.loopexit.i.i.us.i216

.lr.ph68.i.i.us.i218.preheader:                   ; preds = %.lr.ph71.i.i.us.i212
  %xtraiter1176 = and i64 %.sroa.speculated.i.i.us.i214, 1 ; 2 uses
  %i.bkz = icmp eq i64 %sext.i.i.us.i215, 281474976710656
  br i1 %i.bkz, label %.lr.ph68.i.i.us.i218.epil.preheader, label %.lr.ph68.i.i.us.i218.preheader.new

.lr.ph68.i.i.us.i218.preheader.new:               ; preds = %.lr.ph68.i.i.us.i218.preheader
  %unroll_iter = sub nsw i64 %i.bkw, %xtraiter1176
  br label %.lr.ph68.i.i.us.i218

.lr.ph68.i.i.us.i218:                             ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1, %.lr.ph68.i.i.us.i218.preheader.new
  %.166.i.i.us.i220 = phi i64 [ %.03170.i.i.us.i213, %.lr.ph68.i.i.us.i218.preheader.new ], [ %i.blp, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph68.i.i.us.i218.preheader.new ], [ %niter.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1 ]
  %i.bla = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %.166.i.i.us.i220
  %i.blb = load i64, ptr %i.bla, align 8, !tbaa !161, !noalias !641
  %i.blc = icmp sgt i64 %i.blb, 0
  br i1 %i.blc, label %bb.sy, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

bb.sy:                                            ; preds = %.lr.ph68.i.i.us.i218
  %i.bld = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %.166.i.i.us.i220
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !161, !noalias !641
  %i.blf = add i64 %i.ble, %i.bij
  %i.blg = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %.166.i.i.us.i220
  store i64 %i.blf, ptr %i.blg, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i: ; preds = %bb.sy, %.lr.ph68.i.i.us.i218
  %i.blh = add nsw i64 %.166.i.i.us.i220, 1       ; 3 uses
  %i.bli = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %i.blh
  %i.blj = load i64, ptr %i.bli, align 8, !tbaa !161, !noalias !641
  %i.blk = icmp sgt i64 %i.blj, 0
  br i1 %i.blk, label %bb.sz, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

bb.sz:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.bll = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %i.blh
  %i.blm = load i64, ptr %i.bll, align 8, !tbaa !161, !noalias !641
  %i.bln = add i64 %i.blm, %i.bij
  %i.blo = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %i.blh
  store i64 %i.bln, ptr %i.blo, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1: ; preds = %bb.sz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i
  %i.blp = add nsw i64 %.166.i.i.us.i220, 2       ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.us.loopexit.i.unr-lcssa, label %.lr.ph68.i.i.us.i218, !llvm.loop !409

.loopexit.i.i.us.loopexit.i.unr-lcssa:            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.1
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1177.not, label %.loopexit.i.i.us.loopexit.i, label %.lr.ph68.i.i.us.i218.epil.preheader

.lr.ph68.i.i.us.i218.epil.preheader:              ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %.lr.ph68.i.i.us.i218.preheader
  %.166.i.i.us.i220.epil.init = phi i64 [ %.03170.i.i.us.i213, %.lr.ph68.i.i.us.i218.preheader ], [ %i.blp, %.loopexit.i.i.us.loopexit.i.unr-lcssa ] ; 4 uses
  %lcmp.mod1179 = trunc i64 %.sroa.speculated.i.i.us.i214 to i1
  call void @llvm.assume(i1 %lcmp.mod1179)
  %i.blq = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %.166.i.i.us.i220.epil.init
  %i.blr = load i64, ptr %i.blq, align 8, !tbaa !161, !noalias !641
  %i.bls = icmp sgt i64 %i.blr, 0
  br i1 %i.bls, label %bb.ta, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

bb.ta:                                            ; preds = %.lr.ph68.i.i.us.i218.epil.preheader
  %i.blt = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %.166.i.i.us.i220.epil.init
  %i.blu = load i64, ptr %i.blt, align 8, !tbaa !161, !noalias !641
  %i.blv = add i64 %i.blu, %i.bij
  %i.blw = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %.166.i.i.us.i220.epil.init
  store i64 %i.blv, ptr %i.blw, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil: ; preds = %bb.ta, %.lr.ph68.i.i.us.i218.epil.preheader
  %i.blx = add nsw i64 %.166.i.i.us.i220.epil.init, 1
  br label %.loopexit.i.i.us.loopexit.i

.loopexit.i.i.us.loopexit.i:                      ; preds = %.loopexit.i.i.us.loopexit.i.unr-lcssa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil
  %.lcssa1143 = phi i64 [ %i.blp, %.loopexit.i.i.us.loopexit.i.unr-lcssa ], [ %i.blx, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.us.i.epil ]
  %.pre259.i = load i64, ptr %i.bhs, align 8, !tbaa !185, !noalias !636
  %.pre261.i = load i64, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  %.pre259.i.a = load i64, ptr %i.bkn, align 8, !tbaa !128, !noalias !641
  br label %.loopexit.i.i.us.i216

.loopexit.i.i.us.i216:                            ; preds = %.loopexit.i.i.us.loopexit.i, %.lr.ph71.i.i.us.i212
  %i.bly = phi i64 [ %i.bkt, %.lr.ph71.i.i.us.i212 ], [ %.pre259.i.a, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %119 = phi i64 [ %i.bkx, %.lr.ph71.i.i.us.i212 ], [ %.pre261.i, %.loopexit.i.i.us.loopexit.i ]
  %120 = phi i64 [ %118, %.lr.ph71.i.i.us.i212 ], [ %.pre259.i, %.loopexit.i.i.us.loopexit.i ]
  %.3.i.i.us.i217 = phi i64 [ %.03170.i.i.us.i213, %.lr.ph71.i.i.us.i212 ], [ %.lcssa1143, %.loopexit.i.i.us.loopexit.i ] ; 2 uses
  %i.blz = icmp slt i64 %.3.i.i.us.i217, %i.bly
  br i1 %i.blz, label %.lr.ph71.i.i.us.i212, label %._crit_edge.i.i.i207, !llvm.loop !410

.lr.ph71.i.i.i222:                                ; preds = %.lr.ph71.i.i.preheader.i211, %.loopexit.i.i.i228
  %.03170.i.i.i223 = phi i64 [ %.3.i.i.i229, %.loopexit.i.i.i228 ], [ 0, %.lr.ph71.i.i.preheader.i211 ] ; 7 uses
  %i.bma = load i8, ptr %58, align 8, !tbaa !184, !range !84, !noalias !636, !noundef !85
  %i.bmb = trunc nuw i8 %i.bma to i1
  br i1 %i.bmb, label %bb.tb, label %.noexc83.thread.i.i224

bb.tb:                                            ; preds = %.lr.ph71.i.i.i222
  %i.bmc = load i64, ptr %i.bhv, align 8, !tbaa !187, !noalias !636 ; 4 uses
  %.not.i.i97.i.i234 = icmp eq i64 %i.bmc, 0
  br i1 %.not.i.i97.i.i234, label %.noexc83.i.i238, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.bmd = load i64, ptr %i.bhw, align 8, !tbaa !188, !noalias !636 ; 3 uses
  %i.bme = icmp eq i64 %i.bmd, 0
  br i1 %i.bme, label %bb.td, label %bb.tg

bb.td:                                            ; preds = %bb.tc
  %i.bmf = icmp slt i64 %i.bmc, 64
  br i1 %i.bmf, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  %i.bmg = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhu, i64 noundef 64) #20, !noalias !635, !inline_history !362 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i250 = lshr i32 %i.bmg, 16
  br label %bb.tk

bb.tf:                                            ; preds = %bb.td
  %i.bmh = load ptr, ptr %i.bhu, align 8, !tbaa !189, !noalias !636 ; 2 uses
  %i.bmi = load i64, ptr %i.bmh, align 1, !noalias !635
  br label %bb.tj

bb.tg:                                            ; preds = %bb.tc
  %i.bmj = sub nsw i64 128, %i.bmd
  %i.bmk = icmp slt i64 %i.bmc, %i.bmj
  br i1 %i.bmk, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.bml = call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.bhu, i64 noundef 64) #20, !noalias !635, !inline_history !362 ; 2 uses
  %.sroa.5.0.extract.shift2.i.i.i.i249 = lshr i32 %i.bml, 16
  br label %bb.tk

bb.ti:                                            ; preds = %bb.tg
  %i.bmm = load ptr, ptr %i.bhu, align 8, !tbaa !189, !noalias !636 ; 3 uses
  %i.bmn = load i64, ptr %i.bmm, align 1, !noalias !635
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  %i.bmp = load i64, ptr %i.bmo, align 1, !noalias !635
  %.0.i.i.i.i147.i = call noundef i64 @llvm.fshr.i64(i64 %i.bmp, i64 %i.bmn, i64 %i.bmd)
  br label %bb.tj

bb.tj:                                            ; preds = %bb.ti, %bb.tf
  %.0.i.sink.i.i.i.i235 = phi i64 [ %.0.i.i.i.i147.i, %bb.ti ], [ %i.bmi, %bb.tf ]
  %i.bmq = phi ptr [ %i.bmm, %bb.ti ], [ %i.bmh, %bb.tf ]
  %i.bmr = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i.i.i.i235)
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmq, i64 8
  store ptr %i.bms, ptr %i.bhu, align 8, !tbaa !189, !noalias !636
  %i.bmt = add nsw i64 %i.bmc, -64
  store i64 %i.bmt, ptr %i.bhv, align 8, !tbaa !187, !noalias !636
  %i.bmu = trunc nuw nsw i64 %i.bmr to i32
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %bb.th, %bb.te
  %.sroa.0.0.i.i.i.i236 = phi i32 [ %i.bmg, %bb.te ], [ 64, %bb.tj ], [ %i.bml, %bb.th ]
  %.sroa.5.0.i.i.i.i237 = phi i32 [ %.sroa.5.0.extract.shift.i.i.i.i250, %bb.te ], [ %i.bmu, %bb.tj ], [ %.sroa.5.0.extract.shift2.i.i.i.i249, %bb.th ]
  %i.bmv = shl nuw i32 %.sroa.5.0.i.i.i.i237, 16
  %i.bmw = and i32 %.sroa.0.0.i.i.i.i236, 65535
  %i.bmx = or disjoint i32 %i.bmv, %i.bmw
  br label %.noexc83.i.i238

.noexc83.thread.i.i224:                           ; preds = %.lr.ph71.i.i.i222
  %i.bmy = load i64, ptr %i.bhs, align 8, !tbaa !185, !noalias !636
  %i.bmz = load i64, ptr %i.bht, align 8, !tbaa !186, !noalias !636 ; 2 uses
  %i.bna = sub nsw i64 %i.bmy, %i.bmz
  %.sroa.speculated.i.i.i225 = call i64 @llvm.smin.i64(i64 %i.bna, i64 32767) ; 2 uses
  %i.bnb = trunc i64 %.sroa.speculated.i.i.i225 to i16
  %sext.i.i.i226 = shl i64 %.sroa.speculated.i.i.i225, 48
  %i.bnc = ashr exact i64 %sext.i.i.i226, 48
  %i.bnd = add nsw i64 %i.bnc, %i.bmz
  store i64 %i.bnd, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  br label %.preheader.i.i.i227

.noexc83.i.i238:                                  ; preds = %bb.tk, %bb.tb
  %.sroa.0.0.insert.insert.i.i.i.i239 = phi i32 [ %i.bmx, %bb.tk ], [ 0, %bb.tb ] ; 4 uses
  %.sroa.0.0.extract.trunc.i98.i.i240 = zext i32 %.sroa.0.0.insert.insert.i.i.i.i239 to i64
  %.sroa.4.0.extract.shift.i.i.i241 = lshr i32 %.sroa.0.0.insert.insert.i.i.i.i239, 16 ; 2 uses
  %sext4.i.i.i242 = shl i64 %.sroa.0.0.extract.trunc.i98.i.i240, 48
  %i.bne = ashr exact i64 %sext4.i.i.i242, 48
  %i.bnf = load i64, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  %i.bng = add nsw i64 %i.bne, %i.bnf
  store i64 %i.bng, ptr %i.bht, align 8, !tbaa !186, !noalias !636
  %.pre.i.i148.i = and i32 %.sroa.0.0.insert.insert.i.i.i.i239, 65535
  %.sroa.0.0.extract.trunc.i.i.i243 = trunc i32 %.sroa.0.0.insert.insert.i.i.i.i239 to i16 ; 4 uses
  %i.bnh = icmp eq i32 %.pre.i.i148.i, %.sroa.4.0.extract.shift.i.i.i241
  br i1 %i.bnh, label %.preheader.i.i.i227, label %bb.tn

.preheader.i.i.i227:                              ; preds = %.noexc83.i.i238, %.noexc83.thread.i.i224
  %.sroa.0.0.extract.trunc.i32.i.i = phi i16 [ %i.bnb, %.noexc83.thread.i.i224 ], [ %.sroa.0.0.extract.trunc.i.i.i243, %.noexc83.i.i238 ] ; 5 uses
  %i.bni = icmp sgt i16 %.sroa.0.0.extract.trunc.i32.i.i, 0
  br i1 %i.bni, label %.lr.ph68.i.i.i230.preheader, label %.loopexit.i.i.i228

.lr.ph68.i.i.i230.preheader:                      ; preds = %.preheader.i.i.i227
  %i.bnj = icmp eq i16 %.sroa.0.0.extract.trunc.i32.i.i, 1
  br i1 %i.bnj, label %.lr.ph68.i.i.i230.epil.preheader, label %.lr.ph68.i.i.i230.preheader.new

.lr.ph68.i.i.i230.preheader.new:                  ; preds = %.lr.ph68.i.i.i230.preheader
  %i.bnk = and i16 %.sroa.0.0.extract.trunc.i32.i.i, 32766
  %unroll_iter1184 = zext nneg i16 %i.bnk to i64
  br label %.lr.ph68.i.i.i230

.lr.ph68.i.i.i230:                                ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1, %.lr.ph68.i.i.i230.preheader.new
  %.166.i.i.i232 = phi i64 [ %.03170.i.i.i223, %.lr.ph68.i.i.i230.preheader.new ], [ %i.boa, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ] ; 5 uses
  %niter1185 = phi i64 [ 0, %.lr.ph68.i.i.i230.preheader.new ], [ %niter1185.next.1, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1 ]
  %i.bnl = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %.166.i.i.i232
  %i.bnm = load i64, ptr %i.bnl, align 8, !tbaa !161, !noalias !641
  %i.bnn = icmp sgt i64 %i.bnm, 0
  br i1 %i.bnn, label %bb.tl, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

bb.tl:                                            ; preds = %.lr.ph68.i.i.i230
  %i.bno = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %.166.i.i.i232
  %i.bnp = load i64, ptr %i.bno, align 8, !tbaa !161, !noalias !641
  %i.bnq = add i64 %i.bnp, %i.bij
  %i.bnr = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %.166.i.i.i232
  store i64 %i.bnq, ptr %i.bnr, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i: ; preds = %bb.tl, %.lr.ph68.i.i.i230
  %i.bns = add nsw i64 %.166.i.i.i232, 1          ; 3 uses
  %i.bnt = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %i.bns
  %i.bnu = load i64, ptr %i.bnt, align 8, !tbaa !161, !noalias !641
  %i.bnv = icmp sgt i64 %i.bnu, 0
  br i1 %i.bnv, label %bb.tm, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

bb.tm:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.bnw = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %i.bns
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !161, !noalias !641
  %i.bny = add i64 %i.bnx, %i.bij
  %i.bnz = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %i.bns
  store i64 %i.bny, ptr %i.bnz, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i.1: ; preds = %bb.tm, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit.i.i.i
  %i.boa = add nsw i64 %.166.i.i.i232, 2          ; 3 uses
  %niter1185.next.1 = add i64 %niter1185, 2       ; 2 uses
  %niter1185.ncmp.1 = icmp eq i64 %niter1185.next.1, %unroll_iter1184
  br i1 %niter1185.ncmp.1, label %.loopexit.i.i.i228.loopexit.unr-lcssa, label %.lr.ph68.i.i.i230, !llvm.loop !409

bb.tn:                                            ; preds = %.noexc83.i.i238
  %i.bob = icmp eq i32 %.sroa.4.0.extract.shift.i.i.i241, 0
  br i1 %i.bob, label %bb.to, label %.preheader62.i.i.i244

.preheader62.i.i.i244:                            ; preds = %bb.tn
  %i.boc = sext i16 %.sroa.0.0.extract.trunc.i.i.i243 to i64
  %i.bod = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i243, 0
  br i1 %i.bod, label %.lr.ph.i77.i.i245, label %.loopexit.i.i.i228

bb.to:                                            ; preds = %bb.tn
  %i.boe = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %.03170.i.i.i223
  %i.bof = sext i16 %.sroa.0.0.extract.trunc.i.i.i243 to i64 ; 2 uses
  %i.bog = shl nsw i64 %i.bof, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.boe, i8 0, i64 %i.bog, i1 false), !noalias !641
  %i.boh = add nsw i64 %.03170.i.i.i223, %i.bof
  br label %.loopexit.i.i.i228

.lr.ph.i77.i.i245:                                ; preds = %.preheader62.i.i.i244, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i
  %.065.i.i.i246 = phi i64 [ %i.boy, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ 0, %.preheader62.i.i.i244 ]
  %.264.i.i.i247 = phi i64 [ %i.boz, %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i ], [ %.03170.i.i.i223, %.preheader62.i.i.i244 ] ; 5 uses
  %i.boi = load i64, ptr %i.bkl, align 8, !tbaa !149, !noalias !641
  %i.boj = add nsw i64 %i.boi, %.264.i.i.i247     ; 2 uses
  %i.bok = lshr i64 %i.boj, 3
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bkk, i64 %i.bok
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !64, !noalias !641
  %i.bon = trunc i64 %i.boj to i8
  %i.boo = and i8 %i.bon, 7
  %i.bop = lshr i8 %i.bom, %i.boo
  %i.boq = trunc i8 %i.bop to i1
  %i.bor = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %.264.i.i.i247 ; 2 uses
  br i1 %i.boq, label %bb.tp, label %bb.tr

bb.tp:                                            ; preds = %.lr.ph.i77.i.i245
  %i.bos = load i64, ptr %i.bor, align 8, !tbaa !161, !noalias !641
  %i.bot = icmp sgt i64 %i.bos, 0
  br i1 %i.bot, label %bb.tq, label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tq:                                            ; preds = %bb.tp
  %i.bou = getelementptr inbounds [8 x i8], ptr %i.bkj, i64 %.264.i.i.i247
  %i.bov = load i64, ptr %i.bou, align 8, !tbaa !161, !noalias !641
  %i.bow = add i64 %i.bov, %i.bij
  %i.box = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %.264.i.i.i247
  store i64 %i.bow, ptr %i.box, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

bb.tr:                                            ; preds = %.lr.ph.i77.i.i245
  store i64 0, ptr %i.bor, align 8, !tbaa !161, !noalias !641
  br label %_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i

_ZZN5arrow12_GLOBAL__N_118PutListViewOffsetsIlEENS_6ResultINS0_21OffsetBufferOpOutcomeEEERKNS_9ArrayDataEPT_RKNS_6BufferES8_S9_ENKUllE_clEl.exit40.i.i.i: ; preds = %bb.tr, %bb.tq, %bb.tp
  %i.boy = add nuw nsw i64 %.065.i.i.i246, 1      ; 2 uses
  %i.boz = add nsw i64 %.264.i.i.i247, 1          ; 2 uses
  %exitcond.not.i.i.i248 = icmp eq i64 %i.boy, %i.boc
end_hunk_0
