inline.NumInlined: 3028
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
    i8 1, label %bb.x
    i8 2, label %bb.ad
    i8 4, label %bb.aj
    i8 10, label %bb.ap
    i8 5, label %bb.av
    i8 6, label %bb.bb
    i8 7, label %bb.bh
    i8 8, label %bb.bm
    i8 9, label %bb.br
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !239, !noalias !338 ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !242, !noalias !338 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26, !noalias !338
  %i.ar = trunc i64 %i.aq to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26, !noalias !342
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ar, ptr noundef %5), !noalias !342
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.as = load ptr, ptr %41, align 8, !tbaa !83, !noalias !346 ; 6 uses
  store ptr %i.as, ptr %42, align 8, !tbaa !347, !alias.scope !350, !noalias !338
  %i.at = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !139, !noalias !346 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !139, !alias.scope !350, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26, !noalias !342
  %i.aw = load ptr, ptr %3, align 8, !tbaa !245, !noalias !338
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !254, !noalias !338
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE0EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i ] ; 8 uses
  %i.bb = lshr i64 %indvars.iv.i.i, 6
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !88, !noalias !338
  %i.be = and i64 %indvars.iv.i.i, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %i.bd
  %.not.i.i.i30 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i30, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bh = load i32, ptr %i.az, align 8, !tbaa !351, !noalias !338
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.as, i32 noundef %i.bh, i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !338

.noexc.i.i:                                       ; preds = %bb.n
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !245, !noalias !338 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !284, !noalias !338
  %i.bl = and i8 %i.bk, 2
  %.not.i3.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i3.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit.i.i.i, label %bb.o, !prof !285

bb.o:                                             ; preds = %.noexc.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.i.i, !noalias !338

.noexc18.i.i:                                     ; preds = %bb.o
  unreachable

_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit.i.i.i: ; preds = %.noexc.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !254, !noalias !338
  %i.bo = lshr i64 %indvars.iv.i.i, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !102, !noalias !338
  %i.br = and i64 %indvars.iv.i.i, 7
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !102, !noalias !338
  %i.bu = and i8 %i.bt, %i.bq
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !102, !noalias !338
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bv = load ptr, ptr %2, align 8, !tbaa !242, !noalias !338
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !287, !noalias !338
  %i.bz = load ptr, ptr %4, align 8, !tbaa !81, !noalias !338
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !88, !noalias !338
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %.0.copyload.i.i.i = load i8, ptr %i.cc, align 1, !noalias !338
  %i.cd = trunc i8 %.0.copyload.i.i.i to i1
  %i.ce = trunc nuw nsw i64 %indvars.iv.i.i to i32
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.as, i32 noundef %i.ce, i1 noundef zeroext %i.cd)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i unwind label %.loopexit.i.i, !noalias !338

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i: ; preds = %bb.p, %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit.i.i.i
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aq
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE0EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i.i, !llvm.loop !352

.loopexit.i.i:                                    ; preds = %bb.p, %bb.n
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i.i:                           ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #26, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !338
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE0EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIbEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i, %bb.m
  store ptr %i.as, ptr %0, align 8, !tbaa !83, !alias.scope !338
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.cf, align 8, !tbaa !139, !alias.scope !338
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !338
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.r:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !239, !noalias !356 ; 2 uses
  %i.ci = load ptr, ptr %2, align 8, !tbaa !242, !noalias !356 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26, !noalias !356
  %i.cn = trunc i64 %i.cm to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26, !noalias !360
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.cn, ptr noundef %5), !noalias !360
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.co = load ptr, ptr %39, align 8, !tbaa !83, !noalias !364 ; 8 uses
  store ptr %i.co, ptr %40, align 8, !tbaa !365, !alias.scope !368, !noalias !356
  %i.cp = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !139, !noalias !364 ; 2 uses
  store ptr %i.cr, ptr %i.cp, align 8, !tbaa !139, !alias.scope !368, !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26, !noalias !360
  %i.cs = load ptr, ptr %3, align 8, !tbaa !245, !noalias !356
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !254, !noalias !356
  %.not.i2.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not.i2.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE3EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i3.i.preheader

.lr.ph.i3.i.preheader:                            ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 128 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  br label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.lr.ph.i3.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i4.i = phi i64 [ %indvars.iv.next.i6.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i3.i.preheader ] ; 10 uses
  %i.cy = lshr i64 %indvars.iv.i4.i, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !88, !noalias !356
  %i.db = and i64 %indvars.iv.i4.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not.i.i5.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i5.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i3.i
  %i.de = load i32, ptr %i.cx, align 8, !tbaa !351, !noalias !356
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.co, i32 noundef %i.de, i1 noundef zeroext true)
          to label %.noexc121 unwind label %.loopexit

.noexc121:                                        ; preds = %bb.s
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !245, !noalias !356 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !284, !noalias !356
  %i.di = and i8 %i.dh, 2
  %.not.i3.i.i120 = icmp eq i8 %i.di, 0
  br i1 %.not.i3.i.i120, label %_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit.i, label %.invoke, !prof !285

.invoke:                                          ; preds = %.noexc124, %.noexc121
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit.i: ; preds = %.noexc121
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !254, !noalias !356
  %i.dl = lshr i64 %indvars.iv.i4.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !102, !noalias !356
  %i.do = and i64 %indvars.iv.i4.i, 7
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !102, !noalias !356
  %i.dr = and i8 %i.dq, %i.dn
  store i8 %i.dr, ptr %i.dm, align 1, !tbaa !102, !noalias !356
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.t:                                             ; preds = %.lr.ph.i3.i
  %i.ds = load ptr, ptr %2, align 8, !tbaa !242, !noalias !356
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %indvars.iv.i4.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !287, !noalias !356
  %i.dw = load ptr, ptr %4, align 8, !tbaa !81, !noalias !356
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i4.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !88, !noalias !356
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %.0.copyload.i115 = load i32, ptr %i.dz, align 1, !noalias !356
  %i.ea = load ptr, ptr %i.cv, align 8, !tbaa !369, !noalias !356 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.u, label %_ZN8facebook5velox10FlatVectorIiE12ensureValuesEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ec = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.co)
          to label %.noexc123 unwind label %.loopexit ; 0 uses

.noexc123:                                        ; preds = %bb.u
  %.pre.i.i119 = load ptr, ptr %i.cv, align 8, !tbaa !369, !noalias !356
  br label %_ZN8facebook5velox10FlatVectorIiE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIiE12ensureValuesEv.exit.i.i: ; preds = %.noexc123, %bb.t
  %i.ed = phi ptr [ %i.ea, %bb.t ], [ %.pre.i.i119, %.noexc123 ]
  %49 = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %indvars.iv.i4.i
  store i32 %.0.copyload.i115, ptr %49, align 4, !tbaa !3, !noalias !356
  %i.ee = load ptr, ptr %i.cw, align 8, !tbaa !245, !noalias !356
  %.not.i.i116 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i116, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIiE12ensureValuesEv.exit.i.i
  %i.ef = load i32, ptr %i.cx, align 8, !tbaa !351, !noalias !356
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.co, i32 noundef %i.ef, i1 noundef zeroext true)
          to label %.noexc124 unwind label %.loopexit

.noexc124:                                        ; preds = %bb.v
  %i.eg = load ptr, ptr %i.cw, align 8, !tbaa !245, !noalias !356 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !284, !noalias !356
  %i.ej = and i8 %i.ei, 2
  %.not.i3.i6.i117 = icmp eq i8 %i.ej, 0
  br i1 %.not.i3.i6.i117, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i118, label %.invoke, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i118: ; preds = %.noexc124
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !254, !noalias !356
  %i.em = lshr i64 %indvars.iv.i4.i, 3
  %i.en = and i64 %i.em, 536870911
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !102, !noalias !356
  %i.eq = trunc i64 %indvars.iv.i4.i to i8
  %i.er = and i8 %i.eq, 7
  %i.es = shl nuw i8 1, %i.er
  %i.et = or i8 %i.ep, %i.es
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !102, !noalias !356
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i118, %_ZN8facebook5velox10FlatVectorIiE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit.i
  %indvars.iv.next.i6.i = add nuw i64 %indvars.iv.i4.i, 1 ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next.i6.i, %i.cm
  br i1 %exitcond.not.i7.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE3EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i3.i, !llvm.loop !388

.loopexit:                                        ; preds = %bb.s, %bb.u, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #26, !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !356
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE3EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIiEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.r
  store ptr %i.co, ptr %0, align 8, !tbaa !83, !alias.scope !356
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.eu, align 8, !tbaa !139, !alias.scope !356
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !356
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.x:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !239, !noalias !392 ; 2 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !242, !noalias !392 ; 2 uses
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26, !noalias !392
  %i.fc = trunc i64 %i.fb to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26, !noalias !396
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.fc, ptr noundef %5), !noalias !396
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.fd = load ptr, ptr %37, align 8, !tbaa !83, !noalias !400 ; 8 uses
  store ptr %i.fd, ptr %38, align 8, !tbaa !401, !alias.scope !404, !noalias !392
  %i.fe = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !139, !noalias !400 ; 2 uses
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !139, !alias.scope !404, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26, !noalias !396
  %i.fh = load ptr, ptr %3, align 8, !tbaa !245, !noalias !392
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !254, !noalias !392
  %.not.i8.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i8.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE1EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 120 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 56 ; 2 uses
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i12.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i9.i.preheader ] ; 10 uses
  %i.fn = lshr i64 %indvars.iv.i10.i, 6
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !88, !noalias !392
  %i.fq = and i64 %indvars.iv.i10.i, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.fp
  %.not.i.i11.i = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i11.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i9.i
  %i.ft = load i32, ptr %i.fm, align 8, !tbaa !351, !noalias !392
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.fd, i32 noundef %i.ft, i1 noundef zeroext true)
          to label %.noexc110 unwind label %.loopexit262

.noexc110:                                        ; preds = %bb.y
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !245, !noalias !392 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 44
  %i.fw = load i8, ptr %i.fv, align 4, !tbaa !284, !noalias !392
  %i.fx = and i8 %i.fw, 2
  %.not.i3.i.i109 = icmp eq i8 %i.fx, 0
  br i1 %.not.i3.i.i109, label %_ZN8facebook5velox10FlatVectorIaE7setNullEib.exit.i, label %.invoke334, !prof !285

.invoke334:                                       ; preds = %.noexc113, %.noexc110
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont335 unwind label %.loopexit.split-lp263

.cont335:                                         ; preds = %.invoke334
  unreachable

_ZN8facebook5velox10FlatVectorIaE7setNullEib.exit.i: ; preds = %.noexc110
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !254, !noalias !392
  %i.ga = lshr i64 %indvars.iv.i10.i, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !102, !noalias !392
  %i.gd = and i64 %indvars.iv.i10.i, 7
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !102, !noalias !392
  %i.gg = and i8 %i.gf, %i.gc
  store i8 %i.gg, ptr %i.gb, align 1, !tbaa !102, !noalias !392
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.z:                                             ; preds = %.lr.ph.i9.i
  %i.gh = load ptr, ptr %2, align 8, !tbaa !242, !noalias !392
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i10.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !287, !noalias !392
  %i.gl = load ptr, ptr %4, align 8, !tbaa !81, !noalias !392
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.i10.i
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !88, !noalias !392
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gn
  %.0.copyload.i104 = load i8, ptr %i.go, align 1, !noalias !392
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !405, !noalias !392 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.aa, label %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIaE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.fd)
          to label %.noexc112 unwind label %.loopexit262 ; 0 uses

.noexc112:                                        ; preds = %bb.aa
  %.pre.i.i108 = load ptr, ptr %i.fk, align 8, !tbaa !405, !noalias !392
  br label %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i.i: ; preds = %.noexc112, %bb.z
  %i.gs = phi ptr [ %i.gp, %bb.z ], [ %.pre.i.i108, %.noexc112 ]
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %indvars.iv.i10.i
  store i8 %.0.copyload.i104, ptr %i.gt, align 1, !tbaa !102, !noalias !392
  %i.gu = load ptr, ptr %i.fl, align 8, !tbaa !245, !noalias !392
  %.not.i.i105 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i105, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i.i
  %i.gv = load i32, ptr %i.fm, align 8, !tbaa !351, !noalias !392
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.fd, i32 noundef %i.gv, i1 noundef zeroext true)
          to label %.noexc113 unwind label %.loopexit262

.noexc113:                                        ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.fl, align 8, !tbaa !245, !noalias !392 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !284, !noalias !392
  %i.gz = and i8 %i.gy, 2
  %.not.i3.i6.i106 = icmp eq i8 %i.gz, 0
  br i1 %.not.i3.i6.i106, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i107, label %.invoke334, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i107: ; preds = %.noexc113
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !254, !noalias !392
  %i.hc = lshr i64 %indvars.iv.i10.i, 3
  %i.hd = and i64 %i.hc, 536870911
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !102, !noalias !392
  %i.hg = trunc i64 %indvars.iv.i10.i to i8
  %i.hh = and i8 %i.hg, 7
  %i.hi = shl nuw i8 1, %i.hh
  %i.hj = or i8 %i.hf, %i.hi
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !102, !noalias !392
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i107, %_ZN8facebook5velox10FlatVectorIaE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIaE7setNullEib.exit.i
  %indvars.iv.next.i12.i = add nuw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %exitcond.not.i13.i = icmp eq i64 %indvars.iv.next.i12.i, %i.fb
  br i1 %exitcond.not.i13.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE1EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i9.i, !llvm.loop !413

.loopexit262:                                     ; preds = %bb.y, %bb.aa, %bb.ab
  %lpad.loopexit264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp263:                            ; preds = %.invoke334
  %lpad.loopexit.split-lp265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp263, %.loopexit262
  %lpad.phi266 = phi { ptr, i32 } [ %lpad.loopexit264, %.loopexit262 ], [ %lpad.loopexit.split-lp265, %.loopexit.split-lp263 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIaEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #26, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26, !noalias !392
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE1EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIaEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.x
  store ptr %i.fd, ptr %0, align 8, !tbaa !83, !alias.scope !392
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.hk, align 8, !tbaa !139, !alias.scope !392
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26, !noalias !392
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.ad:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !239, !noalias !417 ; 2 uses
  %i.hn = load ptr, ptr %2, align 8, !tbaa !242, !noalias !417 ; 2 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26, !noalias !417
  %i.hs = trunc i64 %i.hr to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26, !noalias !421
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %35, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.hs, ptr noundef %5), !noalias !421
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ht = load ptr, ptr %35, align 8, !tbaa !83, !noalias !425 ; 8 uses
  store ptr %i.ht, ptr %36, align 8, !tbaa !426, !alias.scope !429, !noalias !417
  %i.hu = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !139, !noalias !425 ; 2 uses
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !139, !alias.scope !429, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !421
  %i.hx = load ptr, ptr %3, align 8, !tbaa !245, !noalias !417
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !254, !noalias !417
  %.not.i14.i = icmp eq ptr %i.hm, %i.hn
  br i1 %.not.i14.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE2EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i15.i.preheader

.lr.ph.i15.i.preheader:                           ; preds = %bb.ad
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 120 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 56 ; 2 uses
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i18.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i15.i.preheader ] ; 10 uses
  %i.id = lshr i64 %indvars.iv.i16.i, 6
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !88, !noalias !417
  %i.ig = and i64 %indvars.iv.i16.i, 63
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.ih, %i.if
  %.not.i.i17.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i17.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i15.i
  %i.ij = load i32, ptr %i.ic, align 8, !tbaa !351, !noalias !417
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ht, i32 noundef %i.ij, i1 noundef zeroext true)
          to label %.noexc99 unwind label %.loopexit267

.noexc99:                                         ; preds = %bb.ae
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !245, !noalias !417 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.im = load i8, ptr %i.il, align 4, !tbaa !284, !noalias !417
  %i.in = and i8 %i.im, 2
  %.not.i3.i.i98 = icmp eq i8 %i.in, 0
  br i1 %.not.i3.i.i98, label %_ZN8facebook5velox10FlatVectorIsE7setNullEib.exit.i, label %.invoke336, !prof !285

.invoke336:                                       ; preds = %.noexc102, %.noexc99
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont337 unwind label %.loopexit.split-lp268

.cont337:                                         ; preds = %.invoke336
  unreachable

_ZN8facebook5velox10FlatVectorIsE7setNullEib.exit.i: ; preds = %.noexc99
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !254, !noalias !417
  %i.iq = lshr i64 %indvars.iv.i16.i, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !102, !noalias !417
  %i.it = and i64 %indvars.iv.i16.i, 7
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !102, !noalias !417
  %i.iw = and i8 %i.iv, %i.is
  store i8 %i.iw, ptr %i.ir, align 1, !tbaa !102, !noalias !417
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.af:                                            ; preds = %.lr.ph.i15.i
  %i.ix = load ptr, ptr %2, align 8, !tbaa !242, !noalias !417
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %indvars.iv.i16.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !287, !noalias !417
  %i.jb = load ptr, ptr %4, align 8, !tbaa !81, !noalias !417
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i16.i
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !88, !noalias !417
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jd
  %.0.copyload.i93 = load i16, ptr %i.je, align 1, !noalias !417
  %i.jf = load ptr, ptr %i.ia, align 8, !tbaa !430, !noalias !417 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.ag, label %_ZN8facebook5velox10FlatVectorIsE12ensureValuesEv.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.jh = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIsE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ht)
          to label %.noexc101 unwind label %.loopexit267 ; 0 uses

.noexc101:                                        ; preds = %bb.ag
  %.pre.i.i97 = load ptr, ptr %i.ia, align 8, !tbaa !430, !noalias !417
  br label %_ZN8facebook5velox10FlatVectorIsE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIsE12ensureValuesEv.exit.i.i: ; preds = %.noexc101, %bb.af
  %i.ji = phi ptr [ %i.jf, %bb.af ], [ %.pre.i.i97, %.noexc101 ]
  %50 = getelementptr inbounds [2 x i8], ptr %i.ji, i64 %indvars.iv.i16.i
  store i16 %.0.copyload.i93, ptr %50, align 2, !tbaa !439, !noalias !417
  %i.jj = load ptr, ptr %i.ib, align 8, !tbaa !245, !noalias !417
  %.not.i.i94 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i94, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox10FlatVectorIsE12ensureValuesEv.exit.i.i
  %i.jk = load i32, ptr %i.ic, align 8, !tbaa !351, !noalias !417
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ht, i32 noundef %i.jk, i1 noundef zeroext true)
          to label %.noexc102 unwind label %.loopexit267

.noexc102:                                        ; preds = %bb.ah
  %i.jl = load ptr, ptr %i.ib, align 8, !tbaa !245, !noalias !417 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 44
  %i.jn = load i8, ptr %i.jm, align 4, !tbaa !284, !noalias !417
  %i.jo = and i8 %i.jn, 2
  %.not.i3.i6.i95 = icmp eq i8 %i.jo, 0
  br i1 %.not.i3.i6.i95, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i96, label %.invoke336, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i96: ; preds = %.noexc102
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !254, !noalias !417
  %i.jr = lshr i64 %indvars.iv.i16.i, 3
  %i.js = and i64 %i.jr, 536870911
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.js ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !102, !noalias !417
  %i.jv = trunc i64 %indvars.iv.i16.i to i8
  %i.jw = and i8 %i.jv, 7
  %i.jx = shl nuw i8 1, %i.jw
  %i.jy = or i8 %i.ju, %i.jx
  store i8 %i.jy, ptr %i.jt, align 1, !tbaa !102, !noalias !417
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i96, %_ZN8facebook5velox10FlatVectorIsE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIsE7setNullEib.exit.i
  %indvars.iv.next.i18.i = add nuw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i19.i = icmp eq i64 %indvars.iv.next.i18.i, %i.hr
  br i1 %exitcond.not.i19.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE2EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i15.i, !llvm.loop !441

.loopexit267:                                     ; preds = %bb.ae, %bb.ag, %bb.ah
  %lpad.loopexit269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp268:                            ; preds = %.invoke336
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp268, %.loopexit267
  %lpad.phi271 = phi { ptr, i32 } [ %lpad.loopexit269, %.loopexit267 ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp268 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIsEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %36) #26, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26, !noalias !417
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE2EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIsEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.ad
  store ptr %i.ht, ptr %0, align 8, !tbaa !83, !alias.scope !417
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hw, ptr %i.jz, align 8, !tbaa !139, !alias.scope !417
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26, !noalias !417
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.aj:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !239, !noalias !445 ; 2 uses
  %i.kc = load ptr, ptr %2, align 8, !tbaa !242, !noalias !445 ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26, !noalias !445
  %i.kh = trunc i64 %i.kg to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26, !noalias !449
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.kh, ptr noundef %5), !noalias !449
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ki = load ptr, ptr %33, align 8, !tbaa !83, !noalias !453 ; 8 uses
  store ptr %i.ki, ptr %34, align 8, !tbaa !454, !alias.scope !457, !noalias !445
  %i.kj = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !139, !noalias !453 ; 2 uses
  store ptr %i.kl, ptr %i.kj, align 8, !tbaa !139, !alias.scope !457, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26, !noalias !449
  %i.km = load ptr, ptr %3, align 8, !tbaa !245, !noalias !445
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !254, !noalias !445
  %.not.i20.i = icmp eq ptr %i.kb, %i.kc
  br i1 %.not.i20.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE4EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.aj
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 144 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ki, i64 32 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 56 ; 2 uses
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i24.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i21.i.preheader ] ; 10 uses
  %i.ks = lshr i64 %indvars.iv.i22.i, 6
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !88, !noalias !445
  %i.kv = and i64 %indvars.iv.i22.i, 63
  %i.kw = shl nuw i64 1, %i.kv
  %i.kx = and i64 %i.kw, %i.ku
  %.not.i.i23.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i.i23.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i21.i
  %i.ky = load i32, ptr %i.kr, align 8, !tbaa !351, !noalias !445
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ki, i32 noundef %i.ky, i1 noundef zeroext true)
          to label %.noexc88 unwind label %.loopexit272

.noexc88:                                         ; preds = %bb.ak
  %i.kz = load ptr, ptr %i.kq, align 8, !tbaa !245, !noalias !445 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 44
  %i.lb = load i8, ptr %i.la, align 4, !tbaa !284, !noalias !445
  %i.lc = and i8 %i.lb, 2
  %.not.i3.i.i87 = icmp eq i8 %i.lc, 0
  br i1 %.not.i3.i.i87, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i, label %.invoke338, !prof !285

.invoke338:                                       ; preds = %.noexc91, %.noexc88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont339 unwind label %.loopexit.split-lp273

.cont339:                                         ; preds = %.invoke338
  unreachable

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i: ; preds = %.noexc88
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !254, !noalias !445
  %i.lf = lshr i64 %indvars.iv.i22.i, 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lf ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !102, !noalias !445
  %i.li = and i64 %indvars.iv.i22.i, 7
  %i.lj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !102, !noalias !445
  %i.ll = and i8 %i.lk, %i.lh
  store i8 %i.ll, ptr %i.lg, align 1, !tbaa !102, !noalias !445
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.al:                                            ; preds = %.lr.ph.i21.i
  %i.lm = load ptr, ptr %2, align 8, !tbaa !242, !noalias !445
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv.i22.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !287, !noalias !445
  %i.lq = load ptr, ptr %4, align 8, !tbaa !81, !noalias !445
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.i22.i
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !88, !noalias !445
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ls
  %.0.copyload.i82 = load i64, ptr %i.lt, align 1, !noalias !445
  %i.lu = load ptr, ptr %i.kp, align 8, !tbaa !458, !noalias !445 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, null
  br i1 %i.lv, label %bb.am, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.lw = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ki)
          to label %.noexc90 unwind label %.loopexit272 ; 0 uses

.noexc90:                                         ; preds = %bb.am
  %.pre.i.i86 = load ptr, ptr %i.kp, align 8, !tbaa !458, !noalias !445
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i: ; preds = %.noexc90, %bb.al
  %i.lx = phi ptr [ %i.lu, %bb.al ], [ %.pre.i.i86, %.noexc90 ]
  %51 = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %indvars.iv.i22.i
  store i64 %.0.copyload.i82, ptr %51, align 8, !tbaa !88, !noalias !445
  %i.ly = load ptr, ptr %i.kq, align 8, !tbaa !245, !noalias !445
  %.not.i.i83 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i83, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.an

bb.an:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i
  %i.lz = load i32, ptr %i.kr, align 8, !tbaa !351, !noalias !445
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ki, i32 noundef %i.lz, i1 noundef zeroext true)
          to label %.noexc91 unwind label %.loopexit272

.noexc91:                                         ; preds = %bb.an
  %i.ma = load ptr, ptr %i.kq, align 8, !tbaa !245, !noalias !445 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 44
  %i.mc = load i8, ptr %i.mb, align 4, !tbaa !284, !noalias !445
  %i.md = and i8 %i.mc, 2
  %.not.i3.i6.i84 = icmp eq i8 %i.md, 0
  br i1 %.not.i3.i6.i84, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i85, label %.invoke338, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i85: ; preds = %.noexc91
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !254, !noalias !445
  %i.mg = lshr i64 %indvars.iv.i22.i, 3
  %i.mh = and i64 %i.mg, 536870911
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mh ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !102, !noalias !445
  %i.mk = trunc i64 %indvars.iv.i22.i to i8
  %i.ml = and i8 %i.mk, 7
  %i.mm = shl nuw i8 1, %i.ml
  %i.mn = or i8 %i.mj, %i.mm
  store i8 %i.mn, ptr %i.mi, align 1, !tbaa !102, !noalias !445
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i85, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i
  %indvars.iv.next.i24.i = add nuw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %indvars.iv.next.i24.i, %i.kg
  br i1 %exitcond.not.i25.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE4EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i21.i, !llvm.loop !466

.loopexit272:                                     ; preds = %bb.ak, %bb.am, %bb.an
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp273:                            ; preds = %.invoke338
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp273, %.loopexit272
  %lpad.phi276 = phi { ptr, i32 } [ %lpad.loopexit274, %.loopexit272 ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp273 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIlEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #26, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !445
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE4EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIlEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.aj
  store ptr %i.ki, ptr %0, align 8, !tbaa !83, !alias.scope !445
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kl, ptr %i.mo, align 8, !tbaa !139, !alias.scope !445
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !445
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.ap:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !239, !noalias !470 ; 2 uses
  %i.mr = load ptr, ptr %2, align 8, !tbaa !242, !noalias !470 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = ashr exact i64 %i.mu, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26, !noalias !470
  %i.mw = trunc i64 %i.mv to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !474
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.mw, ptr noundef %5), !noalias !474
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.mx = load ptr, ptr %31, align 8, !tbaa !83, !noalias !478 ; 8 uses
  store ptr %i.mx, ptr %32, align 8, !tbaa !479, !alias.scope !482, !noalias !470
  %i.my = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !139, !noalias !478 ; 2 uses
  store ptr %i.na, ptr %i.my, align 8, !tbaa !139, !alias.scope !482, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !474
  %i.nb = load ptr, ptr %3, align 8, !tbaa !245, !noalias !470
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !254, !noalias !470
  %.not.i26.i = icmp eq ptr %i.mq, %i.mr
  br i1 %.not.i26.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE10EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.ap
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 184 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 32 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 56 ; 2 uses
  br label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i28.i = phi i64 [ %indvars.iv.next.i30.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i27.i.preheader ] ; 10 uses
  %i.nh = lshr i64 %indvars.iv.i28.i, 6
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !88, !noalias !470
  %i.nk = and i64 %indvars.iv.i28.i, 63
  %i.nl = shl nuw i64 1, %i.nk
  %i.nm = and i64 %i.nl, %i.nj
  %.not.i.i29.i = icmp eq i64 %i.nm, 0
  br i1 %.not.i.i29.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i27.i
  %i.nn = load i32, ptr %i.ng, align 8, !tbaa !351, !noalias !470
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.mx, i32 noundef %i.nn, i1 noundef zeroext true)
          to label %.noexc77 unwind label %.loopexit277

.noexc77:                                         ; preds = %bb.aq
  %i.no = load ptr, ptr %i.nf, align 8, !tbaa !245, !noalias !470 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 44
  %i.nq = load i8, ptr %i.np, align 4, !tbaa !284, !noalias !470
  %i.nr = and i8 %i.nq, 2
  %.not.i3.i.i76 = icmp eq i8 %i.nr, 0
  br i1 %.not.i3.i.i76, label %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit.i, label %.invoke340, !prof !285

.invoke340:                                       ; preds = %.noexc80, %.noexc77
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont341 unwind label %.loopexit.split-lp278

.cont341:                                         ; preds = %.invoke340
  unreachable

_ZN8facebook5velox10FlatVectorInE7setNullEib.exit.i: ; preds = %.noexc77
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !254, !noalias !470
  %i.nu = lshr i64 %indvars.iv.i28.i, 3
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !102, !noalias !470
  %i.nx = and i64 %indvars.iv.i28.i, 7
  %i.ny = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !102, !noalias !470
  %i.oa = and i8 %i.nz, %i.nw
  store i8 %i.oa, ptr %i.nv, align 1, !tbaa !102, !noalias !470
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.ar:                                            ; preds = %.lr.ph.i27.i
  %i.ob = load ptr, ptr %2, align 8, !tbaa !242, !noalias !470
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %indvars.iv.i28.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !287, !noalias !470
  %i.of = load ptr, ptr %4, align 8, !tbaa !81, !noalias !470
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.i28.i
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !88, !noalias !470
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oh
  %.0.copyload.i71 = load i128, ptr %i.oi, align 1, !noalias !470
  %i.oj = load ptr, ptr %i.ne, align 8, !tbaa !483, !noalias !470 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.as, label %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ol = invoke noundef ptr @_ZN8facebook5velox10FlatVectorInE16mutableRawValuesEv(ptr noundef nonnull align 16 dereferenceable(240) %i.mx)
          to label %.noexc79 unwind label %.loopexit277 ; 0 uses

.noexc79:                                         ; preds = %bb.as
  %.pre.i.i75 = load ptr, ptr %i.ne, align 8, !tbaa !483, !noalias !470
  br label %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i.i: ; preds = %.noexc79, %bb.ar
  %i.om = phi ptr [ %i.oj, %bb.ar ], [ %.pre.i.i75, %.noexc79 ]
  %52 = getelementptr inbounds [16 x i8], ptr %i.om, i64 %indvars.iv.i28.i
  store i128 %.0.copyload.i71, ptr %52, align 16, !tbaa !492, !noalias !470
  %i.on = load ptr, ptr %i.nf, align 8, !tbaa !245, !noalias !470
  %.not.i.i72 = icmp eq ptr %i.on, null
  br i1 %.not.i.i72, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i.i
  %i.oo = load i32, ptr %i.ng, align 8, !tbaa !351, !noalias !470
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.mx, i32 noundef %i.oo, i1 noundef zeroext true)
          to label %.noexc80 unwind label %.loopexit277

.noexc80:                                         ; preds = %bb.at
  %i.op = load ptr, ptr %i.nf, align 8, !tbaa !245, !noalias !470 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 44
  %i.or = load i8, ptr %i.oq, align 4, !tbaa !284, !noalias !470
  %i.os = and i8 %i.or, 2
  %.not.i3.i6.i73 = icmp eq i8 %i.os, 0
  br i1 %.not.i3.i6.i73, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i74, label %.invoke340, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i74: ; preds = %.noexc80
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !254, !noalias !470
  %i.ov = lshr i64 %indvars.iv.i28.i, 3
  %i.ow = and i64 %i.ov, 536870911
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ow ; 2 uses
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !102, !noalias !470
  %i.oz = trunc i64 %indvars.iv.i28.i to i8
  %i.pa = and i8 %i.oz, 7
  %i.pb = shl nuw i8 1, %i.pa
  %i.pc = or i8 %i.oy, %i.pb
  store i8 %i.pc, ptr %i.ox, align 1, !tbaa !102, !noalias !470
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i74, %_ZN8facebook5velox10FlatVectorInE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit.i
  %indvars.iv.next.i30.i = add nuw i64 %indvars.iv.i28.i, 1 ; 2 uses
  %exitcond.not.i31.i = icmp eq i64 %indvars.iv.next.i30.i, %i.mv
  br i1 %exitcond.not.i31.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE10EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i27.i, !llvm.loop !494

.loopexit277:                                     ; preds = %bb.aq, %bb.as, %bb.at
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp278:                            ; preds = %.invoke340
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp278, %.loopexit277
  %lpad.phi281 = phi { ptr, i32 } [ %lpad.loopexit279, %.loopexit277 ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp278 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorInEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #26, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26, !noalias !470
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE10EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueInEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.ap
  store ptr %i.mx, ptr %0, align 8, !tbaa !83, !alias.scope !470
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.na, ptr %i.pd, align 8, !tbaa !139, !alias.scope !470
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26, !noalias !470
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.av:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !239, !noalias !498 ; 2 uses
  %i.pg = load ptr, ptr %2, align 8, !tbaa !242, !noalias !498 ; 2 uses
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = ashr exact i64 %i.pj, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !498
  %i.pl = trunc i64 %i.pk to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26, !noalias !502
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.pl, ptr noundef %5), !noalias !502
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.pm = load ptr, ptr %29, align 8, !tbaa !83, !noalias !506 ; 8 uses
  store ptr %i.pm, ptr %30, align 8, !tbaa !507, !alias.scope !510, !noalias !498
  %i.pn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !139, !noalias !506 ; 2 uses
  store ptr %i.pp, ptr %i.pn, align 8, !tbaa !139, !alias.scope !510, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !502
  %i.pq = load ptr, ptr %3, align 8, !tbaa !245, !noalias !498
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !254, !noalias !498
  %.not.i32.i = icmp eq ptr %i.pf, %i.pg
  br i1 %.not.i32.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE5EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %bb.av
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 128 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 32 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 56 ; 2 uses
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i36.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i33.i.preheader ] ; 10 uses
  %i.pw = lshr i64 %indvars.iv.i34.i, 6
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pw
  %i.py = load i64, ptr %i.px, align 8, !tbaa !88, !noalias !498
  %i.pz = and i64 %indvars.iv.i34.i, 63
  %i.qa = shl nuw i64 1, %i.pz
  %i.qb = and i64 %i.qa, %i.py
  %.not.i.i35.i = icmp eq i64 %i.qb, 0
  br i1 %.not.i.i35.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i33.i
  %i.qc = load i32, ptr %i.pv, align 8, !tbaa !351, !noalias !498
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.pm, i32 noundef %i.qc, i1 noundef zeroext true)
          to label %.noexc66 unwind label %.loopexit282

.noexc66:                                         ; preds = %bb.aw
  %i.qd = load ptr, ptr %i.pu, align 8, !tbaa !245, !noalias !498 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 44
  %i.qf = load i8, ptr %i.qe, align 4, !tbaa !284, !noalias !498
  %i.qg = and i8 %i.qf, 2
  %.not.i3.i.i65 = icmp eq i8 %i.qg, 0
  br i1 %.not.i3.i.i65, label %_ZN8facebook5velox10FlatVectorIfE7setNullEib.exit.i, label %.invoke342, !prof !285

.invoke342:                                       ; preds = %.noexc69, %.noexc66
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont343 unwind label %.loopexit.split-lp283

.cont343:                                         ; preds = %.invoke342
  unreachable

_ZN8facebook5velox10FlatVectorIfE7setNullEib.exit.i: ; preds = %.noexc66
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !254, !noalias !498
  %i.qj = lshr i64 %indvars.iv.i34.i, 3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qj ; 2 uses
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !102, !noalias !498
  %i.qm = and i64 %indvars.iv.i34.i, 7
  %i.qn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !102, !noalias !498
  %i.qp = and i8 %i.qo, %i.ql
  store i8 %i.qp, ptr %i.qk, align 1, !tbaa !102, !noalias !498
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.ax:                                            ; preds = %.lr.ph.i33.i
  %i.qq = load ptr, ptr %2, align 8, !tbaa !242, !noalias !498
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %indvars.iv.i34.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !287, !noalias !498
  %i.qu = load ptr, ptr %4, align 8, !tbaa !81, !noalias !498
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.i34.i
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !88, !noalias !498
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qw
  %.0.copyload.i60 = load float, ptr %i.qx, align 1, !noalias !498
  %i.qy = load ptr, ptr %i.pt, align 8, !tbaa !511, !noalias !498 ; 2 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.ay, label %_ZN8facebook5velox10FlatVectorIfE12ensureValuesEv.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ra = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIfE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.pm)
          to label %.noexc68 unwind label %.loopexit282 ; 0 uses

.noexc68:                                         ; preds = %bb.ay
  %.pre.i.i64 = load ptr, ptr %i.pt, align 8, !tbaa !511, !noalias !498
  br label %_ZN8facebook5velox10FlatVectorIfE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIfE12ensureValuesEv.exit.i.i: ; preds = %.noexc68, %bb.ax
  %i.rb = phi ptr [ %i.qy, %bb.ax ], [ %.pre.i.i64, %.noexc68 ]
  %53 = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %indvars.iv.i34.i
  store float %.0.copyload.i60, ptr %53, align 4, !tbaa !520, !noalias !498
  %i.rc = load ptr, ptr %i.pu, align 8, !tbaa !245, !noalias !498
  %.not.i.i61 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i61, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.az

bb.az:                                            ; preds = %_ZN8facebook5velox10FlatVectorIfE12ensureValuesEv.exit.i.i
  %i.rd = load i32, ptr %i.pv, align 8, !tbaa !351, !noalias !498
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.pm, i32 noundef %i.rd, i1 noundef zeroext true)
          to label %.noexc69 unwind label %.loopexit282

.noexc69:                                         ; preds = %bb.az
  %i.re = load ptr, ptr %i.pu, align 8, !tbaa !245, !noalias !498 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 44
  %i.rg = load i8, ptr %i.rf, align 4, !tbaa !284, !noalias !498
  %i.rh = and i8 %i.rg, 2
  %.not.i3.i6.i62 = icmp eq i8 %i.rh, 0
  br i1 %.not.i3.i6.i62, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i63, label %.invoke342, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i63: ; preds = %.noexc69
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !254, !noalias !498
  %i.rk = lshr i64 %indvars.iv.i34.i, 3
  %i.rl = and i64 %i.rk, 536870911
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rl ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !102, !noalias !498
  %i.ro = trunc i64 %indvars.iv.i34.i to i8
  %i.rp = and i8 %i.ro, 7
  %i.rq = shl nuw i8 1, %i.rp
  %i.rr = or i8 %i.rn, %i.rq
  store i8 %i.rr, ptr %i.rm, align 1, !tbaa !102, !noalias !498
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i63, %_ZN8facebook5velox10FlatVectorIfE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIfE7setNullEib.exit.i
  %indvars.iv.next.i36.i = add nuw i64 %indvars.iv.i34.i, 1 ; 2 uses
  %exitcond.not.i37.i = icmp eq i64 %indvars.iv.next.i36.i, %i.pk
  br i1 %exitcond.not.i37.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE5EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i33.i, !llvm.loop !522

.loopexit282:                                     ; preds = %bb.aw, %bb.ay, %bb.az
  %lpad.loopexit284 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp283:                            ; preds = %.invoke342
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp283, %.loopexit282
  %lpad.phi286 = phi { ptr, i32 } [ %lpad.loopexit284, %.loopexit282 ], [ %lpad.loopexit.split-lp285, %.loopexit.split-lp283 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIfEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #26, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !498
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE5EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIfEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.av
  store ptr %i.pm, ptr %0, align 8, !tbaa !83, !alias.scope !498
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pp, ptr %i.rs, align 8, !tbaa !139, !alias.scope !498
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !498
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.bb:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !239, !noalias !526 ; 2 uses
  %i.rv = load ptr, ptr %2, align 8, !tbaa !242, !noalias !526 ; 2 uses
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = ashr exact i64 %i.ry, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26, !noalias !526
  %i.sa = trunc i64 %i.rz to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !530
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.sa, ptr noundef %5), !noalias !530
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.sb = load ptr, ptr %27, align 8, !tbaa !83, !noalias !534 ; 8 uses
  store ptr %i.sb, ptr %28, align 8, !tbaa !535, !alias.scope !538, !noalias !526
  %i.sc = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.sd = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !139, !noalias !534 ; 2 uses
  store ptr %i.se, ptr %i.sc, align 8, !tbaa !139, !alias.scope !538, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !530
  %i.sf = load ptr, ptr %3, align 8, !tbaa !245, !noalias !526
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !254, !noalias !526
  %.not.i38.i = icmp eq ptr %i.ru, %i.rv
  br i1 %.not.i38.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE6EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i39.i.preheader

.lr.ph.i39.i.preheader:                           ; preds = %bb.bb
  %i.si = getelementptr inbounds nuw i8, ptr %i.sb, i64 144 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sb, i64 32 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 56 ; 2 uses
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i40.i = phi i64 [ %indvars.iv.next.i42.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i39.i.preheader ] ; 10 uses
  %i.sl = lshr i64 %indvars.iv.i40.i, 6
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sl
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !88, !noalias !526
  %i.so = and i64 %indvars.iv.i40.i, 63
  %i.sp = shl nuw i64 1, %i.so
  %i.sq = and i64 %i.sp, %i.sn
  %.not.i.i41.i = icmp eq i64 %i.sq, 0
  br i1 %.not.i.i41.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i39.i
  %i.sr = load i32, ptr %i.sk, align 8, !tbaa !351, !noalias !526
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.sb, i32 noundef %i.sr, i1 noundef zeroext true)
          to label %.noexc55 unwind label %.loopexit287

.noexc55:                                         ; preds = %bb.bc
  %i.ss = load ptr, ptr %i.sj, align 8, !tbaa !245, !noalias !526 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 44
  %i.su = load i8, ptr %i.st, align 4, !tbaa !284, !noalias !526
  %i.sv = and i8 %i.su, 2
  %.not.i3.i.i54 = icmp eq i8 %i.sv, 0
  br i1 %.not.i3.i.i54, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i, label %.invoke344, !prof !285

.invoke344:                                       ; preds = %.noexc58, %.noexc55
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont345 unwind label %.loopexit.split-lp288

.cont345:                                         ; preds = %.invoke344
  unreachable

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i: ; preds = %.noexc55
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !254, !noalias !526
  %i.sy = lshr i64 %indvars.iv.i40.i, 3
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sy ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !102, !noalias !526
  %i.tb = and i64 %indvars.iv.i40.i, 7
  %i.tc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !102, !noalias !526
  %i.te = and i8 %i.td, %i.ta
  store i8 %i.te, ptr %i.sz, align 1, !tbaa !102, !noalias !526
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.bd:                                            ; preds = %.lr.ph.i39.i
  %i.tf = load ptr, ptr %2, align 8, !tbaa !242, !noalias !526
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.tf, i64 %indvars.iv.i40.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !287, !noalias !526
  %i.tj = load ptr, ptr %4, align 8, !tbaa !81, !noalias !526
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv.i40.i
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !88, !noalias !526
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tl
  %.0.copyload.i50 = load double, ptr %i.tm, align 1, !noalias !526
  %i.tn = load ptr, ptr %i.si, align 8, !tbaa !539, !noalias !526 ; 2 uses
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %bb.be, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.tp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.sb)
          to label %.noexc57 unwind label %.loopexit287 ; 0 uses

.noexc57:                                         ; preds = %bb.be
  %.pre.i.i53 = load ptr, ptr %i.si, align 8, !tbaa !539, !noalias !526
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i: ; preds = %.noexc57, %bb.bd
  %i.tq = phi ptr [ %i.tn, %bb.bd ], [ %.pre.i.i53, %.noexc57 ]
  %54 = getelementptr inbounds [8 x i8], ptr %i.tq, i64 %indvars.iv.i40.i
  store double %.0.copyload.i50, ptr %54, align 8, !tbaa !548, !noalias !526
  %i.tr = load ptr, ptr %i.sj, align 8, !tbaa !245, !noalias !526
  %.not.i.i51 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i51, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i
  %i.ts = load i32, ptr %i.sk, align 8, !tbaa !351, !noalias !526
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.sb, i32 noundef %i.ts, i1 noundef zeroext true)
          to label %.noexc58 unwind label %.loopexit287

.noexc58:                                         ; preds = %bb.bf
  %i.tt = load ptr, ptr %i.sj, align 8, !tbaa !245, !noalias !526 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 44
  %i.tv = load i8, ptr %i.tu, align 4, !tbaa !284, !noalias !526
  %i.tw = and i8 %i.tv, 2
  %.not.i3.i6.i = icmp eq i8 %i.tw, 0
  br i1 %.not.i3.i6.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i52, label %.invoke344, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i52: ; preds = %.noexc58
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !254, !noalias !526
  %i.tz = lshr i64 %indvars.iv.i40.i, 3
  %i.ua = and i64 %i.tz, 536870911
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.ua ; 2 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !102, !noalias !526
  %i.ud = trunc i64 %indvars.iv.i40.i to i8
  %i.ue = and i8 %i.ud, 7
  %i.uf = shl nuw i8 1, %i.ue
  %i.ug = or i8 %i.uc, %i.uf
  store i8 %i.ug, ptr %i.ub, align 1, !tbaa !102, !noalias !526
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i52, %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i
  %indvars.iv.next.i42.i = add nuw i64 %indvars.iv.i40.i, 1 ; 2 uses
  %exitcond.not.i43.i = icmp eq i64 %indvars.iv.next.i42.i, %i.rz
  br i1 %exitcond.not.i43.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE6EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i39.i, !llvm.loop !550

.loopexit287:                                     ; preds = %bb.bc, %bb.be, %bb.bf
  %lpad.loopexit289 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp288:                            ; preds = %.invoke344
  %lpad.loopexit.split-lp290 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp288, %.loopexit287
  %lpad.phi291 = phi { ptr, i32 } [ %lpad.loopexit289, %.loopexit287 ], [ %lpad.loopexit.split-lp290, %.loopexit.split-lp288 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorIdEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #26, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26, !noalias !526
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE6EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueIdEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.bb
  store ptr %i.sb, ptr %0, align 8, !tbaa !83, !alias.scope !526
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.se, ptr %i.uh, align 8, !tbaa !139, !alias.scope !526
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26, !noalias !526
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.bh:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !239, !noalias !554 ; 2 uses
  %i.uk = load ptr, ptr %2, align 8, !tbaa !242, !noalias !554 ; 2 uses
  %i.ul = ptrtoint ptr %i.uj to i64
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = sub i64 %i.ul, %i.um
  %i.uo = ashr exact i64 %i.un, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !554
  %i.up = trunc i64 %i.uo to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !558
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.up, ptr noundef %5), !noalias !558
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.uq = load ptr, ptr %25, align 8, !tbaa !83, !noalias !562 ; 6 uses
  store ptr %i.uq, ptr %26, align 8, !tbaa !563, !alias.scope !566, !noalias !554
  %i.ur = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !139, !noalias !562 ; 2 uses
  store ptr %i.ut, ptr %i.ur, align 8, !tbaa !139, !alias.scope !566, !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !558
  %i.uu = load ptr, ptr %3, align 8, !tbaa !245, !noalias !554
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !254, !noalias !554
  %.not.i44.i = icmp eq ptr %i.uj, %i.uk
  br i1 %.not.i44.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE7EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.preheader.i45.i

.lr.ph.preheader.i45.i:                           ; preds = %bb.bh
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uq, i64 56
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  br label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i, %.lr.ph.preheader.i45.i
  %indvars.iv.i47.i = phi i64 [ 0, %.lr.ph.preheader.i45.i ], [ %indvars.iv.next.i52.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i ] ; 8 uses
  %i.uz = lshr i64 %indvars.iv.i47.i, 6
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uz
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !88, !noalias !554
  %i.vc = and i64 %indvars.iv.i47.i, 63
  %i.vd = shl nuw i64 1, %i.vc
  %i.ve = and i64 %i.vd, %i.vb
  %.not.i.i48.i = icmp eq i64 %i.ve, 0
  br i1 %.not.i.i48.i, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i46.i
  %i.vf = load i32, ptr %i.ux, align 8, !tbaa !351, !noalias !554
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.uq, i32 noundef %i.vf, i1 noundef zeroext true)
          to label %.noexc.i54.i unwind label %.loopexit.i49.i, !noalias !554

.noexc.i54.i:                                     ; preds = %bb.bi
  %i.vg = load ptr, ptr %i.uy, align 8, !tbaa !245, !noalias !554 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 44
  %i.vi = load i8, ptr %i.vh, align 4, !tbaa !284, !noalias !554
  %i.vj = and i8 %i.vi, 2
  %.not.i3.i.i.i55.i = icmp eq i8 %i.vj, 0
  br i1 %.not.i3.i.i.i55.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i.i, label %bb.bj, !prof !285

bb.bj:                                            ; preds = %.noexc.i54.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc18.i58.i unwind label %.loopexit.split-lp.i56.i, !noalias !554

.noexc18.i58.i:                                   ; preds = %bb.bj
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i.i: ; preds = %.noexc.i54.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !254, !noalias !554
  %i.vm = lshr i64 %indvars.iv.i47.i, 3
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vm ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !102, !noalias !554
  %i.vp = and i64 %indvars.iv.i47.i, 7
  %i.vq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !102, !noalias !554
  %i.vs = and i8 %i.vr, %i.vo
  store i8 %i.vs, ptr %i.vn, align 1, !tbaa !102, !noalias !554
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i

bb.bk:                                            ; preds = %.lr.ph.i46.i
  %i.vt = load ptr, ptr %2, align 8, !tbaa !242, !noalias !554
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vt, i64 %indvars.iv.i47.i
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !287, !noalias !554
  %i.vx = load ptr, ptr %4, align 8, !tbaa !81, !noalias !554
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %indvars.iv.i47.i
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !88, !noalias !554
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vz ; 2 uses
  %.sroa.0.0.copyload5.i.i.i = load i64, ptr %i.wa, align 1, !noalias !554
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !noalias !554
  %i.wb = trunc nuw nsw i64 %indvars.iv.i47.i to i32
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.uq, i32 noundef %i.wb, i64 %.sroa.0.0.copyload5.i.i.i, ptr %.sroa.5.0.copyload.i.i.i)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i unwind label %.loopexit.i49.i, !noalias !554

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i: ; preds = %bb.bk, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i.i
  %indvars.iv.next.i52.i = add nuw i64 %indvars.iv.i47.i, 1 ; 2 uses
  %exitcond.not.i53.i = icmp eq i64 %indvars.iv.next.i52.i, %i.uo
  br i1 %exitcond.not.i53.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE7EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i46.i, !llvm.loop !567

.loopexit.i49.i:                                  ; preds = %bb.bk, %bb.bi
  %lpad.loopexit.i50.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp.i56.i:                         ; preds = %bb.bj
  %lpad.loopexit.split-lp.i57.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.split-lp.i56.i, %.loopexit.i49.i
  %lpad.phi.i51.i = phi { ptr, i32 } [ %lpad.loopexit.i50.i, %.loopexit.i49.i ], [ %lpad.loopexit.split-lp.i57.i, %.loopexit.split-lp.i56.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #26, !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !554
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE7EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i.i, %bb.bh
  store ptr %i.uq, ptr %0, align 8, !tbaa !83, !alias.scope !554
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ut, ptr %i.wc, align 8, !tbaa !139, !alias.scope !554
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !554
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.bm:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !239, !noalias !571 ; 2 uses
  %i.wf = load ptr, ptr %2, align 8, !tbaa !242, !noalias !571 ; 2 uses
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = ashr exact i64 %i.wi, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26, !noalias !571
  %i.wk = trunc i64 %i.wj to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26, !noalias !575
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.wk, ptr noundef %5), !noalias !575
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.wl = load ptr, ptr %23, align 8, !tbaa !83, !noalias !579 ; 6 uses
  store ptr %i.wl, ptr %24, align 8, !tbaa !563, !alias.scope !580, !noalias !571
  %i.wm = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !139, !noalias !579 ; 2 uses
  store ptr %i.wo, ptr %i.wm, align 8, !tbaa !139, !alias.scope !580, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !575
  %i.wp = load ptr, ptr %3, align 8, !tbaa !245, !noalias !571
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !254, !noalias !571
  %.not.i59.i = icmp eq ptr %i.we, %i.wf
  br i1 %.not.i59.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE8EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.preheader.i60.i

.lr.ph.preheader.i60.i:                           ; preds = %bb.bm
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wl, i64 56
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wl, i64 32
  br label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i, %.lr.ph.preheader.i60.i
  %indvars.iv.i62.i = phi i64 [ 0, %.lr.ph.preheader.i60.i ], [ %indvars.iv.next.i71.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i ] ; 8 uses
  %i.wu = lshr i64 %indvars.iv.i62.i, 6
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wu
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !88, !noalias !571
  %i.wx = and i64 %indvars.iv.i62.i, 63
  %i.wy = shl nuw i64 1, %i.wx
  %i.wz = and i64 %i.wy, %i.ww
  %.not.i.i63.i = icmp eq i64 %i.wz, 0
  br i1 %.not.i.i63.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph.i61.i
  %i.xa = load i32, ptr %i.ws, align 8, !tbaa !351, !noalias !571
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.wl, i32 noundef %i.xa, i1 noundef zeroext true)
          to label %.noexc.i73.i unwind label %.loopexit.i67.i, !noalias !571

.noexc.i73.i:                                     ; preds = %bb.bn
  %i.xb = load ptr, ptr %i.wt, align 8, !tbaa !245, !noalias !571 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 44
  %i.xd = load i8, ptr %i.xc, align 4, !tbaa !284, !noalias !571
  %i.xe = and i8 %i.xd, 2
  %.not.i3.i.i.i74.i = icmp eq i8 %i.xe, 0
  br i1 %.not.i3.i.i.i74.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i78.i, label %bb.bo, !prof !285

bb.bo:                                            ; preds = %.noexc.i73.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc18.i77.i unwind label %.loopexit.split-lp.i75.i, !noalias !571

.noexc18.i77.i:                                   ; preds = %bb.bo
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i78.i: ; preds = %.noexc.i73.i
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !254, !noalias !571
  %i.xh = lshr i64 %indvars.iv.i62.i, 3
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xh ; 2 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !102, !noalias !571
  %i.xk = and i64 %indvars.iv.i62.i, 7
  %i.xl = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !102, !noalias !571
  %i.xn = and i8 %i.xm, %i.xj
  store i8 %i.xn, ptr %i.xi, align 1, !tbaa !102, !noalias !571
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i

bb.bp:                                            ; preds = %.lr.ph.i61.i
  %i.xo = load ptr, ptr %2, align 8, !tbaa !242, !noalias !571
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.xo, i64 %indvars.iv.i62.i
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !287, !noalias !571
  %i.xs = load ptr, ptr %4, align 8, !tbaa !81, !noalias !571
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %indvars.iv.i62.i
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !88, !noalias !571
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xu ; 2 uses
  %.sroa.0.0.copyload5.i.i64.i = load i64, ptr %i.xv, align 1, !noalias !571
  %.sroa.5.0..sroa_idx.i.i65.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %.sroa.5.0.copyload.i.i66.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i65.i, align 1, !noalias !571
  %i.xw = trunc nuw nsw i64 %indvars.iv.i62.i to i32
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.wl, i32 noundef %i.xw, i64 %.sroa.0.0.copyload5.i.i64.i, ptr %.sroa.5.0.copyload.i.i66.i)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i unwind label %.loopexit.i67.i, !noalias !571

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i: ; preds = %bb.bp, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i.i78.i
  %indvars.iv.next.i71.i = add nuw i64 %indvars.iv.i62.i, 1 ; 2 uses
  %exitcond.not.i72.i = icmp eq i64 %indvars.iv.next.i71.i, %i.wj
  br i1 %exitcond.not.i72.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE8EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i61.i, !llvm.loop !581

.loopexit.i67.i:                                  ; preds = %bb.bp, %bb.bn
  %lpad.loopexit.i68.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp.i75.i:                         ; preds = %bb.bo
  %lpad.loopexit.split-lp.i76.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.i75.i, %.loopexit.i67.i
  %lpad.phi.i69.i = phi { ptr, i32 } [ %lpad.loopexit.i68.i, %.loopexit.i67.i ], [ %lpad.loopexit.split-lp.i76.i, %.loopexit.split-lp.i75.i ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %24) #26, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26, !noalias !571
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE8EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_10StringViewEEEvbPKcPNS0_10FlatVectorIT_EEi.exit.i70.i, %bb.bm
  store ptr %i.wl, ptr %0, align 8, !tbaa !83, !alias.scope !571
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.wo, ptr %i.xx, align 8, !tbaa !139, !alias.scope !571
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26, !noalias !571
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.br:                                            ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.xy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !239, !noalias !585 ; 2 uses
  %i.ya = load ptr, ptr %2, align 8, !tbaa !242, !noalias !585 ; 2 uses
  %i.yb = ptrtoint ptr %i.xz to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc
  %i.ye = ashr exact i64 %i.yd, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !585
  %i.yf = trunc i64 %i.ye to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !589
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.yf, ptr noundef %5), !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.yg = load ptr, ptr %21, align 8, !tbaa !83, !noalias !593 ; 8 uses
  store ptr %i.yg, ptr %22, align 8, !tbaa !594, !alias.scope !597, !noalias !585
  %i.yh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !139, !noalias !593 ; 2 uses
  store ptr %i.yj, ptr %i.yh, align 8, !tbaa !139, !alias.scope !597, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !589
  %i.yk = load ptr, ptr %3, align 8, !tbaa !245, !noalias !585
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !254, !noalias !585
  %.not.i79.i = icmp eq ptr %i.xz, %i.ya
  br i1 %.not.i79.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE9EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i80.i.preheader

.lr.ph.i80.i.preheader:                           ; preds = %bb.br
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yg, i64 160 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yg, i64 32 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yg, i64 56 ; 2 uses
  br label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %.lr.ph.i80.i.preheader, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit
  %indvars.iv.i81.i = phi i64 [ %indvars.iv.next.i83.i, %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit ], [ 0, %.lr.ph.i80.i.preheader ] ; 10 uses
  %i.yq = lshr i64 %indvars.iv.i81.i, 6
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yq
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !88, !noalias !585
  %i.yt = and i64 %indvars.iv.i81.i, 63
  %i.yu = shl nuw i64 1, %i.yt
  %i.yv = and i64 %i.yu, %i.ys
  %.not.i.i82.i = icmp eq i64 %i.yv, 0
  br i1 %.not.i.i82.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph.i80.i
  %i.yw = load i32, ptr %i.yp, align 8, !tbaa !351, !noalias !585
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(216) %i.yg, i32 noundef %i.yw, i1 noundef zeroext true)
          to label %.noexc unwind label %.loopexit292

.noexc:                                           ; preds = %bb.bs
  %i.yx = load ptr, ptr %i.yo, align 8, !tbaa !245, !noalias !585 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 44
  %i.yz = load i8, ptr %i.yy, align 4, !tbaa !284, !noalias !585
  %i.za = and i8 %i.yz, 2
  %.not.i3.i.i45 = icmp eq i8 %i.za, 0
  br i1 %.not.i3.i.i45, label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit.i, label %.invoke346, !prof !285

.invoke346:                                       ; preds = %.noexc48, %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.cont347 unwind label %.loopexit.split-lp293

.cont347:                                         ; preds = %.invoke346
  unreachable

_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit.i: ; preds = %.noexc
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !254, !noalias !585
  %i.zd = lshr i64 %indvars.iv.i81.i, 3
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zd ; 2 uses
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !102, !noalias !585
  %i.zg = and i64 %indvars.iv.i81.i, 7
  %i.zh = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !102, !noalias !585
  %i.zj = and i8 %i.zi, %i.zf
  store i8 %i.zj, ptr %i.ze, align 1, !tbaa !102, !noalias !585
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit

bb.bt:                                            ; preds = %.lr.ph.i80.i
  %i.zk = load ptr, ptr %2, align 8, !tbaa !242, !noalias !585
  %i.zl = getelementptr inbounds nuw [16 x i8], ptr %i.zk, i64 %indvars.iv.i81.i
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !287, !noalias !585
  %i.zo = load ptr, ptr %4, align 8, !tbaa !81, !noalias !585
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv.i81.i
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !88, !noalias !585
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 %i.zq
  %.0.copyload.i = load i64, ptr %i.zr, align 1, !noalias !585 ; 5 uses
  %i.zs = icmp sgt i64 %.0.copyload.i, -1
  %i.zt = srem i64 %.0.copyload.i, 1000000        ; 2 uses
  %i.zu = sdiv i64 %.0.copyload.i, 1000000
  %i.zv = icmp eq i64 %i.zt, 0
  %or.cond.i.i = or i1 %i.zs, %i.zv
  br i1 %or.cond.i.i, label %_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.nonneg.i.i = sub i64 0, %.0.copyload.i
  %i.zw = udiv i64 %.nonneg.i.i, 1000000
  %i.zx = xor i64 %i.zw, -1                       ; 2 uses
  %.neg.i.i = mul i64 %i.zx, -1000000
  %i.zy = add i64 %.neg.i.i, %.0.copyload.i
  %i.zz = srem i64 %i.zy, 1000000
  br label %_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i

_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i: ; preds = %bb.bt, %bb.bu
  %.sroa.3.0.in.i.i = phi i64 [ %i.zz, %bb.bu ], [ %i.zt, %bb.bt ]
  %.sroa.0.0.i.i = phi i64 [ %i.zx, %bb.bu ], [ %i.zu, %bb.bt ]
  %.sroa.3.0.i.i = mul nsw i64 %.sroa.3.0.in.i.i, 1000
  %i.aaa = load ptr, ptr %i.yn, align 8, !tbaa !598, !noalias !585 ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %bb.bv, label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit.i.i

bb.bv:                                            ; preds = %_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i
  %i.aac = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(216) %i.yg)
          to label %.noexc47 unwind label %.loopexit292 ; 0 uses

.noexc47:                                         ; preds = %bb.bv
  %.pre.i.i = load ptr, ptr %i.yn, align 8, !tbaa !598, !noalias !585
  br label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit.i.i

_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit.i.i: ; preds = %.noexc47, %_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i
  %i.aad = phi ptr [ %i.aaa, %_ZN8facebook5velox9Timestamp10fromMicrosEl.exit.i ], [ %.pre.i.i, %.noexc47 ]
  %55 = getelementptr inbounds [16 x i8], ptr %i.aad, i64 %indvars.iv.i81.i ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %55, align 8, !tbaa !88, !noalias !585
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 %.sroa.3.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !88, !noalias !585
  %i.aae = load ptr, ptr %i.yo, align 8, !tbaa !245, !noalias !585
  %.not.i.i44 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i44, label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit.i.i
  %i.aaf = load i32, ptr %i.yp, align 8, !tbaa !351, !noalias !585
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(216) %i.yg, i32 noundef %i.aaf, i1 noundef zeroext true)
          to label %.noexc48 unwind label %.loopexit292

.noexc48:                                         ; preds = %bb.bw
  %i.aag = load ptr, ptr %i.yo, align 8, !tbaa !245, !noalias !585 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 44
  %i.aai = load i8, ptr %i.aah, align 4, !tbaa !284, !noalias !585
  %i.aaj = and i8 %i.aai, 2
  %.not.i2.i.i = icmp eq i8 %i.aaj, 0
  br i1 %.not.i2.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, label %.invoke346, !prof !285

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %.noexc48
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !254, !noalias !585
  %i.aam = lshr i64 %indvars.iv.i81.i, 3
  %i.aan = and i64 %i.aam, 536870911
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aan ; 2 uses
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !102, !noalias !585
  %i.aaq = trunc i64 %indvars.iv.i81.i to i8
  %i.aar = and i8 %i.aaq, 7
  %i.aas = shl nuw i8 1, %i.aar
  %i.aat = or i8 %i.aap, %i.aas
  store i8 %i.aat, ptr %i.aao, align 1, !tbaa !102, !noalias !585
  br label %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit

_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit.i.i, %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit.i
  %indvars.iv.next.i83.i = add nuw i64 %indvars.iv.i81.i, 1 ; 2 uses
  %exitcond.not.i84.i = icmp eq i64 %indvars.iv.next.i83.i, %i.ye
  br i1 %exitcond.not.i84.i, label %_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE9EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i, label %.lr.ph.i80.i, !llvm.loop !607

.loopexit292:                                     ; preds = %bb.bs, %bb.bv, %bb.bw
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp293:                            ; preds = %.invoke346
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp293, %.loopexit292
  %lpad.phi296 = phi { ptr, i32 } [ %lpad.loopexit294, %.loopexit292 ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp293 ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_9TimestampEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #26, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !585
  br label %common.resume

_ZN8facebook5velox3row12_GLOBAL__N_121deserializeFixedWidthILNS0_8TypeKindE9EEESt10shared_ptrINS0_10BaseVectorEERKS5_IKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISH_EERKN5boost13intrusive_ptrINS0_6BufferEEERKSD_ImSaImEEPNS0_6memory10MemoryPoolE.exit.i: ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_119readFixedWidthValueINS0_9TimestampEEEvbPKcPNS0_10FlatVectorIT_EEi.exit, %bb.br
  store ptr %i.yg, ptr %0, align 8, !tbaa !83, !alias.scope !585
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.yj, ptr %i.aau, align 8, !tbaa !139, !alias.scope !585
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !585
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

bb.by:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26, !noalias !332
  %i.aav = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %i.e), !noalias !332 ; 2 uses
  %i.aaw = extractvalue { i64, ptr } %i.aav, 0
  %i.aax = extractvalue { i64, ptr } %i.aav, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !608
  %i.aay = ptrtoint ptr %i.aax to i64
  store i64 %i.aay, ptr %20, align 16, !noalias !608
  %.sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.aaw, ptr %.sroa_idx3.i.i, align 8, !noalias !608
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr nonnull @.str.12, i64 27, i64 13, ptr nonnull %20), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !608
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @"_ZZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEvE18veloxCheckFailArgs", ptr noundef nonnull align 8 dereferenceable(32) %43, ptr nonnull @.str.12) #27
          to label %bb.bz unwind label %bb.ca, !noalias !332

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  %i.aba = load ptr, ptr %43, align 8, !tbaa !97, !noalias !332 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.abc = icmp eq ptr %i.aba, %i.abb
  br i1 %i.abc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ca
  %i.abd = load i64, ptr %i.abb, align 8, !tbaa !102, !noalias !332
  %i.abe = add i64 %i.abd, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abe) #25, !noalias !332
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !332
  br label %common.resume

bb.cb:                                            ; preds = %bb.k
  switch i8 %i.e, label %bb.fn [
    i8 7, label %bb.cc
    i8 8, label %bb.cc
    i8 30, label %_ZNSt12__shared_ptrIN8facebook5velox11ArrayVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 31, label %bb.cp
    i8 32, label %_ZNSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !239, !noalias !611 ; 2 uses
  %i.abh = load ptr, ptr %2, align 8, !tbaa !242, !noalias !611 ; 2 uses
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = ashr exact i64 %i.abk, 4               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !611
  %i.abm = trunc i64 %i.abl to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !617
  call void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.abm, ptr noundef %5), !noalias !617
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.abn = load ptr, ptr %18, align 8, !tbaa !83, !noalias !621 ; 6 uses
  store ptr %i.abn, ptr %19, align 8, !tbaa !563, !alias.scope !622, !noalias !611
  %i.abo = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !139, !noalias !621 ; 2 uses
  store ptr %i.abq, ptr %i.abo, align 8, !tbaa !139, !alias.scope !622, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !617
  %i.abr = load ptr, ptr %3, align 8, !tbaa !245, !noalias !611
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !254, !noalias !611
  %.not.i = icmp eq ptr %i.abg, %i.abh
  br i1 %.not.i, label %_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.cc
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abn, i64 56
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %.4..4..4..4..4..sroa_idx348 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.4..4..4..4..4..sroa_idx349 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.8..8..8..8..8..sroa_idx350 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph.i

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i: ; preds = %bb.co
  %.pre.i = load ptr, ptr %i.abo, align 8, !tbaa !139, !noalias !611
  br label %_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit

.lr.ph.i:                                         ; preds = %bb.co, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.co ] ; 9 uses
  %i.abw = lshr i64 %indvars.iv.i, 6
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.abw
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !88, !noalias !611
  %i.abz = and i64 %indvars.iv.i, 63
  %i.aca = shl nuw i64 1, %i.abz
  %i.acb = and i64 %i.aca, %i.aby
  %.not.i.i31 = icmp eq i64 %i.acb, 0
  br i1 %.not.i.i31, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.lr.ph.i
  %i.acc = load i32, ptr %i.abu, align 8, !tbaa !351, !noalias !611
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.abn, i32 noundef %i.acc, i1 noundef zeroext true)
          to label %.noexc.i unwind label %.loopexit.i.loopexit, !noalias !611

.noexc.i:                                         ; preds = %bb.cd
  %i.acd = load ptr, ptr %i.abv, align 8, !tbaa !245, !noalias !611 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 44
  %i.acf = load i8, ptr %i.ace, align 4, !tbaa !284, !noalias !611
  %i.acg = and i8 %i.acf, 2
  %.not.i3.i.i = icmp eq i8 %i.acg, 0
  br i1 %.not.i3.i.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i, label %bb.ce, !prof !285

bb.ce:                                            ; preds = %.noexc.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc20.i unwind label %.loopexit.split-lp.i, !noalias !611

.noexc20.i:                                       ; preds = %bb.ce
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i: ; preds = %.noexc.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !254, !noalias !611
  %i.acj = lshr i64 %indvars.iv.i, 3
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.acj ; 2 uses
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !102, !noalias !611
  %i.acm = and i64 %indvars.iv.i, 7
  %i.acn = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !102, !noalias !611
  %i.acp = and i8 %i.aco, %i.acl
  store i8 %i.acp, ptr %i.ack, align 1, !tbaa !102, !noalias !611
  br label %bb.co

.loopexit.i.loopexit:                             ; preds = %bb.cd, %_ZN8facebook5velox10StringViewC2EPKci.exit.i
  %lpad.loopexit297 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body

.loopexit.i.loopexit.split-lp:                    ; preds = %bb.cg
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.body
end_hunk_0
