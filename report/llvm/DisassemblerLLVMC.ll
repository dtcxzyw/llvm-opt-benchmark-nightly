Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DisassemblerLLVMC?download=true
inline.NumInlined: 2096
inline.NumDeleted: 1063
begin_hunk_0_@_ZN16InstructionLLVMC13ParseOperandsERN4llvm15SmallVectorImplIN12lldb_private11Instruction7OperandEEE:bb.a
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cs) #26, !inline_history !13
  br label %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89

_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89: ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.p, ptr noundef nonnull align 8 dereferenceable(18) %i.ak, i64 18, i1 false)
  %i.ct = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.cu = load i32, ptr %2, align 8, !tbaa !216
  %.not193 = icmp eq i32 %i.cu, 0
  br i1 %.not193, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN16InstructionLLVMC14ParseImmediateEPKcS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.583") align 8 %8, ptr noundef %.053198, ptr noundef nonnull %i.i)
  %i.cv = load i32, ptr %8, align 8, !tbaa !216
  store i32 %i.cv, ptr %2, align 8, !tbaa !216
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !217 ; 4 uses
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !218
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.cz = load <2 x ptr>, ptr %i.am, align 8, !tbaa !220
  store <2 x ptr> %i.cz, ptr %i.j, align 8, !tbaa !220
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !219
  store ptr %i.da, ptr %i.m, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.cw, ptr noundef %i.cx), !inline_history !13
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dd) #26, !inline_history !13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.p, ptr noundef nonnull align 8 dereferenceable(18) %i.ap, i64 18, i1 false)
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.df = load i32, ptr %2, align 8, !tbaa !216
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = load ptr, ptr %i.am, align 8, !tbaa !217
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.dh, ptr noundef %i.di), !inline_history !14
  %i.dj = load ptr, ptr %i.am, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i, label %.critedge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = load ptr, ptr %i.ao, align 8, !tbaa !219
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #26, !inline_history !221
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89, %.critedge.thread
  %.0143156 = phi ptr [ %i.de, %.critedge.thread ], [ %i.ct, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89 ]
  %i.do = phi i1 [ %i.dg, %.critedge.thread ], [ true, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit89 ]
  %i.dp = load ptr, ptr %i.ah, align 8, !tbaa !217
  %i.dq = load ptr, ptr %i.ai, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.dp, ptr noundef %i.dq), !inline_history !14
  %i.dr = load ptr, ptr %i.ah, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i92, label %.critedge73.thread, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.ds = load ptr, ptr %i.aj, align 8, !tbaa !219
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #26, !inline_history !221
  br label %.critedge73.thread

.critedge73.thread:                               ; preds = %bb.q, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge73

.critedge73:                                      ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit87, %.critedge73.thread
  %i.dw = phi i1 [ %i.do, %.critedge73.thread ], [ true, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit87 ]
  %.0143155166 = phi ptr [ %.0143156, %.critedge73.thread ], [ %i.ci, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit87 ]
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !217
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.dx, ptr noundef %i.dy), !inline_history !14
  %i.dz = load ptr, ptr %i.ac, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i94, label %.critedge75.thread, label %bb.r

bb.r:                                             ; preds = %.critedge73
  %i.ea = load ptr, ptr %i.ae, align 8, !tbaa !219
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #26, !inline_history !221
  br label %.critedge75.thread

.critedge75.thread:                               ; preds = %bb.r, %.critedge73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.critedge75

.critedge75:                                      ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit85, %.critedge75.thread
  %.0143155165176 = phi ptr [ %.0143155166, %.critedge75.thread ], [ %i.bx, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit85 ]
  %i.ee = phi i1 [ %i.dw, %.critedge75.thread ], [ true, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit85 ]
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !217
  %i.eg = load ptr, ptr %i.y, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.ef, ptr noundef %i.eg), !inline_history !14
  %i.eh = load ptr, ptr %i.x, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i96, label %.critedge77.thread, label %bb.s

bb.s:                                             ; preds = %.critedge75
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #26, !inline_history !221
  br label %.critedge77.thread

.critedge77.thread:                               ; preds = %bb.s, %.critedge75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge77

.critedge77:                                      ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit83, %.critedge77.thread
  %i.em = phi i1 [ %i.ee, %.critedge77.thread ], [ true, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit83 ]
  %.0143155165175181 = phi ptr [ %.0143155165176, %.critedge77.thread ], [ %i.bm, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit83 ]
  %i.en = load ptr, ptr %i.s, align 8, !tbaa !217
  %i.eo = load ptr, ptr %i.t, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.en, ptr noundef %i.eo), !inline_history !14
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i98, label %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99, label %bb.t

bb.t:                                             ; preds = %.critedge77
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !219
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.et) #26, !inline_history !221
  br label %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99

_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99: ; preds = %.critedge77, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.critedge79

.critedge79:                                      ; preds = %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit, %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99
  %i.eu = phi i1 [ %i.em, %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99 ], [ true, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit ]
  %.0143155165175182 = phi ptr [ %.0143155165175181, %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit99 ], [ %i.bb, %_ZNSt5tupleIJRN12lldb_private11Instruction7OperandERPKcEEaSIS2_S5_EENSt9enable_ifIXcl12__assignableIT_T0_EEERS7_E4typeEOSt4pairISA_SB_E.exit ] ; 7 uses
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !217
  %i.ew = load ptr, ptr %i.n, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.ev, ptr noundef %i.ew), !inline_history !14
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i100, label %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit101, label %bb.u

bb.u:                                             ; preds = %.critedge79
  %i.ey = load ptr, ptr %i.o, align 8, !tbaa !219
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #26, !inline_history !221
  br label %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit101

_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit101: ; preds = %.critedge79, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.eu, label %bb.v, label %.critedge81

bb.v:                                             ; preds = %_ZNSt4pairIN12lldb_private11Instruction7OperandEPKcED2Ev.exit101
  call void @_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private11Instruction7OperandELb0EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(50) %2)
  %.not8.i.i = icmp eq ptr %.0143155165175182, %i.i
  br i1 %.not8.i.i, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.fc = ptrtoaddr ptr %.0143155165175182 to i64
  %i.fd = sub i64 %i.ar, %i.fc
  %scevgep.i.i = getelementptr i8, ptr %.0143155165175182, i64 %i.fd
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %.079.i.i = phi ptr [ %i.ff, %bb.w ], [ %.0143155165175182, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fe = load i8, ptr %.079.i.i, align 1, !tbaa !27
  switch i8 %i.fe, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ff, %i.i
  br i1 %.not.i.i, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !15

_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i: ; preds = %bb.w, %.lr.ph.i.i, %bb.v
  %.07.lcssa.i.i = phi ptr [ %.0143155165175182, %bb.v ], [ %scevgep.i.i, %bb.w ], [ %.079.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not.i102 = icmp eq ptr %.07.lcssa.i.i, %i.i
  br i1 %.not.i102, label %_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i
  %i.fg = load i8, ptr %.07.lcssa.i.i, align 1, !tbaa !27
  %i.fh = icmp eq i8 %i.fg, 44                    ; 2 uses
  %spec.select.idx.i = zext i1 %i.fh to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 %spec.select.idx.i
  %i.fi = select i1 %i.fh, ptr %spec.select.i, ptr %.0143155165175182
  br label %_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit

_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit:  ; preds = %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i, %bb.x
  %.0.i = phi ptr [ %.0143155165175182, %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit.i ], [ %i.fi, %bb.x ] ; 5 uses
  %.not8.i = icmp eq ptr %.0.i, %i.i
  br i1 %.not8.i, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit
  %i.fj = ptrtoaddr ptr %.0.i to i64
  %i.fk = sub i64 %i.ar, %i.fj
  %scevgep.i = getelementptr i8, ptr %.0.i, i64 %i.fk
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.preheader.i
  %.079.i = phi ptr [ %i.fm, %bb.y ], [ %.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.fl = load i8, ptr %.079.i, align 1, !tbaa !27
  switch i8 %i.fl, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit [
    i8 32, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %.not.i103 = icmp eq ptr %i.fm, %i.i
  br i1 %.not.i103, label %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !15

_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit: ; preds = %.lr.ph.i, %bb.y, %_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit
  %.07.lcssa.i = phi ptr [ %.0.i, %_ZN16InstructionLLVMC11ConsumeCharEPKccS1_.exit ], [ %.079.i, %.lr.ph.i ], [ %scevgep.i, %bb.y ] ; 2 uses
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !217
  %i.fo = load ptr, ptr %i.l, align 8, !tbaa !218
  call void @_ZSt8_DestroyIPN12lldb_private11Instruction7OperandEEvT_S4_(ptr noundef %i.fn, ptr noundef %i.fo), !inline_history !14
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private11Instruction7OperandD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit
  %i.fq = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #26, !inline_history !221
  br label %_ZN12lldb_private11Instruction7OperandD2Ev.exit

_ZN12lldb_private11Instruction7OperandD2Ev.exit:  ; preds = %_ZN16InstructionLLVMC17ConsumeWhitespaceEPKcS1_.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not69 = icmp eq ptr %.07.lcssa.i, %i.i
  br i1 %.not69, label %._crit_edge, label %bb.c, !llvm.loop !464

._crit_edge:                                      ; preds = %_ZN12lldb_private11Instruction7OperandD2Ev.exit, %_ZN4llvm9StringRefC2EPKc.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !169, !noalias !468 ; 8 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i104, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.fy = load atomic i32, ptr %i.fx monotonic, align 8, !noalias !468
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.06.i.i.i.i.i = phi i32 [ %i.fy, %bb.aa ], [ %i.gc, %bb.ac ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ga = cmpxchg weak ptr %i.fx, i32 %.06.i.i.i.i.i, i32 %i.fz acq_rel monotonic, align 8, !noalias !468 ; 2 uses
  %i.gb = extractvalue { i32, i1 } %i.ga, 1
  %i.gc = extractvalue { i32, i1 } %i.ga, 0
  br i1 %i.gb, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.ab, !llvm.loop !10

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.ac
  %i.gd = load atomic i32, ptr %i.fx monotonic, align 8, !noalias !468
  %.not.i.i.i105 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i105, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !183, !noalias !468 ; 2 uses
  %.not194 = icmp eq ptr %i.ge, null
  br i1 %.not194, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !115
  %i.gh = icmp ugt i32 %i.gg, 1
  br i1 %i.gh, label %bb.ae, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gj = call noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96) %i.gi) #24
  switch i32 %i.gj, label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread [
    i32 40, label %bb.af
    i32 41, label %bb.af
    i32 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.gk = load i32, ptr %i.gf, align 8, !tbaa !115
  %i.gl = zext i32 %i.gk to i64
  %i.gm = load ptr, ptr %1, align 8, !tbaa !111
  %i.gn = getelementptr [56 x i8], ptr %i.gm, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 -7
  store i8 1, ptr %i.go, align 1, !tbaa !469
  br label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.gp = load ptr, ptr %1, align 8, !tbaa !111
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 49
  store i8 1, ptr %i.gq, align 1, !tbaa !469
  br label %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.ab, %._crit_edge, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %bb.af, %bb.ag, %bb.ae, %bb.ad, %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.5.0186 = phi ptr [ %i.fw, %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.fw, %bb.af ], [ %i.fw, %bb.ag ], [ %i.fw, %bb.ae ], [ %i.fw, %bb.ad ], [ null, %._crit_edge ], [ %i.fw, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ null, %bb.ab ] ; 8 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #24
  %i.gs = load atomic ptr, ptr %i.gr monotonic, align 8 ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i108, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread
  %i.gt = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.gs) #24
  %i.gu = and i64 %i.gt, 8590458880
  %.not6.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN12lldb_private12StreamStringC1Eb(ptr noundef nonnull align 8 dereferenceable(120) %9, i1 noundef zeroext false) #24
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !115
  %i.gx = zext i32 %i.gw to i64
  %i.gy = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.g, i64 noundef %i.gx) #24 ; 0 uses
  %i.gz = load ptr, ptr %1, align 8, !tbaa !111   ; 2 uses
  %i.ha = load i32, ptr %i.gv, align 8, !tbaa !115 ; 2 uses
  %i.hb = zext i32 %i.ha to i64
  %.idx = mul nuw nsw i64 %i.hb, 56
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx
  %.not71199 = icmp eq i32 %i.ha, 0
  br i1 %.not71199, label %._crit_edge202, label %.lr.ph201

._crit_edge202:                                   ; preds = %.lr.ph201, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.hd = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %9) #24 ; 2 uses
  %i.he = extractvalue { ptr, i64 } %i.hd, 0
  %i.hf = extractvalue { ptr, i64 } %i.hd, 1
  call void @_ZN12lldb_private3Log9PutStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(104) %i.gs, ptr %i.he, i64 %i.hf) #24
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread

.lr.ph201:                                        ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit, %.lr.ph201
  %.052200 = phi ptr [ %i.hi, %.lr.ph201 ], [ %i.gz, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ] ; 2 uses
  %i.hg = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr nonnull @.str.56, i64 2) #24 ; 0 uses
  call void @_ZN16InstructionLLVMC11DumpOperandERKN12lldb_private11Instruction7OperandERNS0_6StreamE(ptr noundef nonnull align 8 dereferenceable(50) %.052200, ptr noundef nonnull align 8 dereferenceable(88) %9)
  %i.hh = call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr nonnull @.str.57, i64 1) #24 ; 0 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.052200, i64 56 ; 2 uses
  %.not71 = icmp eq ptr %i.hi, %i.hc
  br i1 %.not71, label %._crit_edge202, label %.lr.ph201

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread: ; preds = %bb.ah, %_ZNSt12__shared_ptrI17DisassemblerLLVMCLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %._crit_edge202
  %.not.i.i111 = icmp eq ptr %.sroa.5.0186, null
  br i1 %.not.i.i111, label %_ZNSt12__shared_ptrIN12lldb_private12DisassemblerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.5.0186, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.hj, align 8, !tbaa !167
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.5.0186, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !168
  %i.ho = load ptr, ptr %.sroa.5.0186, align 8, !tbaa !58
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0186) #24, !inline_history !11
  %i.hr = load ptr, ptr %.sroa.5.0186, align 8, !tbaa !58
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0186) #24, !inline_history !11
  br label %_ZNSt12__shared_ptrIN12lldb_private12DisassemblerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i112 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i112, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !171
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

bb.am:                                            ; preds = %bb.ak
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i114 = phi i32 [ %i.hm, %bb.al ], [ %i.hw, %bb.am ]
end_hunk_0
