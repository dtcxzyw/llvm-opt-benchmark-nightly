Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DisassembleRequestHandler?download=true
inline.NumInlined: 1236
inline.NumDeleted: 720
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK8lldb_dap25DisassembleRequestHandler3RunERKNS_8protocol20DisassembleArgumentsE:bb.a
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #16, !noalias !67
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #16, !noalias !67
  %i.dm = call noundef zeroext i1 @_ZNK4lldb17SBInstructionList7IsValidEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #16, !noalias !67
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = call noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #16, !noalias !67
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @_ZN4lldb9SBAddressC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %44) #16
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dp = sub nsw i64 0, %i.ct
  %i.dq = call noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #16, !noalias !67
  %i.dr = icmp ult i64 %i.dq, %i.dp
  br i1 %i.dr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #16, !noalias !67
  call void @_ZN4lldb17SBInstructionList21GetInstructionAtIndexEj(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBInstruction") align 8 %38, ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 0) #16, !noalias !67
  call void @_ZN4lldb13SBInstruction10GetAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBAddress") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %38) #16
  call void @_ZN4lldb13SBInstructionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #16, !noalias !67
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #16, !noalias !67
  %i.ds = call noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #16, !noalias !67
  %i.dt = add i64 %i.ds, %i.ct
  %i.du = trunc i64 %i.dt to i32
  call void @_ZN4lldb17SBInstructionList21GetInstructionAtIndexEj(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBInstruction") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef %i.du) #16, !noalias !67
  call void @_ZN4lldb13SBInstruction10GetAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBAddress") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %39) #16
  call void @_ZN4lldb13SBInstructionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #16, !noalias !67
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  call void @_ZN4lldb17SBInstructionListD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %35) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #16, !noalias !67
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  call void @_ZN4lldb8SBSymbolD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #16, !noalias !67
  br label %_ZN8lldb_dapL26GetDisassembleStartAddressEN4lldb8SBTargetENS0_9SBAddressEl.exit

_ZN8lldb_dapL26GetDisassembleStartAddressEN4lldb8SBTargetENS0_9SBAddressEl.exit: ; preds = %bb.l, %bb.n, %bb.p, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #16
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %43) #16
  %i.dv = call noundef zeroext i1 @_ZNK4lldb9SBAddress7IsValidEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #16
  br i1 %i.dv, label %bb.aa, label %_ZN4llvm5ErrorD2Ev.exit32

_ZN4llvm5ErrorD2Ev.exit32:                        ; preds = %_ZN8lldb_dapL26GetDisassembleStartAddressEN4lldb8SBTargetENS0_9SBAddressEl.exit
  call void @_ZSt11make_uniqueIN8lldb_dap8DAPErrorEJRA51_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.243") align 8 %0, ptr noundef nonnull align 1 dereferenceable(51) @.str.1)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8
  %i.dy = or i8 %i.dx, 1
  store i8 %i.dy, ptr %i.dw, align 8
  br label %bb.dk

bb.aa:                                            ; preds = %_ZN8lldb_dapL26GetDisassembleStartAddressEN4lldb8SBTargetENS0_9SBAddressEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #16
  %i.dz = load ptr, ptr %i.cl, align 8, !tbaa !62, !nonnull !52, !align !65
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 616
  call void @_ZN4lldb9SBAddressC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %42) #16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !12
  call void @_ZN4lldb8SBTarget16ReadInstructionsENS_9SBAddressEj(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBInstructionList") align 8 %45, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr nofree noundef nonnull align 8 dereferenceable(8) %46, i32 noundef %i.ec) #16
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #16
  %i.ed = call noundef zeroext i1 @_ZNK4lldb17SBInstructionList7IsValidEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #16
  br i1 %i.ed, label %bb.ab, label %_ZN4llvm5ErrorD2Ev.exit33

_ZN4llvm5ErrorD2Ev.exit33:                        ; preds = %bb.aa
  call void @_ZSt11make_uniqueIN8lldb_dap8DAPErrorEJRA51_KcEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.243") align 8 %0, ptr noundef nonnull align 1 dereferenceable(51) @.str.1)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 8
  %i.eg = or i8 %i.ef, 1
  store i8 %i.eg, ptr %i.ee, align 8
  br label %bb.dj

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !70, !range !49, !noundef !52
  %i.ej = trunc nuw i8 %i.ei to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.ek = load i32, ptr %i.eb, align 8, !tbaa !12
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = call noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #16
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %50, i64 64 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %50, i64 56 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %50, i64 112 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %50, i64 296 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %50, i64 308 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %50, i64 316 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %50, i64 324 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %50, i64 332 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %50, i64 336
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 14 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fi = ptrtoint ptr %5 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %50, i64 340
  %i.fk = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.fp = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %i.fq = insertelement <2 x ptr> %i.fp, ptr %i.b, i64 1
  %i.fr = ptrtoint <2 x ptr> %i.fq to <2 x i64>
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %20, i64 48
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fv to i64
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 64
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %50, i64 80 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %26, i64 176 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %50, i64 120 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %50, i64 152 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %50, i64 136 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %50, i64 128
  %i.gt = getelementptr inbounds nuw i8, ptr %50, i64 160 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %50, i64 192 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %50, i64 176 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 7 uses
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %50, i64 168
  %i.ha = getelementptr inbounds nuw i8, ptr %50, i64 200 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %50, i64 216 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %26, i64 168 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %50, i64 288 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %26, i64 160 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %50, i64 280 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %50, i64 232 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %26, i64 112 ; 7 uses
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %26, i64 104 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %50, i64 224
  %i.hl = getelementptr inbounds nuw i8, ptr %50, i64 248 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %26, i64 128 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %50, i64 264 ; 5 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %26, i64 144 ; 7 uses
  %.phi.trans.insert66.i = getelementptr inbounds nuw i8, ptr %26, i64 136 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %50, i64 256
  %i.hq = getelementptr inbounds nuw i8, ptr %50, i64 304
  %i.hr = getelementptr inbounds nuw i8, ptr %50, i64 312
  %i.hs = getelementptr inbounds nuw i8, ptr %50, i64 96 ; 2 uses
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48, %bb.ab
  %.0.lcssa = phi i64 [ %i.el, %bb.ab ], [ %spec.select, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48 ] ; 2 uses
  %i.ht = icmp slt i64 %i.ct, 0
  br i1 %i.ht, label %bb.cv, label %bb.cz

bb.ac:                                            ; preds = %.lr.ph, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48
  %.0135 = phi i64 [ 0, %.lr.ph ], [ %i.rp, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48 ] ; 3 uses
  %.026134 = phi i64 [ %i.el, %.lr.ph ], [ %spec.select, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16
  %i.hu = trunc i64 %.0135 to i32
  call void @_ZN4lldb17SBInstructionList21GetInstructionAtIndexEj(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBInstruction") align 8 %48, ptr noundef nonnull align 8 dereferenceable(16) %45, i32 noundef %i.hu) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #16
  call void @_ZN4lldb13SBInstruction10GetAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBAddress") align 8 %49, ptr noundef nonnull align 8 dereferenceable(16) %48) #16
  %i.hv = call noundef zeroext i1 @_ZN4lldbeqERKNS_9SBAddressES2_(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %41) #16
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  %spec.select = select i1 %i.hv, i64 %.0135, i64 %.026134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #16
  %i.hw = load ptr, ptr %i.cl, align 8, !tbaa !62, !nonnull !52, !align !65 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !71
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 616
  call void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #16
  %i.hy = call noundef zeroext i1 @_ZN4lldb13SBInstruction7IsValidEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #16
  br i1 %i.hy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.en, align 8, !tbaa !13, !alias.scope !74
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !18, !alias.scope !74
  store i64 0, ptr %i.eq, align 8, !tbaa !22, !alias.scope !74
  store i8 0, ptr %i.ep, align 8, !tbaa !24, !alias.scope !74
  store i8 0, ptr %i.er, align 8, !tbaa !13, !alias.scope !74
  store i8 0, ptr %i.es, align 8, !tbaa !25, !alias.scope !74
  store i8 0, ptr %i.et, align 4, !tbaa !27, !alias.scope !74
  store i8 0, ptr %i.eu, align 4, !tbaa !27, !alias.scope !74
  store i8 0, ptr %i.ev, align 4, !tbaa !27, !alias.scope !74
  store i8 0, ptr %i.ew, align 4, !tbaa !27, !alias.scope !74
  store i64 -1, ptr %50, align 8, !tbaa !29, !alias.scope !74
  store i64 4294967297, ptr %i.ex, align 8, !alias.scope !74
  br label %_ZN8lldb_dapL45ConvertSBInstructionToDisassembledInstructionERNS_3DAPERN4lldb13SBInstructionEb.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16, !noalias !71
  call void @_ZN4lldb13SBInstruction10GetAddressEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBAddress") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %48) #16
  %i.hz = call noundef i64 @_ZNK4lldb9SBAddress14GetLoadAddressERKNS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !71
  call void @_ZN4lldb9SBAddressC1EmRNS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.hz, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.ia = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lldb9SBAddressaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #16 ; 0 uses
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !71
  call void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.ib = call noundef ptr @_ZN4lldb13SBInstruction11GetMnemonicENS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr nofree noundef nonnull align 8 dereferenceable(16) %9) #16
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #16
  store ptr %i.ib, ptr %i.b, align 8, !tbaa !77, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !71
  call void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.ic = call noundef ptr @_ZN4lldb13SBInstruction11GetOperandsENS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr nofree noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #16
  store ptr %i.ic, ptr %i.c, align 8, !tbaa !77, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !71
  call void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  %i.id = call noundef ptr @_ZN4lldb13SBInstruction10GetCommentENS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr nofree noundef nonnull align 8 dereferenceable(16) %12) #16 ; 4 uses
  store ptr %i.ey, ptr %11, align 8, !tbaa !18, !noalias !71
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #19
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.if = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.id) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !71
  store i64 %i.if, ptr %i.a, align 8, !tbaa !78, !noalias !71
  %i.ig = icmp ugt i64 %i.if, 15
  br i1 %i.ig, label %bb.ah, label %._crit_edge.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ih = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ih, ptr %11, align 8, !tbaa !55, !noalias !71
  %i.ii = load i64, ptr %i.a, align 8, !tbaa !78, !noalias !71
  store i64 %i.ii, ptr %i.ey, align 8, !tbaa !24, !noalias !71
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ah, %bb.ag
  %i.ij = phi ptr [ %i.ih, %bb.ah ], [ %i.ey, %bb.ag ] ; 2 uses
  switch i64 %i.if, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  %i.ik = load i8, ptr %i.id, align 1, !tbaa !24
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr nonnull align 1 %i.id, i64 %i.if, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i: ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i
  %i.il = load i64, ptr %i.a, align 8, !tbaa !78, !noalias !71 ; 2 uses
  store i64 %i.il, ptr %i.ez, align 8, !tbaa !22, !noalias !71
  %i.im = load ptr, ptr %11, align 8, !tbaa !55, !noalias !71
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.il
  store i8 0, ptr %i.in, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !71
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16, !noalias !71
  call void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @_ZN4lldb13SBInstruction7GetDataENS_8SBTargetE(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBData") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr nofree noundef nonnull align 8 dereferenceable(16) %14) #16
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16, !noalias !71
  store ptr %i.fa, ptr %15, align 8, !tbaa !18, !noalias !71
  store i64 0, ptr %i.fb, align 8, !tbaa !22, !noalias !71
  store i8 0, ptr %i.fa, align 8, !tbaa !24, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16, !noalias !71
  store i32 0, ptr %i.fc, align 8, !tbaa !79, !noalias !71
  store i8 0, ptr %i.fd, align 8, !tbaa !83, !noalias !71
  store i32 1, ptr %i.fe, align 4, !tbaa !84, !noalias !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false), !noalias !71
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %16, align 8, !tbaa !85, !noalias !71
  store ptr %15, ptr %i.fg, align 8, !tbaa !87, !noalias !71
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef null, i64 noundef 0, i32 noundef 0) #16
  %i.io = call noundef i64 @_ZN4lldb13SBInstruction11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #16
  %.not60.i = icmp eq i64 %i.io, 0
  br i1 %.not60.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  store i8 0, ptr %i.en, align 8, !tbaa !13, !alias.scope !71
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !18, !alias.scope !71
  store i64 0, ptr %i.eq, align 8, !tbaa !22, !alias.scope !71
  store i8 0, ptr %i.ep, align 8, !tbaa !24, !alias.scope !71
  store i8 0, ptr %i.er, align 8, !tbaa !13, !alias.scope !71
  store i8 0, ptr %i.es, align 8, !tbaa !25, !alias.scope !71
  store i8 0, ptr %i.et, align 4, !tbaa !27, !alias.scope !71
  store i8 0, ptr %i.eu, align 4, !tbaa !27, !alias.scope !71
  store i8 0, ptr %i.ev, align 4, !tbaa !27, !alias.scope !71
  store i8 0, ptr %i.ew, align 4, !tbaa !27, !alias.scope !71
  store i8 0, ptr %i.fj, align 4, !tbaa !89, !alias.scope !71
  store i64 %i.hz, ptr %50, align 8, !tbaa !29, !alias.scope !71
  %i.ip = load i64, ptr %i.fb, align 8, !tbaa !22, !noalias !71 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.thread, label %bb.am

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i, %bb.al
  %i.ir = phi i64 [ %i.iw, %bb.al ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i ]
  %.02559.i = phi i32 [ %i.iv, %bb.al ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16, !noalias !71
  call void @_ZN4lldb7SBErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #16
  %i.is = call noundef zeroext i8 @_ZN4lldb6SBData15GetUnsignedInt8ERNS_7SBErrorEm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %i.ir) #16
  %i.it = call noundef zeroext i1 @_ZNK4lldb7SBError7SuccessEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #16
  br i1 %i.it, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i
  store ptr @.str.2, ptr %18, align 8, !tbaa !90, !alias.scope !95, !noalias !71
  store i8 %i.is, ptr %i.fh, align 8, !tbaa !98, !alias.scope !95, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !71
  store ptr %18, ptr %5, align 8, !tbaa !99, !noalias !71
  %i.iu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.fi) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !71
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  call void @_ZN4lldb7SBErrorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16, !noalias !71
  %i.iv = add i32 %.02559.i, 1                    ; 2 uses
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = call noundef i64 @_ZN4lldb13SBInstruction11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %48) #16
  %i.iy = icmp ugt i64 %i.ix, %i.iw
  br i1 %i.iy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !101

bb.am:                                            ; preds = %._crit_edge.i
  %i.iz = add i64 %i.ip, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.iz, i64 noundef 1) #16
  %.pre = load i8, ptr %i.en, align 8, !tbaa !13, !range !49
  %i.ja = trunc nuw i8 %.pre to i1
  br i1 %i.ja, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.fn, ptr %3, align 8, !tbaa !18
  %i.jb = load ptr, ptr %15, align 8, !tbaa !55   ; 3 uses
  %i.jc = icmp eq ptr %i.jb, %i.fa
  br i1 %i.jc, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

bb.ao:                                            ; preds = %bb.an
  %i.jd = load i64, ptr %i.fb, align 8, !tbaa !22 ; 3 uses
  %i.je = icmp ult i64 %i.jd, 16
  call void @llvm.assume(i1 %i.je)
  %i.jf = add nuw nsw i64 %i.jd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fn, ptr noundef nonnull align 8 dereferenceable(1) %i.fa, i64 %i.jf, i1 false)
  br label %_ZN8lldb_dap8protocol6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.an
  store ptr %i.jb, ptr %3, align 8, !tbaa !55
  %i.jg = load i64, ptr %i.fa, align 8, !tbaa !24
  store i64 %i.jg, ptr %i.fn, align 8, !tbaa !24
  %.pre.i66 = load i64, ptr %i.fb, align 8, !tbaa !22
  br label %_ZN8lldb_dap8protocol6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i67

_ZN8lldb_dap8protocol6StringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64, %bb.ao
  %i.jh = phi ptr [ %i.fn, %bb.ao ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ] ; 5 uses
  %i.ji = phi i64 [ %i.jd, %bb.ao ], [ %.pre.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64 ] ; 6 uses
  store i64 %i.ji, ptr %i.fo, align 8, !tbaa !22
  store ptr %i.fa, ptr %15, align 8, !tbaa !55
  store i64 0, ptr %i.fb, align 8, !tbaa !22
  store i8 0, ptr %i.fa, align 8, !tbaa !24
  %i.jj = load ptr, ptr %i.fk, align 8, !tbaa !55 ; 6 uses
  %i.jk = icmp eq ptr %i.jj, %i.fl
end_hunk_0
begin_hunk_1_@_ZNK8lldb_dap25DisassembleRequestHandler3RunERKNS_8protocol20DisassembleArgumentsE:bb.a
  %i.pf = trunc nuw i8 %i.pe to i1
  store i8 0, ptr %i.gv, align 8, !tbaa !13, !noalias !71
  br i1 %i.pf, label %bb.cm, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i

bb.cm:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i.i
  %i.pg = load ptr, ptr %i.gu, align 8, !tbaa !55, !noalias !71 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.gy
  br i1 %i.ph, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  %i.pi = load i64, ptr %i.gy, align 8, !tbaa !24, !noalias !71
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i.i
  %i.pk = load i8, ptr %i.go, align 8, !tbaa !13, !range !49, !noalias !71, !noundef !52
  %i.pl = trunc nuw i8 %i.pk to i1
  store i8 0, ptr %i.go, align 8, !tbaa !13, !noalias !71
  br i1 %i.pl, label %bb.cn, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37

bb.cn:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i
  %i.pm = load ptr, ptr %26, align 8, !tbaa !55, !noalias !71 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.gr
  br i1 %i.pn, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i.i: ; preds = %bb.cn
  %i.po = load i64, ptr %i.gr, align 8, !tbaa !24, !noalias !71
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37

_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i.i, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i.i, %.critedge28.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16, !noalias !71
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16, !noalias !71
  %i.pq = load ptr, ptr %15, align 8, !tbaa !55, !noalias !71 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.fa
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37
  %i.ps = load i64, ptr %i.fa, align 8, !tbaa !24, !noalias !71
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16, !noalias !71
  call void @_ZN4lldb6SBDataD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16, !noalias !71
  %i.pu = load ptr, ptr %11, align 8, !tbaa !55, !noalias !71 ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.ey
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %i.pw = load i64, ptr %i.ey, align 8, !tbaa !24, !noalias !71
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !71
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16, !noalias !71
  br label %_ZN8lldb_dapL45ConvertSBInstructionToDisassembledInstructionERNS_3DAPERN4lldb13SBInstructionEb.exit

_ZN8lldb_dapL45ConvertSBInstructionToDisassembledInstructionERNS_3DAPERN4lldb13SBInstructionEb.exit: ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i
  call void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.py = call noundef nonnull align 8 dereferenceable(344) ptr @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(344) %50) ; 0 uses
  %i.pz = load i8, ptr %i.es, align 8, !tbaa !25, !range !49, !noundef !52
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.co, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39

bb.co:                                            ; preds = %_ZN8lldb_dapL45ConvertSBInstructionToDisassembledInstructionERNS_3DAPERN4lldb13SBInstructionEb.exit
  store i8 0, ptr %i.es, align 8, !tbaa !25
  %i.qb = load i8, ptr %i.hf, align 8, !tbaa !50, !range !49, !noundef !52
  %i.qc = trunc nuw i8 %i.qb to i1
  store i8 0, ptr %i.hf, align 8, !tbaa !50
  br i1 %i.qc, label %bb.cp, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78

bb.cp:                                            ; preds = %bb.co
  %i.qd = load i8, ptr %i.hh, align 8, !tbaa !53, !range !49, !noundef !52
  %i.qe = trunc nuw i8 %i.qd to i1
  store i8 0, ptr %i.hh, align 8, !tbaa !53
  br i1 %i.qe, label %bb.cq, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78

bb.cq:                                            ; preds = %bb.cp
  %i.qf = load ptr, ptr %i.hl, align 8, !tbaa !55 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.hn
  br i1 %i.qg, label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84: ; preds = %bb.cq
  %i.qh = load i64, ptr %i.hn, align 8, !tbaa !24
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #18
  br label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i85

_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i85: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84
  %i.qj = load ptr, ptr %i.hc, align 8, !tbaa !55 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.hi
  br i1 %i.qk, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i86: ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i85
  %i.ql = load i64, ptr %i.hi, align 8, !tbaa !24
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78

_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78: ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i86, %bb.cp, %bb.co
  %i.qn = load i8, ptr %i.gw, align 8, !tbaa !13, !range !49, !noundef !52
  %i.qo = trunc nuw i8 %i.qn to i1
  store i8 0, ptr %i.gw, align 8, !tbaa !13
  br i1 %i.qo, label %bb.cr, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79

bb.cr:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78
  %i.qp = load ptr, ptr %i.gt, align 8, !tbaa !55 ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.gx
  br i1 %i.qq, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82: ; preds = %bb.cr
  %i.qr = load i64, ptr %i.gx, align 8, !tbaa !24
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i82, %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i78
  %i.qt = load i8, ptr %i.gp, align 8, !tbaa !13, !range !49, !noundef !52
  %i.qu = trunc nuw i8 %i.qt to i1
  store i8 0, ptr %i.gp, align 8, !tbaa !13
  br i1 %i.qu, label %bb.cs, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39

bb.cs:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79
  %i.qv = load ptr, ptr %i.gn, align 8, !tbaa !55 ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.gq
  br i1 %i.qw, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i80: ; preds = %bb.cs
  %i.qx = load i64, ptr %i.gq, align 8, !tbaa !24
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39

_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i80, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i79, %_ZN8lldb_dapL45ConvertSBInstructionToDisassembledInstructionERNS_3DAPERN4lldb13SBInstructionEb.exit
  %i.qz = load i8, ptr %i.er, align 8, !tbaa !13, !range !49, !noundef !52
  %i.ra = trunc nuw i8 %i.qz to i1
  store i8 0, ptr %i.er, align 8, !tbaa !13
  br i1 %i.ra, label %bb.ct, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40

bb.ct:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39
  %i.rb = load ptr, ptr %i.gh, align 8, !tbaa !55 ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.hs
  br i1 %i.rc, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46: ; preds = %bb.ct
  %i.rd = load i64, ptr %i.hs, align 8, !tbaa !24
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i46, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i39
  %i.rf = load ptr, ptr %i.eo, align 8, !tbaa !55 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.ep
  br i1 %i.rg, label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41: ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40
  %i.rh = load i64, ptr %i.ep, align 8, !tbaa !24
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #18
  br label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i42

_ZN8lldb_dap8protocol6StringD2Ev.exit.i42:        ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41
  %i.rj = load i8, ptr %i.en, align 8, !tbaa !13, !range !49, !noundef !52
  %i.rk = trunc nuw i8 %i.rj to i1
  store i8 0, ptr %i.en, align 8, !tbaa !13
  br i1 %i.rk, label %bb.cu, label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48

bb.cu:                                            ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i42
  %i.rl = load ptr, ptr %i.fk, align 8, !tbaa !55 ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.fl
  br i1 %i.rm, label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i43: ; preds = %bb.cu
  %i.rn = load i64, ptr %i.fl, align 8, !tbaa !24
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #18
  br label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48

_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit48: ; preds = %bb.cu, %_ZN8lldb_dap8protocol6StringD2Ev.exit.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  call void @_ZN4lldb13SBInstructionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %48) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  %i.rp = add nuw i64 %.0135, 1                   ; 2 uses
  %i.rq = call noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #16
  %i.rr = icmp ult i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.ac, label %._crit_edge, !llvm.loop !129

bb.cv:                                            ; preds = %._crit_edge
  %i.rs = sub nsw i64 0, %i.ct                    ; 2 uses
  %i.rt = icmp ult i64 %.0.lcssa, %i.rs
  br i1 %i.rt, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  %i.ru = sub nuw nsw i64 %i.rs, %.0.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #16
  %i.rv = getelementptr inbounds nuw i8, ptr %52, i64 40
  store i8 0, ptr %i.rv, align 8, !tbaa !13, !alias.scope !130
  %i.rw = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.rx = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 2 uses
  store ptr %i.rx, ptr %i.rw, align 8, !tbaa !18, !alias.scope !130
  %i.ry = getelementptr inbounds nuw i8, ptr %52, i64 56
  store i64 0, ptr %i.ry, align 8, !tbaa !22, !alias.scope !130
  store i8 0, ptr %i.rx, align 8, !tbaa !24, !alias.scope !130
  %i.rz = getelementptr inbounds nuw i8, ptr %52, i64 112
  store i8 0, ptr %i.rz, align 8, !tbaa !13, !alias.scope !130
  %i.sa = getelementptr inbounds nuw i8, ptr %52, i64 296
  store i8 0, ptr %i.sa, align 8, !tbaa !25, !alias.scope !130
  %i.sb = getelementptr inbounds nuw i8, ptr %52, i64 308
  store i8 0, ptr %i.sb, align 4, !tbaa !27, !alias.scope !130
  %i.sc = getelementptr inbounds nuw i8, ptr %52, i64 316
  store i8 0, ptr %i.sc, align 4, !tbaa !27, !alias.scope !130
  %i.sd = getelementptr inbounds nuw i8, ptr %52, i64 324
  store i8 0, ptr %i.sd, align 4, !tbaa !27, !alias.scope !130
  %i.se = getelementptr inbounds nuw i8, ptr %52, i64 332
  store i8 0, ptr %i.se, align 4, !tbaa !27, !alias.scope !130
  store i64 -1, ptr %52, align 8, !tbaa !29, !alias.scope !130
  %i.sf = getelementptr inbounds nuw i8, ptr %52, i64 336
  store i64 4294967297, ptr %i.sf, align 8, !alias.scope !130
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #16
  call void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef %i.ru, ptr noundef nonnull align 8 dereferenceable(344) %52, ptr noundef nonnull align 1 dereferenceable(1) %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %52) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  %i.sg = load ptr, ptr %47, align 8, !tbaa !133
  %i.sh = load ptr, ptr %51, align 8, !tbaa !133
  %i.si = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !133
  call void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr %i.sg, ptr %i.sh, ptr %i.sj)
  %i.sk = load ptr, ptr %47, align 8, !tbaa !133
  %i.sl = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !59
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = ptrtoint ptr %i.sk to i64
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = sdiv exact i64 %i.sp, 344
  %i.sr = load i32, ptr %i.eb, align 8, !tbaa !12
  %i.ss = zext i32 %i.sr to i64                   ; 2 uses
  %i.st = icmp ugt i64 %i.sq, %i.ss
  br i1 %i.st, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %i.ss)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %51) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cv, %bb.cy, %._crit_edge
  %i.su = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !59 ; 2 uses
  %i.sw = load ptr, ptr %47, align 8, !tbaa !56   ; 2 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = sub i64 %i.sx, %i.sy
  %i.ta = sdiv exact i64 %i.sz, 344
  %i.tb = load i32, ptr %i.eb, align 8, !tbaa !12
  %i.tc = zext i32 %i.tb to i64
  %i.td = icmp ult i64 %i.ta, %i.tc
  br i1 %i.td, label %.lr.ph137, label %_ZN8lldb_dap8protocol23DisassembleResponseBodyD2Ev.exit60

.lr.ph137:                                        ; preds = %bb.cz
  %i.te = getelementptr inbounds nuw i8, ptr %54, i64 40 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %54, i64 48 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %54, i64 64 ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %54, i64 56
  %i.ti = getelementptr inbounds nuw i8, ptr %54, i64 112 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %54, i64 296 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %54, i64 308
  %i.tl = getelementptr inbounds nuw i8, ptr %54, i64 316
  %i.tm = getelementptr inbounds nuw i8, ptr %54, i64 324
  %i.tn = getelementptr inbounds nuw i8, ptr %54, i64 332
  %i.to = getelementptr inbounds nuw i8, ptr %54, i64 336
  %i.tp = getelementptr inbounds nuw i8, ptr %54, i64 120
  %i.tq = getelementptr inbounds nuw i8, ptr %54, i64 216
  %i.tr = getelementptr inbounds nuw i8, ptr %54, i64 288 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %54, i64 280 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %54, i64 248
  %i.tu = getelementptr inbounds nuw i8, ptr %54, i64 264 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %54, i64 232 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %54, i64 192 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %54, i64 160
  %i.ty = getelementptr inbounds nuw i8, ptr %54, i64 176 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %54, i64 152 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %54, i64 136 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %54, i64 80
  %i.uc = getelementptr inbounds nuw i8, ptr %54, i64 96 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.ue = getelementptr inbounds nuw i8, ptr %54, i64 24 ; 2 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph137, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #16
  store i8 0, ptr %i.te, align 8, !tbaa !13, !alias.scope !134
  store ptr %i.tg, ptr %i.tf, align 8, !tbaa !18, !alias.scope !134
  store i64 0, ptr %i.th, align 8, !tbaa !22, !alias.scope !134
  store i8 0, ptr %i.tg, align 8, !tbaa !24, !alias.scope !134
  store i8 0, ptr %i.ti, align 8, !tbaa !13, !alias.scope !134
  store i8 0, ptr %i.tj, align 8, !tbaa !25, !alias.scope !134
  store i8 0, ptr %i.tk, align 4, !tbaa !27, !alias.scope !134
  store i8 0, ptr %i.tl, align 4, !tbaa !27, !alias.scope !134
  store i8 0, ptr %i.tm, align 4, !tbaa !27, !alias.scope !134
  store i8 0, ptr %i.tn, align 4, !tbaa !27, !alias.scope !134
  store i64 -1, ptr %54, align 8, !tbaa !29, !alias.scope !134
  store i64 4294967297, ptr %i.to, align 8, !alias.scope !134
  %i.uf = call noundef nonnull align 8 dereferenceable(344) ptr @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(344) %54) ; 0 uses
  %i.ug = load i8, ptr %i.tj, align 8, !tbaa !25, !range !49, !noundef !52
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %bb.db, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49

bb.db:                                            ; preds = %bb.da
  store i8 0, ptr %i.tj, align 8, !tbaa !25
  %i.ui = load i8, ptr %i.tr, align 8, !tbaa !50, !range !49, !noundef !52
  %i.uj = trunc nuw i8 %i.ui to i1
  store i8 0, ptr %i.tr, align 8, !tbaa !50
  br i1 %i.uj, label %bb.dc, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90

bb.dc:                                            ; preds = %bb.db
  %i.uk = load i8, ptr %i.ts, align 8, !tbaa !53, !range !49, !noundef !52
  %i.ul = trunc nuw i8 %i.uk to i1
  store i8 0, ptr %i.ts, align 8, !tbaa !53
  br i1 %i.ul, label %bb.dd, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90

bb.dd:                                            ; preds = %bb.dc
  %i.um = load ptr, ptr %i.tt, align 8, !tbaa !55 ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.tu
  br i1 %i.un, label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i96: ; preds = %bb.dd
  %i.uo = load i64, ptr %i.tu, align 8, !tbaa !24
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #18
  br label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i97

_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i97: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i96
  %i.uq = load ptr, ptr %i.tq, align 8, !tbaa !55 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.tv
  br i1 %i.ur, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i98: ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i97
  %i.us = load i64, ptr %i.tv, align 8, !tbaa !24
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90

_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90: ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i98, %bb.dc, %bb.db
  %i.uu = load i8, ptr %i.tw, align 8, !tbaa !13, !range !49, !noundef !52
  %i.uv = trunc nuw i8 %i.uu to i1
  store i8 0, ptr %i.tw, align 8, !tbaa !13
  br i1 %i.uv, label %bb.de, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91

bb.de:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90
  %i.uw = load ptr, ptr %i.tx, align 8, !tbaa !55 ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.ty
  br i1 %i.ux, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i94: ; preds = %bb.de
  %i.uy = load i64, ptr %i.ty, align 8, !tbaa !24
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i94, %_ZNSt14_Optional_baseIN8lldb_dap8protocol14SourceLLDBDataELb0ELb0EED2Ev.exit.i.i90
  %i.va = load i8, ptr %i.tz, align 8, !tbaa !13, !range !49, !noundef !52
  %i.vb = trunc nuw i8 %i.va to i1
  store i8 0, ptr %i.tz, align 8, !tbaa !13
  br i1 %i.vb, label %bb.df, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49

bb.df:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91
  %i.vc = load ptr, ptr %i.tp, align 8, !tbaa !55 ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.ua
  br i1 %i.vd, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i92: ; preds = %bb.df
  %i.ve = load i64, ptr %i.ua, align 8, !tbaa !24
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vc, i64 noundef %i.vf) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49

_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i.i92, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i.i91, %bb.da
  %i.vg = load i8, ptr %i.ti, align 8, !tbaa !13, !range !49, !noundef !52
  %i.vh = trunc nuw i8 %i.vg to i1
  store i8 0, ptr %i.ti, align 8, !tbaa !13
  br i1 %i.vh, label %bb.dg, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50

bb.dg:                                            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49
  %i.vi = load ptr, ptr %i.ub, align 8, !tbaa !55 ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.uc
  br i1 %i.vj, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56: ; preds = %bb.dg
  %i.vk = load i64, ptr %i.uc, align 8, !tbaa !24
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit.i49
  %i.vm = load ptr, ptr %i.tf, align 8, !tbaa !55 ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.tg
  br i1 %i.vn, label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51: ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50
  %i.vo = load i64, ptr %i.tg, align 8, !tbaa !24
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #18
  br label %_ZN8lldb_dap8protocol6StringD2Ev.exit.i52

_ZN8lldb_dap8protocol6StringD2Ev.exit.i52:        ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
  %i.vq = load i8, ptr %i.te, align 8, !tbaa !13, !range !49, !noundef !52
  %i.vr = trunc nuw i8 %i.vq to i1
  store i8 0, ptr %i.te, align 8, !tbaa !13
  br i1 %i.vr, label %bb.dh, label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58

bb.dh:                                            ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit.i52
  %i.vs = load ptr, ptr %i.ud, align 8, !tbaa !55 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.ue
  br i1 %i.vt, label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i53: ; preds = %bb.dh
  %i.vu = load i64, ptr %i.ue, align 8, !tbaa !24
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #18
  br label %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58

_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58: ; preds = %bb.dh, %_ZN8lldb_dap8protocol6StringD2Ev.exit.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #16
  %i.vw = load ptr, ptr %i.su, align 8, !tbaa !59 ; 2 uses
  %i.vx = load ptr, ptr %47, align 8, !tbaa !56   ; 2 uses
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = sub i64 %i.vy, %i.vz
  %i.wb = sdiv exact i64 %i.wa, 344
  %i.wc = load i32, ptr %i.eb, align 8, !tbaa !12
  %i.wd = zext i32 %i.wc to i64
  %i.we = icmp ult i64 %i.wb, %i.wd
  br i1 %i.we, label %bb.da, label %_ZN8lldb_dap8protocol23DisassembleResponseBodyD2Ev.exit60, !llvm.loop !137

_ZN8lldb_dap8protocol23DisassembleResponseBodyD2Ev.exit60: ; preds = %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58, %bb.cz
  %.lcssa126 = phi ptr [ %i.sv, %bb.cz ], [ %i.vw, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58 ]
  %.lcssa125 = phi ptr [ %i.sw, %bb.cz ], [ %i.vx, %_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev.exit58 ]
  %i.wf = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 8
  %i.wj = and i8 %i.wi, -2
  store i8 %i.wj, ptr %i.wh, align 8
  store ptr %.lcssa125, ptr %0, align 8, !tbaa !56
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa126, ptr %i.wk, align 8, !tbaa !59
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.wg, ptr %i.wl, align 8, !tbaa !60
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8lldb_dap8protocol23DisassembledInstructionEEEvT_S6_(ptr noundef null, ptr noundef null)
  %i.wm = load ptr, ptr %47, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit62, label %bb.di

bb.di:                                            ; preds = %_ZN8lldb_dap8protocol23DisassembleResponseBodyD2Ev.exit60
  %i.wn = load ptr, ptr %i.wf, align 8, !tbaa !60
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wm to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %i.wm, i64 noundef %i.wq) #18
  br label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit62

_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit62: ; preds = %_ZN8lldb_dap8protocol23DisassembleResponseBodyD2Ev.exit60, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #16
  br label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit62, %_ZN4llvm5ErrorD2Ev.exit33
  call void @_ZN4lldb17SBInstructionListD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %45) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZN4llvm5ErrorD2Ev.exit32
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(344) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 26812128014112720
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE18_M_fill_initializeEmRKS2_.exit

_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 344
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #17 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw [344 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !60
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit ]
  tail call void @_ZN8lldb_dap8protocol23DisassembledInstructionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(344) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(344) %2)
  %i.h = add i64 %.068.i.i.i.i.i, -1              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 344 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE18_M_fill_initializeEmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !47

_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE18_M_fill_initializeEmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit.thread
  %i.j = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8lldb_dap8protocol23DisassembledInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25, !range !49, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt22_Optional_payload_baseIN8lldb_dap8protocol6SourceEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %i.d) #16
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !13, !range !49, !noundef !52
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !13
  br i1 %i.g, label %bb.c, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.j, align 8, !tbaa !24
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit: ; preds = %bb.c, %_ZNSt14_Optional_baseIN8lldb_dap8protocol6SourceELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN8lldb_dap8protocol6StringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZN8lldb_dap8protocol6StringD2Ev.exit

_ZN8lldb_dap8protocol6StringD2Ev.exit:            ; preds = %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13, !range !49, !noundef !52
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !13
  br i1 %i.v, label %bb.d, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit3

bb.d:                                             ; preds = %_ZN8lldb_dap8protocol6StringD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !24
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit3

_ZNSt14_Optional_baseIN8lldb_dap8protocol6StringELb0ELb0EED2Ev.exit3: ; preds = %bb.d, %_ZN8lldb_dap8protocol6StringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8lldb_dap8protocol23DisassembledInstructionEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
  %i.d = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4lldb9SBAddressC1EmRNS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4lldb9SBAddress7IsValidEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4lldb8SBTargetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZN4lldb9SBAddressC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4lldb9SBAddressD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4lldb8SBTargetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZN4lldb8SBTarget16ReadInstructionsENS_9SBAddressEj(ptr dead_on_unwind writable sret(%"class.lldb::SBInstructionList") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr nofree noundef align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4lldb17SBInstructionList7IsValidEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef i64 @_ZN4lldb17SBInstructionList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4lldb17SBInstructionList21GetInstructionAtIndexEj(ptr dead_on_unwind writable sret(%"class.lldb::SBInstruction") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4lldbeqERKNS_9SBAddressES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4lldb13SBInstruction10GetAddressEv(ptr dead_on_unwind writable sret(%"class.lldb::SBAddress") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4lldb13SBInstructionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 344                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [344 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_erase_at_endEPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8lldb_dap8protocol23DisassembledInstructionEEEvT_S6_(ptr noundef %i.k, ptr noundef %i.b)
  store ptr %i.k, ptr %i.a, align 8, !tbaa !59
  br label %_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN8lldb_dap8protocol23DisassembledInstructionESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4lldb17SBInstructionListD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

end_hunk_1
