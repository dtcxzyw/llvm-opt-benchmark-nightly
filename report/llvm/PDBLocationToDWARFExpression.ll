Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDBLocationToDWARFExpression?download=true
begin_hunk_0_@_Z35ConvertPDBLocationToDWARFExpressionSt10shared_ptrIN12lldb_private6ModuleEERKN4llvm3pdb13PDBSymbolDataERKNS0_11RangeVectorImmLj0EEERb:bb.a
  %i.bl = icmp eq i16 %i.bk, 30006
  br i1 %i.bl, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !51
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !16, !noalias !51
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !51
  call void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.115") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #9, !noalias !51, !inline_history !54
  %i.br = load ptr, ptr %5, align 8, !tbaa !55, !noalias !51 ; 3 uses
  %.not19.i = icmp eq ptr %i.br, null
  br i1 %.not19.i, label %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit.thread, label %bb.s

_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit.thread: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !51
  br label %.thread99

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !51
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16, !noalias !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !51
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.97") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.br) #9, !noalias !51, !inline_history !54
  %i.bv = load ptr, ptr %6, align 8, !tbaa !57, !noalias !51 ; 2 uses
  %.not2022.i = icmp eq ptr %i.bv, null
  br i1 %.not2022.i, label %._crit_edge.i, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i, %.lr.ph23.i
  %.sroa.077.0 = phi ptr [ null, %.lr.ph23.i ], [ %.sroa.077.2, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i ] ; 3 uses
  %i.bx = phi ptr [ null, %.lr.ph23.i ], [ %i.dc, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i ] ; 6 uses
  %i.by = phi ptr [ %i.bv, %.lr.ph23.i ], [ %i.dh, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i ] ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !16, !noalias !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !51
  %i.cc = call noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #9, !noalias !51, !inline_history !54 ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !57, !noalias !51 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16, !noalias !51
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !51
  %i.ch = call noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) #9, !noalias !51, !inline_history !54
  %i.ci = load i32, ptr %i.bw, align 8, !tbaa !59, !noalias !51 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.not24.i = icmp eq i32 %i.ci, 0
  br i1 %.not24.i, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ck = zext i32 %i.ch to i64
  %i.cl = load ptr, ptr %3, align 8, !noalias !51 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  %i.cm = add i64 %i.cc, %i.ck
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.u
  %.01021.i = phi i64 [ %i.cx, %bb.u ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.01021.i ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !61, !noalias !51 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !63, !noalias !51
  %i.cr = add i64 %i.cq, %i.co
  %.sroa.speculated7.i.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cc)
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cr)
  %i.cs = icmp ugt i64 %.sroa.speculated.i.i.i, %.sroa.speculated7.i.i.i
  br i1 %i.cs, label %.critedge.i, label %bb.u

.critedge.i:                                      ; preds = %.lr.ph.split.i
  %i.ct = load ptr, ptr %6, align 8, !tbaa !57, !noalias !51 ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !57, !noalias !51
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i.i.i.i: ; preds = %.critedge.i
  %i.cu = load ptr, ptr %i.bx, align 8, !tbaa !16, !noalias !51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !51
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.bx) #9, !noalias !51, !inline_history !64
  br label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.cx = add nuw nsw i64 %.01021.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, %i.cj
  br i1 %exitcond.not.i, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i, label %.lr.ph.split.i, !llvm.loop !65

_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %bb.u, %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i, %bb.t
  %.sroa.077.1 = phi ptr [ %.sroa.077.0, %bb.t ], [ %.sroa.077.0, %.lr.ph.i ], [ %i.ct, %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i.i.i.i ], [ %.sroa.077.0, %bb.u ] ; 2 uses
  %i.cy = phi ptr [ %i.bx, %bb.t ], [ %i.bx, %.lr.ph.i ], [ %i.ct, %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i.i.i.i ], [ %i.bx, %bb.u ] ; 2 uses
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !57, !noalias !51 ; 3 uses
  %.not.i.i65 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i65, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i
  %i.cz = load ptr, ptr %.pr.i, align 8, !tbaa !16, !noalias !51
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !51
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i) #9, !noalias !51, !inline_history !67
  br label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i, %.critedge.i
  %.sroa.077.2 = phi ptr [ %.sroa.077.1, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.077.1, %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %i.dc = phi ptr [ %i.cy, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.cy, %_ZNKSt14default_deleteIN4llvm3pdb13IPDBFrameDataEEclEPS2_.exit.i.i ], [ %i.ct, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9, !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !51
  %i.dd = load ptr, ptr %5, align 8, !tbaa !55, !noalias !51 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !16, !noalias !51
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !51
  call void %i.dg(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.97") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #9, !noalias !51, !inline_history !54
  %i.dh = load ptr, ptr %6, align 8, !tbaa !57, !noalias !51 ; 2 uses
  %.not20.i = icmp eq ptr %i.dh, null
  br i1 %.not20.i, label %._crit_edge.i, label %bb.t

._crit_edge.i:                                    ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i, %bb.s
  %.sroa.077.3 = phi ptr [ null, %bb.s ], [ %.sroa.077.2, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9, !noalias !51
  %.pr16.i = load ptr, ptr %5, align 8, !tbaa !55, !noalias !51 ; 3 uses
  %.not.i12.i = icmp eq ptr %.pr16.i, null
  br i1 %.not.i12.i, label %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit, label %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_13IPDBFrameDataEEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_13IPDBFrameDataEEEEclEPS4_.exit.i.i: ; preds = %._crit_edge.i
  %i.di = load ptr, ptr %.pr16.i, align 8, !tbaa !16, !noalias !51
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !51
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %.pr16.i) #9, !noalias !51, !inline_history !68
  br label %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit

_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit: ; preds = %._crit_edge.i, %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_13IPDBFrameDataEEEEclEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !51
  %.not112 = icmp eq ptr %.sroa.077.3, null
  br i1 %.not112, label %.thread99, label %bb.v

bb.v:                                             ; preds = %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.dl = load ptr, ptr %.sroa.077.3, align 8, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.077.3) #9
  %i.do = load ptr, ptr %9, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !73
  %i.dr = call noundef zeroext i1 @_ZN12lldb_private4npdb36TranslateFPOProgramToDWARFExpressionEN4llvm9StringRefES2_NS1_6Triple8ArchTypeERNS_6StreamE(ptr %i.do, i64 %i.dq, ptr nonnull @.str, i64 3, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(88) %7) #9
  %i.ds = load ptr, ptr %9, align 8, !tbaa !69    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !44
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br i1 %i.dr, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.thread93

_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.thread93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = load ptr, ptr %.sroa.077.3, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.077.3) #9, !inline_history !74
  br label %.thread99

_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 704
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #9, !inline_history !75
  %i.ef = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext 17) #9 ; 0 uses
  %i.eg = sext i32 %i.ee to i64
  %i.eh = call noundef i64 @_ZN12lldb_private6Stream10PutSLEB128El(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.eg) #9 ; 0 uses
  %i.ei = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext 34) #9 ; 0 uses
  store i8 0, ptr %4, align 1, !tbaa !8
  %i.ej = load ptr, ptr %.sroa.077.3, align 8, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.077.3) #9, !inline_history !74
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.q
  %i.em = call noundef i32 @_ZN12lldb_private4npdb21GetLLDBRegisterNumberEN4llvm6Triple8ArchTypeENS1_8codeview10RegisterIdE(i32 noundef %i.c, i16 noundef zeroext %i.bk) #9 ; 4 uses
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = icmp ugt i32 %i.em, 31
  br i1 %i.eo, label %bb.y, label %.thread99

bb.y:                                             ; preds = %bb.x
  %i.ep = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext -110) #9 ; 0 uses
  %i.eq = zext i32 %i.em to i64
  %i.er = call noundef i64 @_ZN12lldb_private6Stream10PutULEB128Em(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.eq) #9 ; 0 uses
  br label %bb.z

.thread99:                                        ; preds = %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit, %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit.thread, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.thread93, %bb.x
  %.154104 = phi i32 [ 4, %bb.x ], [ 2, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.thread93 ], [ 2, %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit.thread ], [ 2, %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit ]
  %.057102 = phi i32 [ %i.em, %bb.x ], [ 2, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit.thread93 ], [ 2, %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit.thread ], [ 2, %_ZL25GetCorrespondingFrameDataRKN4llvm3pdb11IPDBSessionERKN12lldb_private11RangeVectorImmLj0EEE.exit ]
  %i.es = trunc nuw nsw i32 %.057102 to i8
  %i.et = add nuw i8 %i.es, 112
  %i.eu = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext %i.et) #9 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.thread99, %bb.y
  %.154103 = phi i32 [ %.154104, %.thread99 ], [ 4, %bb.y ]
  %i.ev = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 704
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) #9, !inline_history !75
  %i.fa = sext i32 %i.ez to i64
  %i.fb = call noundef i64 @_ZN12lldb_private6Stream10PutSLEB128El(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.fa) #9 ; 0 uses
  store i8 0, ptr %4, align 1, !tbaa !8
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.w
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) #9
  br label %bb.aq

bb.ab:                                            ; preds = %bb.e
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 432
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef zeroext i16 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) #9, !inline_history !47
  %i.fh = call noundef i32 @_ZN12lldb_private4npdb21GetLLDBRegisterNumberEN4llvm6Triple8ArchTypeENS1_8codeview10RegisterIdE(i32 noundef %i.c, i16 noundef zeroext %i.fg) #9 ; 4 uses
  %.not = icmp eq i32 %i.fh, -1
  br i1 %.not, label %.thread110, label %bb.ac

.thread110:                                       ; preds = %bb.ab
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) #9
  br label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.fi = icmp ugt i32 %i.fh, 31
  br i1 %i.fi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fj = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext -112) #9 ; 0 uses
  %i.fk = zext i32 %i.fh to i64
  %i.fl = call noundef i64 @_ZN12lldb_private6Stream10PutULEB128Em(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 noundef %i.fk) #9 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fm = trunc nuw nsw i32 %i.fh to i8
  %i.fn = add nuw nsw i8 %i.fm, 80
  %i.fo = call noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 noundef zeroext %i.fn) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  store i8 0, ptr %4, align 1, !tbaa !8
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !23, !noalias !76 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !16, !noalias !76
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 640
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !76
  call void %i.fs(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::pdb::Variant") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.fp) #9, !inline_history !79
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fu = call noundef i64 @_ZN12lldb_private6Stream11PutRawBytesEPKvmN4lldb9ByteOrderES4_(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull %i.ft, i64 noundef 8, i32 noundef 4, i32 noundef 0) #9 ; 0 uses
  %i.fv = load i32, ptr %10, align 8, !tbaa !80
  %i.fw = icmp eq i32 %i.fv, 13
  br i1 %i.fw, label %bb.ah, label %_ZN4llvm3pdb7VariantD2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !44 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN4llvm3pdb7VariantD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #10
  br label %_ZN4llvm3pdb7VariantD2Ev.exit

_ZN4llvm3pdb7VariantD2Ev.exit:                    ; preds = %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.e
  call void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) #9
  br label %bb.aq

_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit, %bb.z, %_ZN4llvm3pdb7VariantD2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.af
  %.356 = phi i32 [ 1, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZN4llvm3pdb7VariantD2Ev.exit ], [ 4, %bb.af ], [ 4, %_ZNSt10unique_ptrIN4llvm3pdb13IPDBFrameDataESt14default_deleteIS2_EED2Ev.exit ], [ %.154103, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ga = load i64, ptr %i.j, align 8, !tbaa !21
  %i.gb = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11, !noalias !83 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 1, ptr %i.gc, align 8, !tbaa !40, !noalias !88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 1, ptr %i.gd, align 4, !tbaa !42, !noalias !88
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14DataBufferHeapESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gb, align 8, !tbaa !16, !noalias !88
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  call void @_ZN12lldb_private14DataBufferHeapC1EPKvm(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef %i.fz, i64 noundef %i.ga) #9, !noalias !88
  store ptr %i.ge, ptr %11, align 8, !tbaa !89
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.gb, ptr %i.gf, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @_ZN12lldb_private13DataExtractorC1ERKSt10shared_ptrINS_10DataBufferEEN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.d, i32 noundef %i.e) #9
  call void @_ZN12lldb_private15DWARFExpressionC1ERKNS_13DataExtractorE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(48) %12) #9
  call void @_ZN12lldb_private15DWARFExpression15SetRegisterKindEN4lldb12RegisterKindE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %.356) #9
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !39 ; 8 uses
  %.not.i.i71 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i71, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gi = load atomic i64, ptr %i.gh acquire, align 8 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 4294967297
  %i.gk = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %i.gj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.gh, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 0, ptr %i.gl, align 4, !tbaa !42
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #9, !inline_history !92
  %i.gp = load ptr, ptr %i.gg, align 8, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #9, !inline_history !92
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i72 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i72, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = add nsw i32 %i.gk, -1
  store i32 %i.gt, ptr %i.gh, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

bb.ao:                                            ; preds = %bb.am
  %i.gu = atomicrmw volatile add ptr %i.gh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i74 = phi i32 [ %i.gk, %bb.an ], [ %i.gu, %bb.ao ]
  %i.gv = icmp eq i32 %.0.i.i.i.i74, 1
  br i1 %i.gv, label %bb.ap, label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #9
  br label %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.aq

bb.aq:                                            ; preds = %.thread110, %bb.aa, %.critedge, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12lldb_private12StreamBufferILj32EEE, i64 16), ptr %7, align 8, !tbaa !16
  %i.gw = load ptr, ptr %i.h, align 8, !tbaa !18  ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.i
  br i1 %i.gx, label %_ZN12lldb_private12StreamBufferILj32EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef %i.gw) #9, !inline_history !93
  br label %_ZN12lldb_private12StreamBufferILj32EED2Ev.exit

_ZN12lldb_private12StreamBufferILj32EED2Ev.exit:  ; preds = %bb.aq, %bb.ar
  call void @_ZN12lldb_private6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(144) %7) #9, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.d, %_ZN12lldb_private12StreamBufferILj32EED2Ev.exit, %bb.b
  ret void
}

declare void @_ZN12lldb_private15DWARFExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZNK12lldb_private6Module15GetArchitectureEv(ptr noundef nonnull align 8 dereferenceable(952)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private8ArchSpec12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream7PutHex8Eh(ptr noundef nonnull align 8 dereferenceable(88), i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK12lldb_private11SectionList15FindSectionByIDEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.86") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream11PutMaxHex64EmmN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK12lldb_private7Section14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(153)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i64 @_ZN12lldb_private6Stream10PutSLEB128El(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN12lldb_private4npdb21GetLLDBRegisterNumberEN4llvm6Triple8ArchTypeENS1_8codeview10RegisterIdE(i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream10PutULEB128Em(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef) local_unnamed_addr #1
end_hunk_0
