inline.NumInlined: 22097
inline.NumDeleted: 4792
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorImEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !1574
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorImE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !1581

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !1583

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !1585
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !1585
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !1588, !noalias !1585
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !1585
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.an, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !1591
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !1594, !noalias !1591
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !1594, !noalias !1591
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !1591
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ao
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.am:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !14
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.al ], [ %i.fd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.an:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !1076
  %i.fl = icmp ult i64 %i.fk, %i.ex
  br i1 %i.fl, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ak

.thread:                                          ; preds = %bb.z, %bb.an, %bb.ao, %bb.ab
  ret void

bb.ap:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.ak ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2171

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.387) align 8 %2, ptr noundef byval(%class.anon.388) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2123, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2126
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2175
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2176, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !955
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1574
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !212
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !212
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2177

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2123, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2126
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2175
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2176, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !955
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1574
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !212
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !212
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2177

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2127, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2129
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !955
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !1574
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !955 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !1574 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x i64>, ptr %i.dh, align 8, !tbaa !212
  %wide.load69 = load <4 x i64>, ptr %i.di, align 8, !tbaa !212
  %wide.load70 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !212
  %wide.load71 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !212
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x i64> %wide.load, ptr %i.dl, align 8, !tbaa !212
  store <4 x i64> %wide.load69, ptr %i.dm, align 8, !tbaa !212
  store <4 x i64> %wide.load70, ptr %i.dn, align 8, !tbaa !212
  store <4 x i64> %wide.load71, ptr %i.do, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x i64>, ptr %i.dr, align 8, !tbaa !212
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x i64> %wide.load75, ptr %i.ds, align 8, !tbaa !212
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !212
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !212
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2180

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !212
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !212
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2181

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2182

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !2123, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2126
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2175
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !2176, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !955
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1574
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !212
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !212
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2177

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.391) align 8 %2, ptr noundef byval(%class.anon.392) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2149, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2151
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2144, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !2146, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !2147, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2183

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2133, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2136
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2187
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2188, !nonnull !20, !align !948
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1574
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !212
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2189

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !2133, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2136
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2187
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2188, !nonnull !20, !align !948
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1574
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !212
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !212
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2189

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !2137, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2139
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !1574
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !212
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !1574 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !212 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <4 x i64> %broadcast.splatinsert80, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x i64> %broadcast.splat81, ptr %i.df, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.di, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x i64> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !212
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 29
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i64 %.pre.i44, ptr %i.dq, align 8, !tbaa !212
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2192

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !212
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2193

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2194

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !2133, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2136
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2187
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2188, !nonnull !20, !align !948
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1574
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i64, ptr %i.ep, align 8, !tbaa !212
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !212
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2189

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.396, align 8            ; 7 uses
  %7 = alloca %class.anon.395, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2195

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2196, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2199
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1654, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1657
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2257
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1574
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2258, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !955
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !212
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !212
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2259

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !1654, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1657
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2257
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1574
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2258, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !212
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !212
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2259

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !1658, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1660
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !1574
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !955
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !1574 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !955 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x i64>, ptr %i.dr, align 8, !tbaa !212
  %wide.load69 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !212
  %wide.load70 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !212
  %wide.load71 = load <4 x i64>, ptr %i.du, align 8, !tbaa !212
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !212
  store <4 x i64> %wide.load69, ptr %i.dw, align 8, !tbaa !212
  store <4 x i64> %wide.load70, ptr %i.dx, align 8, !tbaa !212
  store <4 x i64> %wide.load71, ptr %i.dy, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !2260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !212
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x i64> %wide.load75, ptr %i.ee, align 8, !tbaa !212
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !212
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !212
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2262

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !212
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !212
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2263

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2264

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !1654, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1657
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2257
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1574
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !2258, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !955
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !212
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !212
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2259

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !128
  %i.c = load i64, ptr %0, align 8, !tbaa !212
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !212
  %i.f = load ptr, ptr %1, align 8, !tbaa !128    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.187) #50
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i.i, label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.g, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.a, align 16, !tbaa !14
  store i8 %i.t, ptr %i.s, align 1, !tbaa !14
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !15
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !69

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorIbEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIbEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !1152
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIbE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.ar

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.aq

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load81 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load81)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi78, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi79, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi80, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2408

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx84 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx85 = add <4 x i32> %i.dg, %bin.rdx84
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx85) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec88, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi90 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index89, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load91 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load91)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi90, %i.dp         ; 2 uses
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2409

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n93 = icmp eq i64 %i.cn, %n.vec88
  br i1 %cmp.n93, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2410

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !2411
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !2411
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !2414, !noalias !2411
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !2411
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.aq

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = invoke noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.ev)
          to label %bb.ah unwind label %bb.al     ; 4 uses

bb.ah:                                            ; preds = %.critedge
  %i.ex = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ew
  br i1 %.not23, label %bb.ai, label %bb.ao, !prof !69

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !2417
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !2420, !noalias !2417
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ew, ptr %i.fa, align 16, !tbaa !14, !alias.scope !2420, !noalias !2417
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !2417
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIbEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIbEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ap, %.critedge
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.an:                                            ; preds = %bb.aj
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.an
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !14
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.am
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.am ], [ %i.fd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !1076
  %i.fl = icmp ult i64 %i.fk, %i.ew
  br i1 %i.fl, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.fm = load ptr, ptr %i.ex, align 8, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, i64 noundef %i.ew)
          to label %.thread unwind label %bb.al

.thread:                                          ; preds = %bb.z, %bb.ao, %bb.ap, %bb.ab
  ret void

bb.aq:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.al ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) #39
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.aq ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIbEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIbEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2883

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.527) align 8 %2, ptr noundef byval(%class.anon.528) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2840, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2843
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2887
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2888, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !340
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2889

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2840, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2843
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2887
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2888, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !679
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !340
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2889

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2844, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2846
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !679
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !340
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !679 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !340 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <8 x i32>, ptr %i.dh, align 4, !tbaa !3
  %wide.load69 = load <8 x i32>, ptr %i.di, align 4, !tbaa !3
  %wide.load70 = load <8 x i32>, ptr %i.dj, align 4, !tbaa !3
  %wide.load71 = load <8 x i32>, ptr %i.dk, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <8 x i32> %wide.load, ptr %i.dl, align 4, !tbaa !3
  store <8 x i32> %wide.load69, ptr %i.dm, align 4, !tbaa !3
  store <8 x i32> %wide.load70, ptr %i.dn, align 4, !tbaa !3
  store <8 x i32> %wide.load71, ptr %i.do, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2890

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <8 x i32>, ptr %i.dr, align 4, !tbaa !3
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dq
  store <8 x i32> %wide.load75, ptr %i.ds, align 4, !tbaa !3
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2891

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.020.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2892

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ea
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !3
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2893

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2894

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !2840, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2843
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2887
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !2888, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !679
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !340
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ff
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !3
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2889

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.529) align 8 %2, ptr noundef byval(%class.anon.530) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2864, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2866
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2859, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !2861, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !2862, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2895

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2850, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2853
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2899
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2900, !nonnull !20, !align !950
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !340
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i32 %.pre.i, ptr %gep.i, align 4, !tbaa !3
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2901

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !2850, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2853
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2899
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2900, !nonnull !20, !align !950
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !340
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i32, ptr %i.bh, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i32 %.pre.i39, ptr %gep.i41, align 4, !tbaa !3
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2901

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !2854, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2856
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !950 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !340
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i32, ptr %i.by, align 4, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !340 ; 3 uses
  %.pre.i44 = load i32, ptr %i.by, align 4, !tbaa !3 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i34                   ; 2 uses
  %i.cu = shl nsw i34 %i.ct, 2
  %i.cv = trunc i64 %i.cs to i34
  %i.cw = add i34 %i.ct, %i.cv
  %i.cx = shl i34 %i.cw, 2
  %i.cy = icmp slt i34 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 32
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <8 x i32> poison, i32 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <8 x i32> %broadcast.splatinsert80, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 30
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <8 x i32> %broadcast.splat81, ptr %i.df, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat81, ptr %i.dg, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat81, ptr %i.dh, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat81, ptr %i.di, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2902

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 30
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <8 x i32> %broadcast.splat81, ptr %i.dn, align 4, !tbaa !3
  %index.next83 = add nuw i64 %index82, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2903

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 30
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i32 %.pre.i44, ptr %i.dq, align 4, !tbaa !3
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2904

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [4 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i32 %.pre24.i, ptr %gep.i46, align 4, !tbaa !3
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2905

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2906

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !2850, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2853
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2899
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2900, !nonnull !20, !align !950
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !340
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i32, ptr %i.ep, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i32 %.pre.i52, ptr %gep.i54, align 4, !tbaa !3
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2901

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.534, align 8            ; 7 uses
  %7 = alloca %class.anon.533, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2907

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2908, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2911
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox10FlatVectorIiEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIiEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !340
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIiE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIiEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2931

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2932

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2933

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !2934
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !2934
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !2937, !noalias !2934
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !2934
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIiEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 2                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !2940
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !2943, !noalias !2940
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !2943, !noalias !2940
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !2940
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIiEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIiEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIiEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !2468, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2472
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2952
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !340
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2953, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !679
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2954

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !2468, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2472
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2952
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !340
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2953, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !679
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2954

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2474, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2476
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !340
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !679
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !340 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !679 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <8 x i32>, ptr %i.dr, align 4, !tbaa !3
  %wide.load69 = load <8 x i32>, ptr %i.ds, align 4, !tbaa !3
  %wide.load70 = load <8 x i32>, ptr %i.dt, align 4, !tbaa !3
  %wide.load71 = load <8 x i32>, ptr %i.du, align 4, !tbaa !3
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <8 x i32> %wide.load, ptr %i.dv, align 4, !tbaa !3
  store <8 x i32> %wide.load69, ptr %i.dw, align 4, !tbaa !3
  store <8 x i32> %wide.load70, ptr %i.dx, align 4, !tbaa !3
  store <8 x i32> %wide.load71, ptr %i.dy, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !2955

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <8 x i32>, ptr %i.ed, align 4, !tbaa !3
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ec
  store <8 x i32> %wide.load75, ptr %i.ee, align 4, !tbaa !3
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2956

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.eg
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !3
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2957

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.en
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !3
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2958

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2959

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !2468, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2472
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2952
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !340
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !2953, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !679
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fs
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2954

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4Type13valueToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %3 = alloca %"class.std::shared_ptr.132", align 8 ; 6 uses
  %i.a = icmp eq ptr %1, @_ZZN8facebook5velox8DateType3getEvE9kInstance
  br i1 %i.a, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store ptr @_ZZN8facebook5velox8DateType3getEvE9kInstance, ptr %3, align 8, !tbaa !2960, !alias.scope !2963
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !56, !alias.scope !2963
  invoke void @_ZNK8facebook5velox8DateType8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox8DateType3getEvE9kInstance, i32 noundef %2)
          to label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6 unwind label %bb.b

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %common.resume

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !7, !alias.scope !2966
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !15, !alias.scope !2966
  store i8 0, ptr %i.d, align 8, !tbaa !14, !alias.scope !2966
  %i.f = tail call i32 @llvm.abs.i32(i32 %2, i1 false)
  %i.g = zext i32 %i.f to i64
  %i.h = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.g)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  %.lobit.i.i.i.i.i = lshr i32 %2, 31
  %i.i = zext nneg i32 %.lobit.i.i.i.i.i to i64
  %i.j = add i64 %i.h, %i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j)
          to label %.noexc3.i.i unwind label %bb.d

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %2, ptr noundef nonnull align 8 %0)
          to label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !2966 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !tbaa !14, !alias.scope !2966
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #49
  br label %common.resume

_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEET_RKT0_.exit: ; preds = %.noexc3.i.i, %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6
  ret void
}

declare void @_ZNK8facebook5velox8DateType8toStringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox10FlatVectorIaEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIaEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !367
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIaE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !3482

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3483

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !3484

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !3485
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !3485
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !3488, !noalias !3485
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !3485
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64                   ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ey, %i.ew
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !3491
  store i64 %i.ey, ptr %13, align 16, !tbaa !14, !alias.scope !3494, !noalias !3491
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ew, ptr %i.ez, align 16, !tbaa !14, !alias.scope !3494, !noalias !3491
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !3491
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIaEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIaEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fa, %bb.ak ], [ %i.fb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !1076
  %i.fj = icmp ult i64 %i.fi, %i.ew
  br i1 %i.fj, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fk = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ew)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fn, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIaEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIaEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
  invoke void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %3, ptr noundef nonnull %13, i32 noundef %5, i64 %7, i64 %8, i64 %10, i64 %11)
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !4007

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.714) align 8 %2, ptr noundef byval(%class.anon.715) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !3962, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3965
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !4011
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4012, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3509
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !381
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !229
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ak
  store i16 %i.am, ptr %i.an, align 2, !tbaa !229
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4013

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !3962, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3965
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !4011
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !4012, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3509
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !381
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !229
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bs
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !229
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !4013

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !3966, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3968
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !3509
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !381
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !3509 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !381 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 64
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <16 x i16>, ptr %i.dh, align 2, !tbaa !229
  %wide.load69 = load <16 x i16>, ptr %i.di, align 2, !tbaa !229
  %wide.load70 = load <16 x i16>, ptr %i.dj, align 2, !tbaa !229
  %wide.load71 = load <16 x i16>, ptr %i.dk, align 2, !tbaa !229
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <16 x i16> %wide.load, ptr %i.dl, align 2, !tbaa !229
  store <16 x i16> %wide.load69, ptr %i.dm, align 2, !tbaa !229
  store <16 x i16> %wide.load70, ptr %i.dn, align 2, !tbaa !229
  store <16 x i16> %wide.load71, ptr %i.do, align 2, !tbaa !229
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !4014

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !229
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.dq
  store <8 x i16> %wide.load75, ptr %i.ds, align 2, !tbaa !229
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4015

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !229
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %.020.i
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !229
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !4016

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !229
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.ea
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !229
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4017

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4018

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !3962, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !3965
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !4011
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !4012, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3509
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 120
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !381
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !229
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.ff
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !229
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4013

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.716) align 8 %2, ptr noundef byval(%class.anon.717) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !3986, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3988
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !3981, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !3983, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !3984, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4019

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !3972, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3975
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !4023
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4024, !nonnull !20, !align !3612
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !381
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i16, ptr %i.ae, align 2, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i16 %.pre.i, ptr %gep.i, align 2, !tbaa !229
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4025

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !3972, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3975
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !4023
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4024, !nonnull !20, !align !3612
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 120
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !381
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [2 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i16, ptr %i.bh, align 2, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [2 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i16 %.pre.i39, ptr %gep.i41, align 2, !tbaa !229
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !4025

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !3976, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3978
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !3612 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !381
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [2 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i16, ptr %i.by, align 2, !tbaa !229
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !381 ; 3 uses
  %.pre.i44 = load i16, ptr %i.by, align 2, !tbaa !229 ; 3 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i33                   ; 2 uses
  %i.cu = shl nsw i33 %i.ct, 1
  %i.cv = trunc i64 %i.cs to i33
  %i.cw = add i33 %i.ct, %i.cv
  %i.cx = shl i33 %i.cw, 1
  %i.cy = icmp slt i33 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 64
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %.pre.i44, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 31
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <16 x i16> %broadcast.splat, ptr %i.df, align 2, !tbaa !229
  store <16 x i16> %broadcast.splat, ptr %i.dg, align 2, !tbaa !229
  store <16 x i16> %broadcast.splat, ptr %i.dh, align 2, !tbaa !229
  store <16 x i16> %broadcast.splat, ptr %i.di, align 2, !tbaa !229
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !4026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert80 = insertelement <8 x i16> poison, i16 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <8 x i16> %broadcast.splatinsert80, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 31
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <8 x i16> %broadcast.splat81, ptr %i.dn, align 2, !tbaa !229
  %index.next83 = add nuw i64 %index82, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4027

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 31
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i16 %.pre.i44, ptr %i.dq, align 2, !tbaa !229
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !4028

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [2 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i16 %.pre24.i, ptr %gep.i46, align 2, !tbaa !229
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4029

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4030

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !3972, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !3975
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !4023
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !4024, !nonnull !20, !align !3612
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !381
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [2 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i16, ptr %i.ep, align 2, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [2 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i16 %.pre.i52, ptr %gep.i54, align 2, !tbaa !229
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4025

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.721, align 8            ; 7 uses
  %7 = alloca %class.anon.720, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4031

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !4032, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4035
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox10FlatVectorIsEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIsEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIsEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !381
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIsE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIsEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIsEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !4055

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4056

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !4057

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !4058
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !4058
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !4061, !noalias !4058
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !4058
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIsEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIsEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 1                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !4064
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !4067, !noalias !4064
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !4067, !noalias !4064
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !4064
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIsEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIsEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIsEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIsEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 2 dereferenceable(8) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !3553, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3558
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4076
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !381
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !4077, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3509
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !229
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ak
  store i16 %i.am, ptr %i.an, align 2, !tbaa !229
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4078

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !3553, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3558
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4076
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !381
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !4077, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3509
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !229
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bs
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !229
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !4078

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !3561, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3563
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 120 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !381
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !3509
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !381 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !3509 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 64
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <16 x i16>, ptr %i.dr, align 2, !tbaa !229
  %wide.load69 = load <16 x i16>, ptr %i.ds, align 2, !tbaa !229
  %wide.load70 = load <16 x i16>, ptr %i.dt, align 2, !tbaa !229
  %wide.load71 = load <16 x i16>, ptr %i.du, align 2, !tbaa !229
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <16 x i16> %wide.load, ptr %i.dv, align 2, !tbaa !229
  store <16 x i16> %wide.load69, ptr %i.dw, align 2, !tbaa !229
  store <16 x i16> %wide.load70, ptr %i.dx, align 2, !tbaa !229
  store <16 x i16> %wide.load71, ptr %i.dy, align 2, !tbaa !229
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !4079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !229
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.ec
  store <8 x i16> %wide.load75, ptr %i.ee, align 2, !tbaa !229
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4080

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !229
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.eg
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !229
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !4081

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !229
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.en
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !229
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4082

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4083

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !3553, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3558
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !4076
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !381
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !4077, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !3509
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !229
  %i.fv = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fs
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !229
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4078

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIsE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIlED2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1122
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1125 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.i = icmp ult i64 %i.g, 256
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.g, 255                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.k, align 8, !tbaa !212
  store i64 %i.j, ptr %i.f, align 8, !tbaa !1125
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = load i8, ptr %i.h, align 1, !tbaa !14
  %i.n = icmp eq i64 %i.l, 0
  %i.o = shl i8 %i.m, 3
  %i.p = and i8 %i.o, 120
  %narrow.i.i.i.i = add nuw i8 %i.p, 16
  %i.q = zext i8 %narrow.i.i.i.i to i64
  %i.r = shl i64 128, %i.l
  %.0.i.i.i.i.i = select i1 %i.n, i64 %i.q, i64 %i.r
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !1121
  store i64 0, ptr %i.f, align 8, !tbaa !1125
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %.0.i.i.i.i.i) #39
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1126 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.t, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.e
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %..i.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.f, !inline_history !321

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.s, align 8, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.t, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1129
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !4570

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.803) align 8 %2, ptr noundef byval(%class.anon.804) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !4525, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4528
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !4574
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4575, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !955
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !396
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !212
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !212
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4576

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !4525, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !4528
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !4574
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !4575, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !955
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !396
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !212
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !212
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !4576

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !4529, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !4531
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !955
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !396
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !955 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !396 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x i64>, ptr %i.dh, align 8, !tbaa !212
  %wide.load69 = load <4 x i64>, ptr %i.di, align 8, !tbaa !212
  %wide.load70 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !212
  %wide.load71 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !212
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x i64> %wide.load, ptr %i.dl, align 8, !tbaa !212
  store <4 x i64> %wide.load69, ptr %i.dm, align 8, !tbaa !212
  store <4 x i64> %wide.load70, ptr %i.dn, align 8, !tbaa !212
  store <4 x i64> %wide.load71, ptr %i.do, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !4577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x i64>, ptr %i.dr, align 8, !tbaa !212
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x i64> %wide.load75, ptr %i.ds, align 8, !tbaa !212
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4578

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !212
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !212
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !4579

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !212
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !212
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4580

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4581

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !4525, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !4528
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !4574
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !4575, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !955
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !396
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !212
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !212
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4576

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.805) align 8 %2, ptr noundef byval(%class.anon.806) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !4549, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4551
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !4544, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !4546, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !4547, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4582

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !4535, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4538
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !4586
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4587, !nonnull !20, !align !948
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !396
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !212
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !212
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4588

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !4535, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !4538
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !4586
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4587, !nonnull !20, !align !948
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !396
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !212
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !212
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !4588

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !4539, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !4541
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !396
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !212
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !396 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !212 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <4 x i64> %broadcast.splatinsert80, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x i64> %broadcast.splat81, ptr %i.df, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !212
  store <4 x i64> %broadcast.splat81, ptr %i.di, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !4589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x i64> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !212
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 29
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store i64 %.pre.i44, ptr %i.dq, align 8, !tbaa !212
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !4591

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !212
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4592

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4593

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !4535, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !4538
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !4586
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !4587, !nonnull !20, !align !948
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !396
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i64, ptr %i.ep, align 8, !tbaa !212
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !212
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4588

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.810, align 8            ; 7 uses
  %7 = alloca %class.anon.809, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4594

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !4595, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4598
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox10FlatVectorIlEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !396
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIlE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIlEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !4618

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4619

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !4620

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !4621
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !4621
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !4624, !noalias !4621
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !4621
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIlEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !4627
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !4630, !noalias !4627
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !4630, !noalias !4627
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !4627
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIlEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIlEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIlEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !4126, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4130
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4639
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !396
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !4640, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !955
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !212
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !212
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !4641

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !4126, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !4130
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4639
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !396
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !4640, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !955
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !212
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !212
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !4641

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !4132, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !4134
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !396
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !955
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !396 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !955 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x i64>, ptr %i.dr, align 8, !tbaa !212
  %wide.load69 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !212
  %wide.load70 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !212
  %wide.load71 = load <4 x i64>, ptr %i.du, align 8, !tbaa !212
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !212
  store <4 x i64> %wide.load69, ptr %i.dw, align 8, !tbaa !212
  store <4 x i64> %wide.load70, ptr %i.dx, align 8, !tbaa !212
  store <4 x i64> %wide.load71, ptr %i.dy, align 8, !tbaa !212
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !4642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !212
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x i64> %wide.load75, ptr %i.ee, align 8, !tbaa !212
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4643

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !212
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !212
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !4644

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !212
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !212
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !4645

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !4646

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !4126, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !4130
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !4639
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !396
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !4640, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !955
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !212
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !212
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !4641

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox4Type13valueToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox16ShortDecimalTypeE, i64 16)
  %i.c = icmp eq ptr %i.a, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread, label %bb.b

_ZNK8facebook5velox4Type9isDecimalEv.exit.thread: ; preds = %bb.a
  %i.d = sext i64 %2 to i128
  tail call void @_ZN8facebook5velox15LongDecimalType8toStringB5cxx11EnRKNS0_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i128 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(18) %1)
  br label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !7, !alias.scope !4647
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !4647
  store i8 0, ptr %i.e, align 8, !tbaa !14, !alias.scope !4647
  %i.g = tail call i64 @llvm.abs.i64(i64 %2, i1 false)
  %i.h = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.g)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  %.lobit.i.i.i.i.i = lshr i64 %2, 63
  %i.i = add i64 %i.h, %.lobit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
          to label %.noexc3.i.i unwind label %bb.c

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %2, ptr noundef nonnull align 8 %0)
          to label %_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc3.i.i, %.noexc.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !11, !alias.scope !4647 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !tbaa !14, !alias.scope !4647
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.j

_ZN8facebook5veloxL2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEET_RKT0_.exit: ; preds = %.noexc3.i.i, %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread
  ret void
}

declare void @_ZN8facebook5velox15LongDecimalType8toStringB5cxx11EnRKNS0_4TypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i128 noundef, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox16ShortDecimalTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE4EEE, i64 192), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.c) #39, !inline_history !4652
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(544) %i.b) #39, !inline_history !4652
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE7childAtEj(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE7childAtEjE18veloxCheckFailArgs, ptr noundef nonnull @.str.52) #50
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE4EE15isPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE12isComparableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE4EE11isOrderableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE4EE4nameEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !5192

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.968) align 8 %2, ptr noundef byval(%class.anon.969) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5147, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5150
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5196
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5197, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !4695
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !410
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !239
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store float %i.am, ptr %i.an, align 4, !tbaa !239
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5198

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !5147, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5150
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !5196
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !5197, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !4695
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !410
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !239
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store float %i.bu, ptr %i.bv, align 4, !tbaa !239
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !5198

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !5151, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !5153
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !4695
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !410
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !4695 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !410 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <8 x float>, ptr %i.dh, align 4, !tbaa !239
  %wide.load69 = load <8 x float>, ptr %i.di, align 4, !tbaa !239
  %wide.load70 = load <8 x float>, ptr %i.dj, align 4, !tbaa !239
  %wide.load71 = load <8 x float>, ptr %i.dk, align 4, !tbaa !239
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <8 x float> %wide.load, ptr %i.dl, align 4, !tbaa !239
  store <8 x float> %wide.load69, ptr %i.dm, align 4, !tbaa !239
  store <8 x float> %wide.load70, ptr %i.dn, align 4, !tbaa !239
  store <8 x float> %wide.load71, ptr %i.do, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !5199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <8 x float>, ptr %i.dr, align 4, !tbaa !239
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dq
  store <8 x float> %wide.load75, ptr %i.ds, align 4, !tbaa !239
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !239
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.020.i
  store float %i.dv, ptr %i.dw, align 4, !tbaa !239
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !5201

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !239
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ea
  store float %i.ec, ptr %i.ed, align 4, !tbaa !239
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5202

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5203

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !5147, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !5150
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !5196
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !5197, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !4695
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !410
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !239
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ff
  store float %i.fh, ptr %i.fi, align 4, !tbaa !239
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5198

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.970) align 8 %2, ptr noundef byval(%class.anon.971) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5171, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5173
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !5166, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !5168, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !5169, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5204

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5157, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5160
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5208
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5209, !nonnull !20, !align !950
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !410
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load float, ptr %i.ae, align 4, !tbaa !239
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ai
  store float %.pre.i, ptr %gep.i, align 4, !tbaa !239
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5210

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !5157, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !5160
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !5208
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5209, !nonnull !20, !align !950
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !410
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load float, ptr %i.bh, align 4, !tbaa !239
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store float %.pre.i39, ptr %gep.i41, align 4, !tbaa !239
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !5210

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !5161, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !5163
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !950 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !410
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load float, ptr %i.by, align 4, !tbaa !239
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !410 ; 3 uses
  %.pre.i44 = load float, ptr %i.by, align 4, !tbaa !239 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i34                   ; 2 uses
  %i.cu = shl nsw i34 %i.ct, 2
  %i.cv = trunc i64 %i.cs to i34
  %i.cw = add i34 %i.ct, %i.cv
  %i.cx = shl i34 %i.cw, 2
  %i.cy = icmp slt i34 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 32
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <8 x float> poison, float %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <8 x float> %broadcast.splatinsert80, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 30
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <8 x float> %broadcast.splat81, ptr %i.df, align 4, !tbaa !239
  store <8 x float> %broadcast.splat81, ptr %i.dg, align 4, !tbaa !239
  store <8 x float> %broadcast.splat81, ptr %i.dh, align 4, !tbaa !239
  store <8 x float> %broadcast.splat81, ptr %i.di, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !5211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 30
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <8 x float> %broadcast.splat81, ptr %i.dn, align 4, !tbaa !239
  %index.next83 = add nuw i64 %index82, 8         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5212

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 30
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store float %.pre.i44, ptr %i.dq, align 4, !tbaa !239
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !5213

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [4 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store float %.pre24.i, ptr %gep.i46, align 4, !tbaa !239
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5214

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5215

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !5157, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !5160
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !5208
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !5209, !nonnull !20, !align !950
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !410
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load float, ptr %i.ep, align 4, !tbaa !239
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %i.et
  store float %.pre.i52, ptr %gep.i54, align 4, !tbaa !239
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5210

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.975, align 8            ; 7 uses
  %7 = alloca %class.anon.974, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5216

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !5217, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5220
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox10FlatVectorIfEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIfEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIfEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !410
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIfE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIfEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIfEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !5240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !5242

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !5243
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !5243
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !5246, !noalias !5243
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !5243
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIfEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIfEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 2                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !5249
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !5252, !noalias !5249
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !5252, !noalias !5249
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !5249
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIfEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIfEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIfEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIfEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !4739, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !4744
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5261
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !410
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !5262, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !4695
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !239
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store float %i.am, ptr %i.an, align 4, !tbaa !239
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5263

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !4739, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !4744
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !5261
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !410
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !5262, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4695
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !239
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store float %i.bu, ptr %i.bv, align 4, !tbaa !239
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !5263

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !4747, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !4749
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !410
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !4695
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !410 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !4695 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <8 x float>, ptr %i.dr, align 4, !tbaa !239
  %wide.load69 = load <8 x float>, ptr %i.ds, align 4, !tbaa !239
  %wide.load70 = load <8 x float>, ptr %i.dt, align 4, !tbaa !239
  %wide.load71 = load <8 x float>, ptr %i.du, align 4, !tbaa !239
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <8 x float> %wide.load, ptr %i.dv, align 4, !tbaa !239
  store <8 x float> %wide.load69, ptr %i.dw, align 4, !tbaa !239
  store <8 x float> %wide.load70, ptr %i.dx, align 4, !tbaa !239
  store <8 x float> %wide.load71, ptr %i.dy, align 4, !tbaa !239
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !5264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <8 x float>, ptr %i.ed, align 4, !tbaa !239
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ec
  store <8 x float> %wide.load75, ptr %i.ee, align 4, !tbaa !239
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5265

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !239
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.eg
  store float %i.ei, ptr %i.ej, align 4, !tbaa !239
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !5266

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !239
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.en
  store float %i.ep, ptr %i.eq, align 4, !tbaa !239
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5267

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5268

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !4739, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !4744
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !5261
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !410
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !5262, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !4695
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !239
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fs
  store float %i.fu, ptr %i.fv, align 4, !tbaa !239
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5263

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIfE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(float noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.double_conversion::DoubleToStringConverter", align 8 ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %6 = alloca %"class.double_conversion::StringBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store i32 %4, ptr %5, align 8, !tbaa !5269
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.206, ptr %i.b, align 8, !tbaa !5271
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.207, ptr %i.c, align 8, !tbaa !5272
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 69, ptr %i.d, align 8, !tbaa !5273
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <4 x i32> <i32 -6, i32 21, i32 6, i32 1>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.f, align 4, !tbaa !5274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store ptr %i.a, ptr %6, align 8, !tbaa !5275
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 256, ptr %i.g, align 8, !tbaa !5277
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !5278
  %i.i = fpext float %0 to double                 ; 3 uses
  switch i32 %2, label %bb.d [
    i32 0, label %.invoke
    i32 1, label %.invoke
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.invoke, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.invoke:                                          ; preds = %bb.a, %bb.a
  %i.k = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS_13StringBuilderENS0_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %i.i, ptr noundef nonnull %6, i32 noundef %2)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.l = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter7ToFixedEdiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %i.i, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.m = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %i.i, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.e:                                             ; preds = %.invoke, %bb.c, %bb.d
  %i.n = load i32, ptr %i.h, align 8, !tbaa !5278 ; 3 uses
  %i.o = load ptr, ptr %6, align 8, !tbaa !5275
  %i.p = sext i32 %i.n to i64                     ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !14
  store i32 -1, ptr %i.h, align 8, !tbaa !5278
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !15   ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.p
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.187) #50
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.e
  %i.v = add i64 %i.s, %i.p                       ; 3 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.z = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.v, %i.ab
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i = icmp eq i32 %i.n, 1
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.a, align 16, !tbaa !14
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !14
  br label %bb.l

end_hunk_21
begin_hunk_22_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !5776

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1062) align 8 %2, ptr noundef byval(%class.anon.1063) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5731, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5734
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5780
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5781, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !5280
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !425
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !243
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !243
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5782

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !5731, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5734
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !5780
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !5781, !nonnull !20, !align !948
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !5280
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !425
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !243
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store double %i.bu, ptr %i.bv, align 8, !tbaa !243
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !5782

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !5735, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !5737
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !5280
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !425
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !5280 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !425 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax, 1                  ; 3 uses
  %n.vec73 = sub nuw i64 %i.db, %n.mod.vf72       ; 3 uses
  %i.df = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dg = add nuw i64 %index, %i.cx               ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x double>, ptr %i.dh, align 8, !tbaa !243
  %wide.load69 = load <4 x double>, ptr %i.di, align 8, !tbaa !243
  %wide.load70 = load <4 x double>, ptr %i.dj, align 8, !tbaa !243
  %wide.load71 = load <4 x double>, ptr %i.dk, align 8, !tbaa !243
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x double> %wide.load, ptr %i.dl, align 8, !tbaa !243
  store <4 x double> %wide.load69, ptr %i.dm, align 8, !tbaa !243
  store <4 x double> %wide.load70, ptr %i.dn, align 8, !tbaa !243
  store <4 x double> %wide.load71, ptr %i.do, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !5783

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add nuw i64 %index74, %i.cx             ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x double>, ptr %i.dr, align 8, !tbaa !243
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x double> %wide.load75, ptr %i.ds, align 8, !tbaa !243
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5784

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !243
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store double %i.dv, ptr %i.dw, align 8, !tbaa !243
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !5785

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !243
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store double %i.ec, ptr %i.ed, align 8, !tbaa !243
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5786

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5787

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !5731, !range !19, !noundef !20
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !5734
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !212
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !5780
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !5781, !nonnull !20, !align !948
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !5280
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !425
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !243
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store double %i.fh, ptr %i.fi, align 8, !tbaa !243
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5782

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.1064) align 8 %2, ptr noundef byval(%class.anon.1065) align 8 %3) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5755, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5757
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !5750, !nonnull !20, !align !948
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !5752, !nonnull !20, !align !948
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !5753, !nonnull !20, !align !948
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !955
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !955
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !212
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !14
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5788

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
end_hunk_22
begin_hunk_23_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_:bb.a
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5741, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5744
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5792
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5793, !nonnull !20, !align !948
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !425
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load double, ptr %i.ae, align 8, !tbaa !243
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store double %.pre.i, ptr %gep.i, align 8, !tbaa !243
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5794

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !5741, !range !19, !noundef !20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !5744
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !212
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !5792
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5793, !nonnull !20, !align !948
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !425
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load double, ptr %i.bh, align 8, !tbaa !243
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store double %.pre.i39, ptr %gep.i41, align 8, !tbaa !243
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !5794

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !5745, !range !19, !noundef !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !5747
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !948 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !212
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !425
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load double, ptr %i.by, align 8, !tbaa !243
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !425 ; 3 uses
  %.pre.i44 = load double, ptr %i.by, align 8, !tbaa !243 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %n.mod.vf78 = and i64 %umax76, 1                ; 3 uses
  %n.vec79 = sub i64 %i.cp, %n.mod.vf78           ; 3 uses
  %i.db = add i64 %n.vec79, %i.cm                 ; 2 uses
  %broadcast.splatinsert80 = insertelement <4 x double> poison, double %.pre.i44, i64 0
  %broadcast.splat81 = shufflevector <4 x double> %broadcast.splatinsert80, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dc = add nuw i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x double> %broadcast.splat81, ptr %i.df, align 8, !tbaa !243
  store <4 x double> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !243
  store <4 x double> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !243
  store <4 x double> %broadcast.splat81, ptr %i.di, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !5795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add nuw i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x double> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !243
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5796

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n84, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.db, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.db, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dr, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dp = ashr exact i64 %sext.i, 29
  %i.dq = getelementptr inbounds i8, ptr %i.cn, i64 %i.dp
  store double %.pre.i44, ptr %i.dq, align 8, !tbaa !243
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !5797

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store double %.pre24.i, ptr %gep.i46, align 8, !tbaa !243
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5798

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5799

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !5741, !range !19, !noundef !20
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !5744
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !5792
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !5793, !nonnull !20, !align !948
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !425
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load double, ptr %i.ep, align 8, !tbaa !243
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store double %.pre.i52, ptr %gep.i54, align 8, !tbaa !243
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5794

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.1069, align 8           ; 7 uses
  %7 = alloca %class.anon.1068, align 8           ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5800

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !5801, !range !19, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5804
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !212
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
end_hunk_23
begin_hunk_24_@_ZN8facebook5velox10FlatVectorIdEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIdEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIdEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !425
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorIdE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIdEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIdEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !5824

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5825

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !5826

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !5827
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !5827
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !5830, !noalias !5827
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !5827
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIdEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIdEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !5833
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !5836, !noalias !5833
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !5836, !noalias !5833
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !5833
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorIdEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIdEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorIdEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIdEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_24
begin_hunk_25_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !5323, !range !19, !noundef !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5328
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !212
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5845
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !425
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !5846, !nonnull !20, !align !948
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !5280
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !243
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !243
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !5847

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !5323, !range !19, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5328
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !5845
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !425
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !5846, !nonnull !20, !align !948
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !5280
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !243
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store double %i.bu, ptr %i.bv, align 8, !tbaa !243
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !5847

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !5331, !range !19, !noundef !20
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !5333
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !20, !align !948 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.et, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !425
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !5280
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !425 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !5280 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %n.mod.vf72 = and i64 %umax67, 1                ; 3 uses
  %n.vec73 = sub i64 %i.db, %n.mod.vf72           ; 3 uses
  %i.dn = add i64 %n.vec73, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.do = add nuw i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x double>, ptr %i.dr, align 8, !tbaa !243
  %wide.load69 = load <4 x double>, ptr %i.ds, align 8, !tbaa !243
  %wide.load70 = load <4 x double>, ptr %i.dt, align 8, !tbaa !243
  %wide.load71 = load <4 x double>, ptr %i.du, align 8, !tbaa !243
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x double> %wide.load, ptr %i.dv, align 8, !tbaa !243
  store <4 x double> %wide.load69, ptr %i.dw, align 8, !tbaa !243
  store <4 x double> %wide.load70, ptr %i.dx, align 8, !tbaa !243
  store <4 x double> %wide.load71, ptr %i.dy, align 8, !tbaa !243
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !5848

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add nuw i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x double>, ptr %i.ed, align 8, !tbaa !243
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x double> %wide.load75, ptr %i.ee, align 8, !tbaa !243
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5849

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dn, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.dn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ek, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eg = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !243
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store double %i.ei, ptr %i.ej, align 8, !tbaa !243
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !5850

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !243
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store double %i.ep, ptr %i.eq, align 8, !tbaa !243
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !5851

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !5852

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !5323, !range !19, !noundef !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !5328
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !212
  %i.fe = xor i8 %i.ey, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = xor i64 %i.fd, %i.fg
  %i.fi = and i64 %i.fh, %i.ex                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fi, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !5845
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !425
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !5846, !nonnull !20, !align !948
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !5280
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !243
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store double %i.fu, ptr %i.fv, align 8, !tbaa !243
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !5847

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIdE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_NS_8DtoaModeEjNS_9DtoaFlagsE(double noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.double_conversion::DoubleToStringConverter", align 8 ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %6 = alloca %"class.double_conversion::StringBuilder", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store i32 %4, ptr %5, align 8, !tbaa !5269
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.206, ptr %i.b, align 8, !tbaa !5271
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.207, ptr %i.c, align 8, !tbaa !5272
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 69, ptr %i.d, align 8, !tbaa !5273
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store <4 x i32> <i32 -6, i32 21, i32 6, i32 1>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.f, align 4, !tbaa !5274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  store ptr %i.a, ptr %6, align 8, !tbaa !5275
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 256, ptr %i.g, align 8, !tbaa !5277
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !5278
  switch i32 %2, label %bb.e [
    i32 0, label %.invoke
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.invoke, %bb.e, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.j = fptrunc double %0 to float
  %i.k = fpext float %i.j to double
  br label %.invoke

.invoke:                                          ; preds = %bb.a, %bb.c
  %i.l = phi double [ %i.k, %bb.c ], [ %0, %bb.a ]
  %i.m = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS_13StringBuilderENS0_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %i.l, ptr noundef nonnull %6, i32 noundef %2)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.n = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter7ToFixedEdiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %0, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.e:                                             ; preds = %bb.a
  %i.o = invoke noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %0, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.b       ; 0 uses

bb.f:                                             ; preds = %.invoke, %bb.d, %bb.e
  %i.p = load i32, ptr %i.h, align 8, !tbaa !5278 ; 3 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !5275
  %i.r = sext i32 %i.p to i64                     ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !14
  store i32 -1, ptr %i.h, align 8, !tbaa !5278
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15   ; 5 uses
  %i.v = sub i64 9223372036854775807, %i.u
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.187) #50
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.f
  %i.x = add i64 %i.u, %i.r                       ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ab = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.x, %i.ad
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u ; 2 uses
  %cond.i.i = icmp eq i32 %i.p, 1
  br i1 %cond.i.i, label %bb.j, label %bb.k

end_hunk_25
begin_hunk_26_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_9TimestampEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !440
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !6401

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6402

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !6403

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !6404
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !6404
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !6407, !noalias !6404
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !6404
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 4                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !6410
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !6413, !noalias !6410
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !6413, !noalias !6410
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !6410
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_9TimestampEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_9TimestampEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_26
begin_hunk_27_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i34 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !293
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !293
  store ptr null, ptr %5, align 8, !tbaa !293
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !620
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1203
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1203
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1129
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1126 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1127 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !293 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !321

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !322
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !321

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1128

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1126
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1129
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #49
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !293 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !293
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !69

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.139) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #39
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #39
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1130 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i36 = icmp sgt i32 %i.ci, 0
  br i1 %.not.i.i.i36, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.cj = and i32 %i.ci, 2147483584               ; 3 uses
  %.not3342.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3342.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aa
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = add nsw i64 %i.ck, -64                  ; 3 uses
  %i.cm = lshr exact i64 %i.cl, 6
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.cl, 960
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cn, 12
  %n.vec = and i64 %i.cn, 576460752303423472      ; 4 uses
  %i.co = shl i64 %n.vec, 6                       ; 2 uses
  %i.cp = or disjoint i64 %i.co, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %i.cq = shl nuw nsw i64 %index, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cq ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !212
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !212
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !212
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !212
  %i.cv = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.cw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load82)
  %i.cx = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load83)
  %i.cy = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load84)
  %i.cz = trunc nuw nsw <4 x i64> %i.cv to <4 x i32>
  %i.da = trunc nuw nsw <4 x i64> %i.cw to <4 x i32>
  %i.db = trunc nuw nsw <4 x i64> %i.cx to <4 x i32>
  %i.dc = trunc nuw nsw <4 x i64> %i.cy to <4 x i32>
  %i.dd = add <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.de = add <4 x i32> %vec.phi79, %i.da         ; 2 uses
  %i.df = add <4 x i32> %vec.phi80, %i.db         ; 2 uses
  %i.dg = add <4 x i32> %vec.phi81, %i.dc         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !6919

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !699

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.di, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.cn, 576460752303423484    ; 3 uses
  %i.dj = shl i64 %n.vec89, 6                     ; 2 uses
  %i.dk = or disjoint i64 %i.dj, 64
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi91 = phi <4 x i32> [ %i.dl, %vec.epilog.ph ], [ %i.dq, %vec.epilog.vector.body ]
  %i.dm = shl nuw nsw i64 %index90, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dm
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !212
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6920

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ds = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dq) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n94, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv55.ph = phi i64 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 64, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.di, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i37

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i37, %middle.block, %vec.epilog.middle.block, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %i.ds, %vec.epilog.middle.block ], [ %i.di, %middle.block ], [ %i.dz, %.lr.ph.i.i.i37 ] ; 2 uses
  %.not34.i.i.i = icmp eq i32 %i.ci, %i.cj
  br i1 %.not34.i.i.i, label %bb.ab, label %.sink.split.i.i.i

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph.i.i.i37 ], [ %indvars.iv55.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i.i.i37 ], [ %indvars.iv.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.dt = phi i32 [ %i.dz, %.lr.ph.i.i.i37 ], [ %.ph, %.lr.ph.i.i.i37.preheader ]
  %i.du = lshr exact i64 %indvars.iv55, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !212
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !6921

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !212
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1584

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !6922
  store i32 0, ptr %14, align 16, !tbaa !14, !noalias !6922
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !14, !alias.scope !6925, !noalias !6922
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.141, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !6922
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.141) #50
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %bb.ad
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %18, align 8, !tbaa !11   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !31
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 4                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1074 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !69

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39, !noalias !6928
  store i64 %i.ez, ptr %13, align 16, !tbaa !14, !alias.scope !6931, !noalias !6928
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !14, !alias.scope !6931, !noalias !6928
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.23, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39, !noalias !6928
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.23) #50
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.al:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %19, align 8, !tbaa !11   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !14
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1076
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.thread:                                          ; preds = %bb.z, %bb.am, %bb.an, %bb.ab
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fo, %bb.ao ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #39
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #39
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #39
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.5", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %i.b, align 8, !tbaa !56
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !26
  %i.d = load ptr, ptr %4, align 8, !tbaa !293
  store ptr %i.d, ptr %13, align 8, !tbaa !293
  store ptr null, ptr %4, align 8, !tbaa !293
end_hunk_27
