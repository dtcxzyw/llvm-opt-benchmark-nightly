inline.NumInlined: 89673
inline.NumDeleted: 14428
loop-unroll.NumCompletelyUnrolled: 1689
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 1899
begin_hunk_0_@_ZN8facebook5velox10FlatVectorImEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
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
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorImEE, i64 16), ptr %0, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !792
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !792
  store ptr null, ptr %5, align 8, !tbaa !792
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !792 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !798
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !1911
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1105
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1043
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1043
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1045
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1045
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorImE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1044 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1046 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !792 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !832

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !833
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !77
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !832

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1047

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1044
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1045
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #48
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !792 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !792
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !96

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.183) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #24
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #24
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1249 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !791 ; 5 uses
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
  %i.cq = shl i64 %index, 3
  %20 = and i64 %i.cq, 2305843009213693824
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %20 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !368
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !368
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !368
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !368
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
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !1918

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !1093

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
  %i.dm = shl i64 %index90, 3
  %21 = and i64 %i.dm, 2305843009213693920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %21
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !368
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1919

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
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !368
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !1920

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !368
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1921

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !1922
  store i32 0, ptr %14, align 16, !tbaa !17, !alias.scope !1925, !noalias !1922
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !17, !alias.scope !1925, !noalias !1922
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.185, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !1922
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.185) #50
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
  %i.ep = load ptr, ptr %18, align 8, !tbaa !7    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !791
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 3                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !807 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.an, !prof !96

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !1928
  store i64 %i.ez, ptr %13, align 16, !tbaa !17, !alias.scope !1931, !noalias !1928
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !17, !alias.scope !1931, !noalias !1928
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.78, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !1928
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorImEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsImEESt8optionalIiESP_SO_IbESP_SP_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.78) #50
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
  %i.fe = load ptr, ptr %19, align 8, !tbaa !7    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.am
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fc, %bb.al ], [ %i.fd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ap

bb.an:                                            ; preds = %.critedge
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !808
  %i.fl = icmp ult i64 %i.fk, %i.ex
  br i1 %i.fl, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.fm = load ptr, ptr %i.bz, align 8, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 noundef %i.ex)
          to label %.thread unwind label %bb.ak

.thread:                                          ; preds = %bb.z, %bb.an, %bb.ao, %bb.ab
  ret void

bb.ap:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %bb.x
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.cd, %bb.x ], [ %i.fb, %bb.ak ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #24
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #24
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #24
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorImEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsImEESt8optionalIiESL_SK_IbESL_SL_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !75
  store ptr null, ptr %i.b, align 8, !tbaa !72
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !75
  store ptr null, ptr %2, align 8, !tbaa !331
  %i.d = load ptr, ptr %4, align 8, !tbaa !792
  store ptr %i.d, ptr %13, align 8, !tbaa !792
  store ptr null, ptr %4, align 8, !tbaa !792
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_:bb.a
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2420

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.802) align 8 %2, ptr noundef byval(%class.anon.803) align 8 %3) local_unnamed_addr #8 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !2372, !range !307, !noundef !308
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2375
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !368
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2424
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2425, !nonnull !308, !align !414
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !920
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1911
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !368
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !368
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2426

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
  %i.ax = load i8, ptr %2, align 8, !tbaa !2372, !range !307, !noundef !308
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2375
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !368
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
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2424
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2425, !nonnull !308, !align !414
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !920
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1911
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !368
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !368
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2426

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !2376, !range !307, !noundef !308
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2378
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !308, !align !414 ; 2 uses
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
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !368
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !920
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !1911
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
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !920 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !1911 ; 4 uses
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
  %i.dg = add i64 %index, %i.cx                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load = load <4 x i64>, ptr %i.dh, align 8, !tbaa !368
  %wide.load69 = load <4 x i64>, ptr %i.di, align 8, !tbaa !368
  %wide.load70 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !368
  %wide.load71 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !368
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dg ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store <4 x i64> %wide.load, ptr %i.dl, align 8, !tbaa !368
  store <4 x i64> %wide.load69, ptr %i.dm, align 8, !tbaa !368
  store <4 x i64> %wide.load70, ptr %i.dn, align 8, !tbaa !368
  store <4 x i64> %wide.load71, ptr %i.do, align 8, !tbaa !368
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dq = add i64 %index74, %i.cx                 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dq
  %wide.load75 = load <4 x i64>, ptr %i.dr, align 8, !tbaa !368
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dq
  store <4 x i64> %wide.load75, ptr %i.ds, align 8, !tbaa !368
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2428

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n77 = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n77, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.df, %middle.block ], [ %i.cx, %iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !368
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !368
  %i.dx = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cw
  br i1 %i.dy, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2429

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.ef, %bb.j ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.ea = or disjoint i64 %i.dz, %i.cs            ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !368
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ea
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !368
  %i.ee = add i64 %.01519.i, -1
  %i.ef = and i64 %i.ee, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.ef, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2430

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eg = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2431

bb.k:                                             ; preds = %._crit_edge
  %i.eh = ashr i32 %1, 6
  %i.ei = and i32 %1, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i42 = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i42, -1
  %i.el = load i8, ptr %2, align 8, !tbaa !2372, !range !307, !noundef !308
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2375
  %i.eo = sext i32 %i.eh to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !368
  %i.er = xor i8 %i.el, 1
  %i.es = zext nneg i8 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = and i64 %i.eu, %i.ek                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ev, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2424
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !2425, !nonnull !308, !align !414
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !920
  %i.fb = sext i32 %i.d to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1911
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ev, %.preheader.i44 ], [ %i.fk, %bb.l ] ; 3 uses
  %i.fe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ff = or disjoint i64 %i.fe, %i.fb            ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !368
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !368
  %i.fj = add nsw i64 %.011.i45, -1
  %i.fk = and i64 %i.fj, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fk, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2426

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.806) align 8 %2, ptr noundef byval(%class.anon.807) align 8 %3) local_unnamed_addr #8 comdat {
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
  %i.q = load i8, ptr %2, align 8, !tbaa !2397, !range !307, !noundef !308
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2399
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !368
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
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2392, !nonnull !308, !align !414
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !2394, !nonnull !308, !align !414
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !2395, !nonnull !308, !align !414
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !1084
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !920
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !920
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !368
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17  ; 2 uses
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
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !17
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2432

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
  %i.q = load i8, ptr %2, align 8, !tbaa !2382, !range !307, !noundef !308
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2385
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !368
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2436
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2437, !nonnull !308, !align !414
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1911
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !368
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !368
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2438

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
  %i.as = load i8, ptr %2, align 8, !tbaa !2382, !range !307, !noundef !308
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2385
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !368
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
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2436
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2437, !nonnull !308, !align !414
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1911
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !368
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !368
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2438

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !2386, !range !307, !noundef !308
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2388
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !308, !align !414 ; 2 uses
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
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !368
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !1911
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !368
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
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !1911 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !368 ; 2 uses
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
  %i.dc = add i64 %index, %i.cm
  %i.dd = shl i64 %i.dc, 32
  %i.de = ashr exact i64 %i.dd, 29
  %i.df = getelementptr inbounds i8, ptr %i.cn, i64 %i.de ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store <4 x i64> %broadcast.splat81, ptr %i.df, align 8, !tbaa !368
  store <4 x i64> %broadcast.splat81, ptr %i.dg, align 8, !tbaa !368
  store <4 x i64> %broadcast.splat81, ptr %i.dh, align 8, !tbaa !368
  store <4 x i64> %broadcast.splat81, ptr %i.di, align 8, !tbaa !368
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec79
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2439

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf78, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index82 = phi i64 [ %index.next83, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dk = add i64 %index82, %i.cm
  %i.dl = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %i.dl, 29
  %i.dn = getelementptr inbounds i8, ptr %i.cn, i64 %i.dm
  store <4 x i64> %broadcast.splat81, ptr %i.dn, align 8, !tbaa !368
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2440

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
  store i64 %.pre.i44, ptr %i.dq, align 8, !tbaa !368
  %i.dr = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.cl
  br i1 %i.ds, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2441

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dv, %bb.j ] ; 3 uses
  %i.dt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.dt
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !368
  %i.du = add i64 %.01519.i, -1
  %i.dv = and i64 %i.du, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dv, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2442

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dw = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dw, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2443

bb.k:                                             ; preds = %._crit_edge
  %i.dx = ashr i32 %1, 6
  %i.dy = and i32 %1, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %notmask.i48 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i48, -1
  %i.eb = load i8, ptr %2, align 8, !tbaa !2382, !range !307, !noundef !308
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2385
  %i.ee = sext i32 %i.dx to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !368
  %i.eh = xor i8 %i.eb, 1
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = and i64 %i.ek, %i.ea                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.el, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !2436
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2437, !nonnull !308, !align !414
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1911
  %i.es = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.er, i64 %i.es
  %.pre.i52 = load i64, ptr %i.ep, align 8, !tbaa !368
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.el, %.preheader.i50 ], [ %i.ev, %bb.l ] ; 3 uses
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.et
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !368
  %i.eu = add nsw i64 %.011.i53, -1
  %i.ev = and i64 %i.eu, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ev, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2438

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %class.anon.811, align 8            ; 7 uses
  %7 = alloca %class.anon.810, align 8            ; 9 uses
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
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2444

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
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2445, !range !307, !noundef !308
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2448
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !368
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
  %i.q = load i8, ptr %2, align 8, !tbaa !1984, !range !307, !noundef !308
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1988
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !368
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2486
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1911
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2487, !nonnull !308, !align !414
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !920
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !368
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !368
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2488

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
  %i.ax = load i8, ptr %2, align 8, !tbaa !1984, !range !307, !noundef !308
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1988
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !368
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
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2486
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1911
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2487, !nonnull !308, !align !414
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !920
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !368
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !368
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2488

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !1990, !range !307, !noundef !308
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1992
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !308, !align !414 ; 2 uses
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
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !368
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !1911
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !920
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
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !1911 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !920 ; 4 uses
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
  %i.do = add i64 %index, %i.cx
  %i.dp = shl i64 %i.do, 32
  %i.dq = ashr exact i64 %i.dp, 32                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dq ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <4 x i64>, ptr %i.dr, align 8, !tbaa !368
  %wide.load69 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !368
  %wide.load70 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !368
  %wide.load71 = load <4 x i64>, ptr %i.du, align 8, !tbaa !368
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dq ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store <4 x i64> %wide.load, ptr %i.dv, align 8, !tbaa !368
  store <4 x i64> %wide.load69, ptr %i.dw, align 8, !tbaa !368
  store <4 x i64> %wide.load70, ptr %i.dx, align 8, !tbaa !368
  store <4 x i64> %wide.load71, ptr %i.dy, align 8, !tbaa !368
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec73
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !2489

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf72, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index74 = phi i64 [ %index.next76, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ea = add i64 %index74, %i.cx
  %i.eb = shl i64 %i.ea, 32
  %i.ec = ashr exact i64 %i.eb, 32                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ec
  %wide.load75 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !368
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ec
  store <4 x i64> %wide.load75, ptr %i.ee, align 8, !tbaa !368
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2490

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
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !368
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eg
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !368
  %i.ek = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.cw
  br i1 %i.el, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2491

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.es, %bb.j ] ; 3 uses
  %i.em = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.en = or disjoint i64 %i.em, %i.cs            ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !368
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !368
  %i.er = add i64 %.01519.i, -1
  %i.es = and i64 %i.er, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.es, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2492

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.et = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.et, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2493

bb.k:                                             ; preds = %._crit_edge
  %i.eu = ashr i32 %1, 6
  %i.ev = and i32 %1, 63
  %i.ew = zext nneg i32 %i.ev to i64
  %notmask.i42 = shl nsw i64 -1, %i.ew
  %i.ex = xor i64 %notmask.i42, -1
  %i.ey = load i8, ptr %2, align 8, !tbaa !1984, !range !307, !noundef !308
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1988
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !368
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
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !2486
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 144
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1911
  %i.fo = sext i32 %i.d to i64
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !2487, !nonnull !308, !align !414
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !920
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fi, %.preheader.i44 ], [ %i.fx, %bb.l ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fs = or disjoint i64 %i.fr, %i.fo            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !368
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !368
  %i.fw = add nsw i64 %.011.i45, -1
  %i.fx = and i64 %i.fw, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fx, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2488

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !296
  %i.c = load i64, ptr %0, align 8, !tbaa !368
  %i.d = tail call noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = load i64, ptr %0, align 8, !tbaa !368
  %i.f = load ptr, ptr %1, align 8, !tbaa !296    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.g = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.e) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = sub i64 9223372036854775807, %i.i
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #50
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.l = add i64 %i.i, %i.g                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !17
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
  %i.t = load i8, ptr %i.a, align 16, !tbaa !17
  store i8 %i.t, ptr %i.s, align 1, !tbaa !17
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.i, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.g)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.l, ptr %i.h, align 8, !tbaa !16
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #50
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !96

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #50
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_:bb.a
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
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
  br i1 %i.an, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16), ptr %0, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !792
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !792
  store ptr null, ptr %5, align 8, !tbaa !792
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !792 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !798
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ null, %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !771
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aw, align 8, !tbaa !1105
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load <2 x ptr>, ptr %6, align 8, !tbaa !1043
  store <2 x ptr> %i.ay, ptr %17, align 16, !tbaa !1043
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1045
  store ptr %i.bb, ptr %i.az, align 16, !tbaa !1045
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull %17)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bd = load ptr, ptr %17, align 16, !tbaa !1044 ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1046 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !792 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.r, !inline_history !832

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !833
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !77
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %..i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(64) %i.bf)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.r, !inline_history !832

bb.r:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bt, %i.be
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1047

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 16, !tbaa !1044
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bd, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = load ptr, ptr %i.az, align 16, !tbaa !1045
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #48
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  %i.bz = load ptr, ptr %i.ao, align 8, !tbaa !792 ; 5 uses
  %.not53 = icmp eq ptr %i.bz, null
  br i1 %.not53, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !792
  %.not54 = icmp eq ptr %i.cb, null
  br i1 %.not54, label %bb.u, label %bb.z, !prof !96

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_0, ptr noundef nonnull @.str.183) #50
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #24
  br label %bb.aq

bb.x:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #24
  br label %bb.ap

bb.y:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1249 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !791 ; 5 uses
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
  %i.cq = shl i64 %index, 3
  %20 = and i64 %i.cq, 2305843009213693824
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %20 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %wide.load = load <4 x i64>, ptr %i.cr, align 8, !tbaa !368
  %wide.load82 = load <4 x i64>, ptr %i.cs, align 8, !tbaa !368
  %wide.load83 = load <4 x i64>, ptr %i.ct, align 8, !tbaa !368
  %wide.load84 = load <4 x i64>, ptr %i.cu, align 8, !tbaa !368
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
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !2562

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.de, %i.dd
  %bin.rdx85 = add <4 x i32> %i.df, %bin.rdx
  %bin.rdx86 = add <4 x i32> %i.dg, %bin.rdx85
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 3 uses
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph, !prof !1093

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
  %i.dm = shl i64 %index90, 3
  %21 = and i64 %i.dm, 2305843009213693920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %21
  %wide.load92 = load <4 x i64>, ptr %i.dn, align 8, !tbaa !368
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load92)
  %i.dp = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi91, %i.dp         ; 2 uses
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2563

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
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !368
  %i.dx = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dw)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dt, %i.dy            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %.not33.i.i.i.not = icmp samesign ult i64 %indvars.iv, %i.ck
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 64
  br i1 %.not33.i.i.i.not, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i, !llvm.loop !2564

.sink.split.i.i.i:                                ; preds = %._crit_edge.i.i.i
  %i.ea = lshr i32 %i.ci, 6
  %i.eb = and i32 %i.ci, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i36.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = xor i64 %notmask.i36.i.i.i, -1
  %i.ee = zext nneg i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !368
  %i.eh = and i64 %i.eg, %i.ed
  %i.ei = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.eh)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %.1.i.i, %i.ej
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i.i, %._crit_edge.i.i.i
  %.3.i.i = phi i32 [ %i.ek, %.sink.split.i.i.i ], [ %.1.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.not26 = icmp eq i32 %.3.i.i, 0
  br i1 %.not26, label %.thread, label %bb.ac, !prof !1921

bb.ac:                                            ; preds = %bb.ab
  %i.el = sext i32 %.3.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !2565
  store i32 0, ptr %14, align 16, !tbaa !17, !alias.scope !2568, !noalias !2565
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.el, ptr %i.em, align 16, !tbaa !17, !alias.scope !2568, !noalias !2565
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.185, i64 77, i64 65, ptr nonnull %14)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !2565
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.185) #50
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
  %i.ep = load ptr, ptr %18, align 8, !tbaa !7    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn27 = phi { ptr, i32 } [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.en, %bb.af ], [ %i.eo, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ap

.critedge:                                        ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !791
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 4                    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !807 ; 2 uses
  %.not23 = icmp ult i64 %i.ez, %i.ex
  br i1 %.not23, label %bb.ah, label %bb.am, !prof !96

bb.ah:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !2571
  store i64 %i.ez, ptr %13, align 16, !tbaa !17, !alias.scope !2574, !noalias !2571
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ex, ptr %i.fa, align 16, !tbaa !17, !alias.scope !2574, !noalias !2571
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.78, i64 11, i64 68, ptr nonnull %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !2571
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_10StringViewEEC1EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_E18veloxCheckFailArgs_4, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr nonnull @.str.78) #50
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
  %i.fd = load ptr, ptr %19, align 8, !tbaa !7    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.al
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !17
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.fb, %bb.ak ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.ap

bb.am:                                            ; preds = %.critedge
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !808
  %i.fk = icmp ult i64 %i.fj, %i.ex
  br i1 %i.fk, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !77
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
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #24
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #24
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #24
  call void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.w
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %bb.ap ], [ %i.cc, %bb.w ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox12SimpleVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiRKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESM_SL_IbESM_SM_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i64 %8, i16 %9, i64 %10, i64 %11) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::shared_ptr.50", align 16 ; 4 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !75
  store ptr null, ptr %i.b, align 8, !tbaa !72
  store <2 x ptr> %i.c, ptr %12, align 16, !tbaa !75
  store ptr null, ptr %2, align 8, !tbaa !331
  %i.d = load ptr, ptr %4, align 8, !tbaa !792
  store ptr %i.d, ptr %13, align 8, !tbaa !792
  store ptr null, ptr %4, align 8, !tbaa !792
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !6589 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6565, !nonnull !308, !align !414
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2667, !noalias !6590
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6567, !nonnull !308, !align !414
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !6571, !nonnull !308, !align !414
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.028.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ar, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.am
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !noalias !6590
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !368
  %i.aq = add nsw i64 %.028.i, -1
  %i.ar = and i64 %i.aq, %.028.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ar, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !6593

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = sdiv i32 %0, 64                         ; 2 uses
  %i.at = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i35, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = load i8, ptr %2, align 8, !tbaa !6582, !range !307, !noundef !308
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !6585
  %i.bc = sext i32 %i.as to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !368
  %i.bf = xor i8 %i.az, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = and i64 %i.bi, %i.ay                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bj, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = shl nsw i32 %i.as, 6
  %i.bm = sext i32 %i.bl to i64
  %.pre.i38 = load ptr, ptr %i.bk, align 8, !tbaa !6589 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !6565, !nonnull !308, !align !414
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2667, !noalias !6594
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !6567, !nonnull !308, !align !414
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !6571, !nonnull !308, !align !414
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.028.i40 = phi i64 [ %i.bj, %.preheader.i37 ], [ %i.cb, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i40, i1 true)
  %i.bw = or disjoint i64 %i.bv, %i.bm            ; 2 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bw
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.bx, align 8, !noalias !6594
  %i.by = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !368
  %i.ca = add i64 %.028.i40, -1
  %i.cb = and i64 %i.ca, %.028.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cb, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !6593

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cc = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3358 = icmp sgt i32 %i.cc, %i.d
  br i1 %.not3358, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %i.cd = load i8, ptr %3, align 8, !tbaa !6586, !range !307, !noundef !308
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !6588
  %i.cg = xor i8 %i.cd, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i44 = load ptr, ptr %i.cj, align 8        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.cm = phi i32 [ %i.cc, %.lr.ph ], [ %i.ge, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.059 = phi i32 [ %i.c, %.lr.ph ], [ %i.cm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cn = sdiv i32 %.059, 64                      ; 3 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !368
  %i.cr = xor i64 %i.cq, %i.ci                    ; 2 uses
  switch i64 %i.cr, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cs = shl nsw i32 %i.cn, 6
  %i.ct = sext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !6565, !nonnull !308, !align !414
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2667, !noalias !6597
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !6567, !nonnull !308, !align !414
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !6571, !nonnull !308, !align !414
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

bb.g:                                             ; preds = %bb.f
  %i.da = shl nsw i32 %i.cn, 6                    ; 4 uses
  %i.db = add i32 %i.da, 64
  %i.dc = sext i32 %i.db to i64                   ; 4 uses
  %.0.off = add i32 %.059, 127
  %.not79.i = icmp ult i32 %.0.off, 64
  br i1 %.not79.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dd = sext i32 %i.da to i64                   ; 12 uses
  %i.de = load ptr, ptr %i.ck, align 8, !tbaa !6565, !nonnull !308, !align !414
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2667, !noalias !6600 ; 8 uses
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !6567, !nonnull !308, !align !414
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !6571, !nonnull !308, !align !414
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !920 ; 5 uses
  %i.dk = or disjoint i64 %i.dd, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dc) ; 5 uses
  %i.dl = sub i64 %umax80, %i.dd                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.dl, 5
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dm = or disjoint i64 %i.dd, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dc)
  %i.dn = xor i64 %i.dd, -1
  %i.do = add i64 %umax, %i.dn                    ; 2 uses
  %i.dp = sext i32 %i.da to i36                   ; 2 uses
  %i.dq = shl nsw i36 %i.dp, 4
  %i.dr = trunc i64 %i.do to i36
  %i.ds = add i36 %i.dp, %i.dr
  %i.dt = shl i36 %i.ds, 4
  %i.du = icmp slt i36 %i.dt, %i.dq
  %i.dv = icmp ugt i64 %i.do, 4294967295
  %i.dw = or i1 %i.du, %i.dv
  br i1 %i.dw, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dx = shl nsw i64 %i.dd, 3
  %scevgep = getelementptr nuw i8, ptr %i.dj, i64 %i.dx
  %i.dy = or disjoint i64 %i.dd, 1
  %umax75 = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dc) ; 2 uses
  %i.dz = shl nsw i64 %umax75, 3
  %scevgep76 = getelementptr i8, ptr %i.dj, i64 %i.dz
  %i.ea = sext i32 %i.da to i36
  %i.eb = shl nsw i36 %i.ea, 4
  %i.ec = sext i36 %i.eb to i64                   ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.df, i64 %i.ec
  %scevgep78 = getelementptr i8, ptr %i.df, i64 -8
  %i.ed = shl nsw i64 %umax75, 4
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = shl nsw i64 %i.dd, 4
  %i.eg = sub i64 %i.ee, %i.ef
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.eg
  %bound0 = icmp ult ptr %scevgep, %scevgep79
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dl, 17
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = trunc i64 %umax80 to i1                 ; 2 uses
  %.neg = select i1 %i.eh, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.dl                   ; 2 uses
  %i.ei = add i64 %.neg, %umax80
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = add i64 %index, %i.dd                   ; 5 uses
  %i.ek = shl i64 %i.ej, 32
  %i.el = shl i64 %i.ej, 32
  %i.em = shl i64 %i.ej, 32
  %i.en = shl i64 %i.ej, 32
  %i.eo = ashr exact i64 %i.ek, 28
  %i.ep = ashr exact i64 %i.el, 28
  %i.eq = ashr exact i64 %i.em, 28
  %i.er = ashr exact i64 %i.en, 28
  %i.es = getelementptr inbounds i8, ptr %i.df, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.df, i64 %i.ep
  %i.eu = getelementptr i8, ptr %i.et, i64 64
  %i.ev = getelementptr i8, ptr %i.df, i64 %i.eq
  %i.ew = getelementptr i8, ptr %i.ev, i64 128
  %i.ex = getelementptr i8, ptr %i.df, i64 %i.er
  %i.ey = getelementptr i8, ptr %i.ex, i64 192
  %wide.vec = load <8 x i64>, ptr %i.es, align 8, !alias.scope !6603, !noalias !6600
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec82 = load <8 x i64>, ptr %i.eu, align 8, !alias.scope !6603, !noalias !6600
  %strided.vec83 = shufflevector <8 x i64> %wide.vec82, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec84 = load <8 x i64>, ptr %i.ew, align 8, !alias.scope !6603, !noalias !6600
  %strided.vec85 = shufflevector <8 x i64> %wide.vec84, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec86 = load <8 x i64>, ptr %i.ey, align 8, !alias.scope !6603, !noalias !6600
  %strided.vec87 = shufflevector <8 x i64> %wide.vec86, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ez = and <4 x i64> %strided.vec, splat (i64 4294967295)
  %i.fa = and <4 x i64> %strided.vec83, splat (i64 4294967295)
  %i.fb = and <4 x i64> %strided.vec85, splat (i64 4294967295)
  %i.fc = and <4 x i64> %strided.vec87, splat (i64 4294967295)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ej ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  store <4 x i64> %i.ez, ptr %i.fd, align 8, !tbaa !368, !alias.scope !6606, !noalias !6603
  store <4 x i64> %i.fa, ptr %i.fe, align 8, !tbaa !368, !alias.scope !6606, !noalias !6603
  store <4 x i64> %i.fb, ptr %i.ff, align 8, !tbaa !368, !alias.scope !6606, !noalias !6603
  store <4 x i64> %i.fc, ptr %i.fg, align 8, !tbaa !368, !alias.scope !6606, !noalias !6603
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6608

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %i.eh, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.ph, !prof !1093

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf88 = and i64 %umax80, 1
  %i.fi = icmp eq i64 %n.mod.vf88, 0
  %.neg95 = select i1 %i.fi, i64 -4, i64 -1       ; 2 uses
  %n.vec89 = add i64 %.neg95, %i.dl
  %i.fj = add i64 %.neg95, %umax80
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.fk = add i64 %index90, %i.dd                 ; 2 uses
  %i.fl = shl i64 %i.fk, 32
  %i.fm = ashr exact i64 %i.fl, 28
  %i.fn = getelementptr inbounds i8, ptr %i.df, i64 %i.fm
  %wide.vec91 = load <8 x i64>, ptr %i.fn, align 8, !alias.scope !6603, !noalias !6600
  %strided.vec92 = shufflevector <8 x i64> %wide.vec91, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fo = and <4 x i64> %strided.vec92, splat (i64 4294967295)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fk
  store <4 x i64> %i.fo, ptr %i.fp, align 8, !tbaa !368, !alias.scope !6606, !noalias !6603
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.fq = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.fq, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.vector.body, !llvm.loop !6609

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %.078.i.ph = phi i64 [ %i.dd, %iter.check ], [ %i.dd, %vector.scevcheck ], [ %i.dd, %vector.memcheck ], [ %i.ei, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.vector.body ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.078.i = phi i64 [ %i.fv, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.078.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.078.i, 32
  %i.fr = ashr exact i64 %sext.i, 28
  %i.fs = getelementptr inbounds i8, ptr %i.df, i64 %i.fr
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %i.fs, align 8, !noalias !6600
  %i.ft = and i64 %.sroa.0.0.copyload.i.i45, 4294967295
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.078.i
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !368
  %i.fv = add nuw i64 %.078.i, 1                  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.dc
  br i1 %i.fw, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !6610

_ZN8facebook5velox6StatusD2Ev.exit56.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01577.i = phi i64 [ %i.cr, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.gd, %_ZN8facebook5velox6StatusD2Ev.exit56.i ] ; 3 uses
  %i.fx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577.i, i1 true)
  %i.fy = or disjoint i64 %i.fx, %i.ct            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.cv, i64 %i.fy
  %.sroa.0.0.copyload.i40.i = load i64, ptr %i.fz, align 8, !noalias !6597
  %i.ga = and i64 %.sroa.0.0.copyload.i40.i, 4294967295
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.fy
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !368
  %i.gc = add i64 %.01577.i, -1
  %i.gd = and i64 %i.gc, %.01577.i                ; 2 uses
  %.not.i46 = icmp eq i64 %i.gd, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit56.i, !llvm.loop !6611

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit56.i, %bb.f, %bb.g
  %i.ge = add nsw i32 %i.cm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ge, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !6612

bb.h:                                             ; preds = %._crit_edge
  %i.gf = ashr i32 %1, 6
  %i.gg = and i32 %1, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %notmask.i47 = shl nsw i64 -1, %i.gh
  %i.gi = xor i64 %notmask.i47, -1
  %i.gj = load i8, ptr %2, align 8, !tbaa !6582, !range !307, !noundef !308
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !6585
  %i.gm = sext i32 %i.gf to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !368
  %i.gp = xor i8 %i.gj, 1
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = sub nsw i64 0, %i.gq
  %i.gs = xor i64 %i.go, %i.gr
  %i.gt = and i64 %i.gs, %i.gi                    ; 2 uses
  %.not.i48 = icmp eq i64 %i.gt, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i49

.preheader.i49:                                   ; preds = %bb.h
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gv = sext i32 %i.d to i64
  %.pre.i50 = load ptr, ptr %i.gu, align 8, !tbaa !6589 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !6565, !nonnull !308, !align !414
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !2667, !noalias !6613
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !6567, !nonnull !308, !align !414
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !6571, !nonnull !308, !align !414
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i51

_ZN8facebook5velox6StatusD2Ev.exit19.i51:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %.preheader.i49
  %.028.i52 = phi i64 [ %i.gt, %.preheader.i49 ], [ %i.hk, %_ZN8facebook5velox6StatusD2Ev.exit19.i51 ] ; 3 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i52, i1 true)
  %i.hf = or disjoint i64 %i.he, %i.gv            ; 2 uses
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.gy, i64 %i.hf
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %i.hg, align 8, !noalias !6613
  %i.hh = and i64 %.sroa.0.0.copyload.i.i53, 4294967295
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hf
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !368
  %i.hj = add nsw i64 %.028.i52, -1
  %i.hk = and i64 %i.hj, %.028.i52                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i51, !llvm.loop !6593

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E2_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1988) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1989, align 8           ; 6 uses
  %3 = alloca %class.anon.1990, align 8           ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1089, !range !307, !noundef !308
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !85, !range !307
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1015
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1014
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !743    ; 2 uses
  %.not.i.i6 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i6, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i29.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i29.not, label %.critedge.i.i.i, label %.lr.ph31

bb.f:                                             ; preds = %.lr.ph31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i30, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph31, label %.critedge.i.i.i, !llvm.loop !1170

.lr.ph31:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i30, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !368
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1170

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !368
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph31, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph31 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1016 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1015 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.noexc5.lr.ph, label %.loopexit

.noexc5.lr.ph:                                    ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !6616, !nonnull !308, !align !414 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.an = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !6617
  %i.ao = load ptr, ptr %.pre, align 8, !tbaa !2667, !noalias !6619
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us

_ZN8facebook5velox6StatusD2Ev.exit19.i40.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us
  %.028.i39.us = phi i64 [ %i.cz, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us ], [ %i.ca, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us.preheader ] ; 3 uses
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39.us, i1 true)
  %i.cu = or disjoint i64 %i.ct, %i.cs            ; 2 uses
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.cu
  %.sroa.0.0.copyload.i.i.i42.us = load i64, ptr %i.cv, align 8, !noalias !6705
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i42.us, 4294967295
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cu
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !368
  %i.cy = add i64 %.028.i39.us, -1
  %i.cz = and i64 %i.cy, %.028.i39.us             ; 2 uses
  %.not10.i43.us = icmp eq i64 %i.cz, 0
  br i1 %.not10.i43.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us, !llvm.loop !6704

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1382, !range !307, !noalias !6705, !noundef !308
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.dd = load i32, ptr %i.cm, align 8, !tbaa !1383, !noalias !6705
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.de
  %i.dg = sext i32 %i.cc to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.cr, i64 %i.dg
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62

_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, %.preheader.i37.split.split.us
  %.028.i39.us61 = phi i64 [ %i.ca, %.preheader.i37.split.split.us ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62 ] ; 3 uses
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39.us61, i1 true)
  %.sroa.0.0.copyload.i.i.i42.us64 = load i64, ptr %i.df, align 8, !noalias !6705
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i42.us64, 4294967295
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dh
  store i64 %i.di, ptr %gep, align 8, !tbaa !368
  %i.dj = add i64 %.028.i39.us61, -1
  %i.dk = and i64 %i.dj, %.028.i39.us61           ; 2 uses
  %.not10.i43.us65 = icmp eq i64 %i.dk, 0
  br i1 %.not10.i43.us65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, !llvm.loop !6704

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.dl = load ptr, ptr %i.cl, align 8, !tbaa !1384, !noalias !6705
  %i.dm = sext i32 %i.cc to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40

_ZN8facebook5velox6StatusD2Ev.exit19.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40, %.preheader.i37.split.split
  %.028.i39 = phi i64 [ %i.ca, %.preheader.i37.split.split ], [ %i.dx, %_ZN8facebook5velox6StatusD2Ev.exit19.i40 ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39, i1 true)
  %i.do = or disjoint i64 %i.dn, %i.dm            ; 2 uses
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !6705
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ds
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.dt, align 8, !noalias !6705
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.do
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !368
  %i.dw = add i64 %.028.i39, -1
  %i.dx = and i64 %i.dw, %.028.i39                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.dx, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40, !llvm.loop !6704

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us, %bb.i, %bb.h
  %i.dy = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3370 = icmp sgt i32 %i.dy, %i.d
  br i1 %.not3370, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %i.dz = load i8, ptr %3, align 8, !tbaa !6698, !range !307, !noundef !308
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !6700
  %i.ec = xor i8 %i.dz, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.ef, align 8        ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.kg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.071 = phi i32 [ %i.c, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.ej = sdiv i32 %.071, 64                      ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !368
  %i.en = xor i64 %i.em, %i.ee                    ; 2 uses
  switch i64 %i.en, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.eo = shl nsw i32 %i.ej, 6
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !6686, !nonnull !308, !align !414
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2888, !noalias !6708, !nonnull !308, !align !414 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1380, !noalias !6708
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 58
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !1381, !range !307, !noalias !6708, !noundef !308
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !6691, !nonnull !308, !align !414
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !6692, !nonnull !308, !align !414
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !920
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fd = shl nsw i32 %i.ej, 6                    ; 4 uses
  %i.fe = add i32 %i.fd, 64
  %i.ff = sext i32 %i.fe to i64                   ; 8 uses
  %.0.off = add i32 %.071, 127
  %.not83.i = icmp ult i32 %.0.off, 64
  br i1 %.not83.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.k
  %i.fg = sext i32 %i.fd to i64                   ; 22 uses
  %i.fh = load ptr, ptr %i.eg, align 8, !tbaa !6686, !nonnull !308, !align !414
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !2888, !noalias !6711, !nonnull !308, !align !414 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1380, !noalias !6711 ; 11 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 58
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !1381, !range !307, !noalias !6711, !noundef !308
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fq = load ptr, ptr %i.eh, align 8, !tbaa !6691, !nonnull !308, !align !414
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !6692, !nonnull !308, !align !414
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !920 ; 11 uses
  br i1 %i.fn, label %iter.check, label %.lr.ph82.i.split

iter.check:                                       ; preds = %.lr.ph82.i
  %i.fu = or disjoint i64 %i.fg, 1
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.ff) ; 5 uses
  %i.fv = sub i64 %umax119, %i.fg                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.fv, 5
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fw = or disjoint i64 %i.fg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.ff)
  %i.fx = xor i64 %i.fg, -1
  %i.fy = add i64 %umax, %i.fx                    ; 2 uses
  %i.fz = sext i32 %i.fd to i36                   ; 2 uses
  %i.ga = shl nsw i36 %i.fz, 4
  %i.gb = trunc i64 %i.fy to i36
  %i.gc = add i36 %i.fz, %i.gb
  %i.gd = shl i36 %i.gc, 4
  %i.ge = icmp slt i36 %i.gd, %i.ga
  %i.gf = icmp ugt i64 %i.fy, 4294967295
  %i.gg = or i1 %i.ge, %i.gf
  br i1 %i.gg, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gh = shl nsw i64 %i.fg, 3
  %scevgep = getelementptr i8, ptr %i.ft, i64 %i.gh
  %i.gi = or disjoint i64 %i.fg, 1
  %umax114 = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 %i.ff) ; 2 uses
  %i.gj = shl nsw i64 %umax114, 3
  %scevgep115 = getelementptr i8, ptr %i.ft, i64 %i.gj
  %i.gk = sext i32 %i.fd to i36
  %i.gl = shl nsw i36 %i.gk, 4
  %i.gm = sext i36 %i.gl to i64                   ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.fk, i64 %i.gm
  %scevgep117 = getelementptr i8, ptr %i.fk, i64 -8
  %i.gn = shl nsw i64 %umax114, 4
  %i.go = add i64 %i.gn, %i.gm
  %i.gp = shl nsw i64 %i.fg, 4
  %i.gq = sub i64 %i.go, %i.gp
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.gq
  %bound0 = icmp ult ptr %scevgep, %scevgep118
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check120 = icmp ult i64 %i.fv, 17
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gr = trunc i64 %umax119 to i1                ; 2 uses
  %.neg = select i1 %i.gr, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.fv                   ; 2 uses
  %i.gs = add i64 %.neg, %umax119
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = add i64 %index, %i.fg                   ; 5 uses
  %i.gu = shl i64 %i.gt, 32
  %i.gv = shl i64 %i.gt, 32
  %i.gw = shl i64 %i.gt, 32
  %i.gx = shl i64 %i.gt, 32
  %i.gy = ashr exact i64 %i.gu, 28
  %i.gz = ashr exact i64 %i.gv, 28
  %i.ha = ashr exact i64 %i.gw, 28
  %i.hb = ashr exact i64 %i.gx, 28
  %i.hc = getelementptr inbounds i8, ptr %i.fk, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.fk, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.hd, i64 64
  %i.hf = getelementptr i8, ptr %i.fk, i64 %i.ha
  %i.hg = getelementptr i8, ptr %i.hf, i64 128
  %i.hh = getelementptr i8, ptr %i.fk, i64 %i.hb
  %i.hi = getelementptr i8, ptr %i.hh, i64 192
  %wide.vec = load <8 x i64>, ptr %i.hc, align 8, !alias.scope !6714, !noalias !6711
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec121 = load <8 x i64>, ptr %i.he, align 8, !alias.scope !6714, !noalias !6711
  %strided.vec122 = shufflevector <8 x i64> %wide.vec121, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec123 = load <8 x i64>, ptr %i.hg, align 8, !alias.scope !6714, !noalias !6711
  %strided.vec124 = shufflevector <8 x i64> %wide.vec123, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec125 = load <8 x i64>, ptr %i.hi, align 8, !alias.scope !6714, !noalias !6711
  %strided.vec126 = shufflevector <8 x i64> %wide.vec125, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hj = and <4 x i64> %strided.vec, splat (i64 4294967295)
  %i.hk = and <4 x i64> %strided.vec122, splat (i64 4294967295)
  %i.hl = and <4 x i64> %strided.vec124, splat (i64 4294967295)
  %i.hm = and <4 x i64> %strided.vec126, splat (i64 4294967295)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gt ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 96
  store <4 x i64> %i.hj, ptr %i.hn, align 8, !tbaa !368, !alias.scope !6717, !noalias !6714
  store <4 x i64> %i.hk, ptr %i.ho, align 8, !tbaa !368, !alias.scope !6717, !noalias !6714
  store <4 x i64> %i.hl, ptr %i.hp, align 8, !tbaa !368, !alias.scope !6717, !noalias !6714
  store <4 x i64> %i.hm, ptr %i.hq, align 8, !tbaa !368, !alias.scope !6717, !noalias !6714
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6719

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %i.gr, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vec.epilog.ph, !prof !1093

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf127 = and i64 %umax119, 1
  %i.hs = icmp eq i64 %n.mod.vf127, 0
  %.neg170 = select i1 %i.hs, i64 -4, i64 -1      ; 2 uses
  %n.vec128 = add i64 %.neg170, %i.fv
  %i.ht = add i64 %.neg170, %umax119
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = add i64 %index129, %i.fg                ; 2 uses
  %i.hv = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %i.hv, 28
  %i.hx = getelementptr inbounds i8, ptr %i.fk, i64 %i.hw
  %wide.vec130 = load <8 x i64>, ptr %i.hx, align 8, !alias.scope !6714, !noalias !6711
  %strided.vec131 = shufflevector <8 x i64> %wide.vec130, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hy = and <4 x i64> %strided.vec131, splat (i64 4294967295)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.hu
  store <4 x i64> %i.hy, ptr %i.hz, align 8, !tbaa !368, !alias.scope !6717, !noalias !6714
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.ia, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vec.epilog.vector.body, !llvm.loop !6720

_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader: ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %.081.i.us.ph = phi i64 [ %i.fg, %iter.check ], [ %i.fg, %vector.scevcheck ], [ %i.fg, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.ht, %vec.epilog.vector.body ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us

_ZN8facebook5velox6StatusD2Ev.exit32.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us
  %.081.i.us = phi i64 [ %i.if, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us ], [ %.081.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.081.i.us, 32
  %i.ib = ashr exact i64 %sext, 28
  %i.ic = getelementptr inbounds i8, ptr %i.fk, i64 %i.ib
  %.sroa.0.0.copyload.i.i.i47.us = load i64, ptr %i.ic, align 8, !noalias !6711
  %i.id = and i64 %.sroa.0.0.copyload.i.i.i47.us, 4294967295
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i.us
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !368
  %i.if = add nuw i64 %.081.i.us, 1               ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ff
  br i1 %i.ig, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !6721

.lr.ph82.i.split:                                 ; preds = %.lr.ph82.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fi, i64 59
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !1382, !range !307, !noalias !6711, !noundef !308
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %iter.check155, label %.lr.ph82.i.split.split

iter.check155:                                    ; preds = %.lr.ph82.i.split
  %i.ik = load i32, ptr %i.fp, align 8, !tbaa !1383, !noalias !6711
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.il ; 3 uses
  %i.in = or disjoint i64 %i.fg, 1
  %umax143 = tail call i64 @llvm.umax.i64(i64 %i.in, i64 %i.ff) ; 2 uses
  %i.io = sub i64 %umax143, %i.fg                 ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.io, 4
  br i1 %min.iters.check144, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %iter.check155
  %i.ip = shl nsw i64 %i.fg, 3
  %scevgep135 = getelementptr i8, ptr %i.ft, i64 %i.ip
  %i.iq = or disjoint i64 %i.fg, 1
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 %i.ff)
  %i.ir = shl nsw i64 %umax136, 3
  %scevgep137 = getelementptr i8, ptr %i.ft, i64 %i.ir
  %scevgep138 = getelementptr i8, ptr %i.fk, i64 8
  %i.is = shl nsw i64 %i.il, 4
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.is
  %bound0140 = icmp ult ptr %scevgep135, %scevgep139
  %bound1141 = icmp ult ptr %i.im, %scevgep137
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %vector.memcheck134
  %min.iters.check146 = icmp ult i64 %i.io, 16
  %n.mod.vf160 = and i64 %umax143, 1              ; 3 uses
  %n.vec161 = sub i64 %i.io, %n.mod.vf160         ; 3 uses
  %i.it = add i64 %n.vec161, %i.fg                ; 2 uses
  %i.iu = load i64, ptr %i.im, align 8, !alias.scope !6722, !noalias !6711
  %i.iv = and i64 %i.iu, 4294967295
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check146, label %vec.epilog.vector.body162.preheader, label %vector.body150.preheader

vector.body150.preheader:                         ; preds = %vector.main.loop.iter.check145
  %invariant.gep179 = getelementptr [8 x i8], ptr %i.ft, i64 %i.fg
  br label %vector.body150

vec.epilog.vector.body162.preheader:              ; preds = %vector.main.loop.iter.check145
  %invariant.gep181 = getelementptr [8 x i8], ptr %i.ft, i64 %i.fg
  br label %vec.epilog.vector.body162

vector.body150:                                   ; preds = %vector.body150.preheader, %vector.body150
  %index151 = phi i64 [ %index.next152, %vector.body150 ], [ 0, %vector.body150.preheader ] ; 2 uses
  %gep180 = getelementptr [8 x i8], ptr %invariant.gep179, i64 %index151 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %gep180, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %gep180, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %gep180, i64 96
  store <4 x i64> %broadcast.splat165, ptr %gep180, align 8, !tbaa !368, !alias.scope !6725, !noalias !6722
  store <4 x i64> %broadcast.splat165, ptr %i.iw, align 8, !tbaa !368, !alias.scope !6725, !noalias !6722
  store <4 x i64> %broadcast.splat165, ptr %i.ix, align 8, !tbaa !368, !alias.scope !6725, !noalias !6722
  store <4 x i64> %broadcast.splat165, ptr %i.iy, align 8, !tbaa !368, !alias.scope !6725, !noalias !6722
  %index.next152 = add nuw i64 %index151, 16      ; 2 uses
  %i.iz = icmp eq i64 %index.next152, %n.vec161
  br i1 %i.iz, label %middle.block153, label %vector.body150, !llvm.loop !6727

middle.block153:                                  ; preds = %vector.body150
  %cmp.n = icmp eq i64 %n.mod.vf160, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162.preheader, %vec.epilog.vector.body162
  %index163 = phi i64 [ %index.next166, %vec.epilog.vector.body162 ], [ 0, %vec.epilog.vector.body162.preheader ] ; 2 uses
  %gep182 = getelementptr [8 x i8], ptr %invariant.gep181, i64 %index163
  store <4 x i64> %broadcast.splat165, ptr %gep182, align 8, !tbaa !368, !alias.scope !6725, !noalias !6722
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.ja, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !6728

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %n.mod.vf160, 0
  br i1 %cmp.n168, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader: ; preds = %middle.block153, %vector.memcheck134, %iter.check155, %vec.epilog.middle.block167
  %.081.i.us66.ph = phi i64 [ %i.it, %middle.block153 ], [ %i.fg, %vector.memcheck134 ], [ %i.fg, %iter.check155 ], [ %i.it, %vec.epilog.middle.block167 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67

_ZN8facebook5velox6StatusD2Ev.exit32.i.us67:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67
  %.081.i.us66 = phi i64 [ %i.jd, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67 ], [ %.081.i.us66.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i47.us69 = load i64, ptr %i.im, align 8, !noalias !6711
  %i.jb = and i64 %.sroa.0.0.copyload.i.i.i47.us69, 4294967295
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i.us66
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !368
  %i.jd = add nuw i64 %.081.i.us66, 1             ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.ff
  br i1 %i.je, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !6729

.lr.ph82.i.split.split:                           ; preds = %.lr.ph82.i.split
  %i.jf = load ptr, ptr %i.fo, align 8, !tbaa !1384, !noalias !6711
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %.lr.ph82.i.split.split
  %.081.i = phi i64 [ %i.fg, %.lr.ph82.i.split.split ], [ %i.jn, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i.i = shl i64 %.081.i, 32
  %i.jg = ashr exact i64 %sext.i.i, 30
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !6711
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.jj
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %i.jk, align 8, !noalias !6711
  %i.jl = and i64 %.sroa.0.0.copyload.i.i.i47, 4294967295
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !368
  %i.jn = add nuw i64 %.081.i, 1                  ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.ff
  br i1 %i.jo, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !6730

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit59.i, %.lr.ph.i
  %.01580.i = phi i64 [ %i.en, %.lr.ph.i ], [ %i.kf, %_ZN8facebook5velox6StatusD2Ev.exit59.i ] ; 3 uses
  %i.jp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580.i, i1 true)
  %i.jq = trunc nuw nsw i64 %i.jp to i32
  %i.jr = or disjoint i32 %i.eo, %i.jq            ; 2 uses
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  br i1 %i.ev, label %_ZN8facebook5velox6StatusD2Ev.exit59.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jt = load i8, ptr %i.ew, align 1, !tbaa !1382, !range !307, !noalias !6708, !noundef !308
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jv = load i32, ptr %i.ey, align 8, !tbaa !1383, !noalias !6708
  br label %_ZN8facebook5velox6StatusD2Ev.exit59.i

bb.o:                                             ; preds = %bb.m
  %i.jw = load ptr, ptr %i.ex, align 8, !tbaa !1384, !noalias !6708
  %i.jx = shl nsw i64 %i.js, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3, !noalias !6708
  br label %_ZN8facebook5velox6StatusD2Ev.exit59.i

_ZN8facebook5velox6StatusD2Ev.exit59.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i41.i = phi i32 [ %i.jz, %bb.o ], [ %i.jv, %bb.n ], [ %i.jr, %bb.l ]
  %i.ka = sext i32 %.0.i.i.i41.i to i64
  %i.kb = getelementptr inbounds [16 x i8], ptr %i.es, i64 %i.ka
  %.sroa.0.0.copyload.i.i42.i = load i64, ptr %i.kb, align 8, !noalias !6708
  %i.kc = and i64 %.sroa.0.0.copyload.i.i42.i, 4294967295
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.js
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !368
  %i.ke = add i64 %.01580.i, -1
  %i.kf = and i64 %i.ke, %.01580.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.kf, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !6731

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions14LengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, %_ZN8facebook5velox6StatusD2Ev.exit59.i, %middle.block153, %vec.epilog.middle.block167, %bb.j, %bb.k
  %i.kg = add nsw i32 %i.ei, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !6732

bb.p:                                             ; preds = %._crit_edge
  %i.kh = ashr i32 %1, 6
  %i.ki = and i32 %1, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %notmask.i49 = shl nsw i64 -1, %i.kj
  %i.kk = xor i64 %notmask.i49, -1
  %i.kl = load i8, ptr %2, align 8, !tbaa !6695, !range !307, !noundef !308
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !6697
  %i.ko = sext i32 %i.kh to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !368
  %i.kr = xor i8 %i.kl, 1
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = sub nsw i64 0, %i.ks
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !6929, !nonnull !308, !align !414
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2667, !noalias !6953
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !6931, !nonnull !308, !align !414
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !6935, !nonnull !308, !align !414
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.028.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.as, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.am
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !noalias !6953
  %i.ao = shl i64 %.sroa.0.0.copyload.i.i, 3
  %i.ap = and i64 %i.ao, 34359738360
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !368
  %i.ar = add nsw i64 %.028.i, -1
  %i.as = and i64 %i.ar, %.028.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.as, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !6956

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = sdiv i32 %0, 64                         ; 2 uses
  %i.au = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.av
  %i.aw = xor i64 %notmask.i.i35, -1
  %i.ax = sub nsw i32 64, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = shl i64 %i.aw, %i.ay
  %i.ba = load i8, ptr %2, align 8, !tbaa !6945, !range !307, !noundef !308
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !6948
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !368
  %i.bg = xor i8 %i.ba, 1
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bf, %i.bi
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bk, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = shl nsw i32 %i.at, 6
  %i.bn = sext i32 %i.bm to i64
  %.pre.i38 = load ptr, ptr %i.bl, align 8, !tbaa !6952 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !6929, !nonnull !308, !align !414
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2667, !noalias !6957
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !6931, !nonnull !308, !align !414
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !6935, !nonnull !308, !align !414
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.028.i40 = phi i64 [ %i.bk, %.preheader.i37 ], [ %i.cd, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i40, i1 true)
  %i.bx = or disjoint i64 %i.bw, %i.bn            ; 2 uses
  %i.by = getelementptr inbounds [16 x i8], ptr %i.bq, i64 %i.bx
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.by, align 8, !noalias !6957
  %i.bz = shl i64 %.sroa.0.0.copyload.i.i41, 3
  %i.ca = and i64 %i.bz, 34359738360
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !368
  %i.cc = add i64 %.028.i40, -1
  %i.cd = and i64 %i.cc, %.028.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cd, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !6956

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.ce = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3358 = icmp sgt i32 %i.ce, %i.d
  br i1 %.not3358, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %i.cf = load i8, ptr %3, align 8, !tbaa !6949, !range !307, !noundef !308
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !6951
  %i.ci = xor i8 %i.cf, 1
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i44 = load ptr, ptr %i.cl, align 8        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.co = phi i32 [ %i.ce, %.lr.ph ], [ %i.gn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.059 = phi i32 [ %i.c, %.lr.ph ], [ %i.co, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cp = sdiv i32 %.059, 64                      ; 3 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !368
  %i.ct = xor i64 %i.cs, %i.ck                    ; 2 uses
  switch i64 %i.ct, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cu = shl nsw i32 %i.cp, 6
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !6929, !nonnull !308, !align !414
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2667, !noalias !6960
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !6931, !nonnull !308, !align !414
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !6935, !nonnull !308, !align !414
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

bb.g:                                             ; preds = %bb.f
  %i.dc = shl nsw i32 %i.cp, 6                    ; 4 uses
  %i.dd = add i32 %i.dc, 64
  %i.de = sext i32 %i.dd to i64                   ; 4 uses
  %.0.off = add i32 %.059, 127
  %.not79.i = icmp ult i32 %.0.off, 64
  br i1 %.not79.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.df = sext i32 %i.dc to i64                   ; 12 uses
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !6929, !nonnull !308, !align !414
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2667, !noalias !6963 ; 8 uses
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !6931, !nonnull !308, !align !414
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !6935, !nonnull !308, !align !414
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !920 ; 5 uses
  %i.dm = or disjoint i64 %i.df, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.de) ; 5 uses
  %i.dn = sub i64 %umax80, %i.df                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.dn, 5
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.do = or disjoint i64 %i.df, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.de)
  %i.dp = xor i64 %i.df, -1
  %i.dq = add i64 %umax, %i.dp                    ; 2 uses
  %i.dr = sext i32 %i.dc to i36                   ; 2 uses
  %i.ds = shl nsw i36 %i.dr, 4
  %i.dt = trunc i64 %i.dq to i36
  %i.du = add i36 %i.dr, %i.dt
  %i.dv = shl i36 %i.du, 4
  %i.dw = icmp slt i36 %i.dv, %i.ds
  %i.dx = icmp ugt i64 %i.dq, 4294967295
  %i.dy = or i1 %i.dw, %i.dx
  br i1 %i.dy, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dz = shl nsw i64 %i.df, 3
  %scevgep = getelementptr nuw i8, ptr %i.dl, i64 %i.dz
  %i.ea = or disjoint i64 %i.df, 1
  %umax75 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 %i.de) ; 2 uses
  %i.eb = shl nsw i64 %umax75, 3
  %scevgep76 = getelementptr i8, ptr %i.dl, i64 %i.eb
  %i.ec = sext i32 %i.dc to i36
  %i.ed = shl nsw i36 %i.ec, 4
  %i.ee = sext i36 %i.ed to i64                   ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.dh, i64 %i.ee
  %scevgep78 = getelementptr i8, ptr %i.dh, i64 -8
  %i.ef = shl nsw i64 %umax75, 4
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = shl nsw i64 %i.df, 4
  %i.ei = sub i64 %i.eg, %i.eh
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.ei
  %bound0 = icmp ult ptr %scevgep, %scevgep79
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dn, 17
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = trunc i64 %umax80 to i1                 ; 2 uses
  %.neg = select i1 %i.ej, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.dn                   ; 2 uses
  %i.ek = add i64 %.neg, %umax80
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = add i64 %index, %i.df                   ; 5 uses
  %i.em = shl i64 %i.el, 32
  %i.en = shl i64 %i.el, 32
  %i.eo = shl i64 %i.el, 32
  %i.ep = shl i64 %i.el, 32
  %i.eq = ashr exact i64 %i.em, 28
  %i.er = ashr exact i64 %i.en, 28
  %i.es = ashr exact i64 %i.eo, 28
  %i.et = ashr exact i64 %i.ep, 28
  %i.eu = getelementptr inbounds i8, ptr %i.dh, i64 %i.eq
  %i.ev = getelementptr i8, ptr %i.dh, i64 %i.er
  %i.ew = getelementptr i8, ptr %i.ev, i64 64
  %i.ex = getelementptr i8, ptr %i.dh, i64 %i.es
  %i.ey = getelementptr i8, ptr %i.ex, i64 128
  %i.ez = getelementptr i8, ptr %i.dh, i64 %i.et
  %i.fa = getelementptr i8, ptr %i.ez, i64 192
  %wide.vec = load <8 x i64>, ptr %i.eu, align 8, !alias.scope !6966, !noalias !6963
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec82 = load <8 x i64>, ptr %i.ew, align 8, !alias.scope !6966, !noalias !6963
  %strided.vec83 = shufflevector <8 x i64> %wide.vec82, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec84 = load <8 x i64>, ptr %i.ey, align 8, !alias.scope !6966, !noalias !6963
  %strided.vec85 = shufflevector <8 x i64> %wide.vec84, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec86 = load <8 x i64>, ptr %i.fa, align 8, !alias.scope !6966, !noalias !6963
  %strided.vec87 = shufflevector <8 x i64> %wide.vec86, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fb = shl <4 x i64> %strided.vec, splat (i64 3)
  %i.fc = shl <4 x i64> %strided.vec83, splat (i64 3)
  %i.fd = shl <4 x i64> %strided.vec85, splat (i64 3)
  %i.fe = shl <4 x i64> %strided.vec87, splat (i64 3)
  %i.ff = and <4 x i64> %i.fb, splat (i64 34359738360)
  %i.fg = and <4 x i64> %i.fc, splat (i64 34359738360)
  %i.fh = and <4 x i64> %i.fd, splat (i64 34359738360)
  %i.fi = and <4 x i64> %i.fe, splat (i64 34359738360)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.el ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  store <4 x i64> %i.ff, ptr %i.fj, align 8, !tbaa !368, !alias.scope !6969, !noalias !6966
  store <4 x i64> %i.fg, ptr %i.fk, align 8, !tbaa !368, !alias.scope !6969, !noalias !6966
  store <4 x i64> %i.fh, ptr %i.fl, align 8, !tbaa !368, !alias.scope !6969, !noalias !6966
  store <4 x i64> %i.fi, ptr %i.fm, align 8, !tbaa !368, !alias.scope !6969, !noalias !6966
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6971

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %i.ej, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.ph, !prof !1093

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf88 = and i64 %umax80, 1
  %i.fo = icmp eq i64 %n.mod.vf88, 0
  %.neg95 = select i1 %i.fo, i64 -4, i64 -1       ; 2 uses
  %n.vec89 = add i64 %.neg95, %i.dn
  %i.fp = add i64 %.neg95, %umax80
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.fq = add i64 %index90, %i.df                 ; 2 uses
  %i.fr = shl i64 %i.fq, 32
  %i.fs = ashr exact i64 %i.fr, 28
  %i.ft = getelementptr inbounds i8, ptr %i.dh, i64 %i.fs
  %wide.vec91 = load <8 x i64>, ptr %i.ft, align 8, !alias.scope !6966, !noalias !6963
  %strided.vec92 = shufflevector <8 x i64> %wide.vec91, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fu = shl <4 x i64> %strided.vec92, splat (i64 3)
  %i.fv = and <4 x i64> %i.fu, splat (i64 34359738360)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.fq
  store <4 x i64> %i.fv, ptr %i.fw, align 8, !tbaa !368, !alias.scope !6969, !noalias !6966
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.fx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.fx, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.vector.body, !llvm.loop !6972

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %.078.i.ph = phi i64 [ %i.df, %iter.check ], [ %i.df, %vector.scevcheck ], [ %i.df, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.vector.body ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.078.i = phi i64 [ %i.gd, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.078.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.078.i, 32
  %i.fy = ashr exact i64 %sext.i, 28
  %i.fz = getelementptr inbounds i8, ptr %i.dh, i64 %i.fy
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %i.fz, align 8, !noalias !6963
  %i.ga = shl i64 %.sroa.0.0.copyload.i.i45, 3
  %i.gb = and i64 %i.ga, 34359738360
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.078.i
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !368
  %i.gd = add nuw i64 %.078.i, 1                  ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.de
  br i1 %i.ge, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !6973

_ZN8facebook5velox6StatusD2Ev.exit56.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01577.i = phi i64 [ %i.ct, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.gm, %_ZN8facebook5velox6StatusD2Ev.exit56.i ] ; 3 uses
  %i.gf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577.i, i1 true)
  %i.gg = or disjoint i64 %i.gf, %i.cv            ; 2 uses
  %i.gh = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.gg
  %.sroa.0.0.copyload.i40.i = load i64, ptr %i.gh, align 8, !noalias !6960
  %i.gi = shl i64 %.sroa.0.0.copyload.i40.i, 3
  %i.gj = and i64 %i.gi, 34359738360
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.gg
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !368
  %i.gl = add i64 %.01577.i, -1
  %i.gm = and i64 %i.gl, %.01577.i                ; 2 uses
  %.not.i46 = icmp eq i64 %i.gm, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit56.i, !llvm.loop !6974

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit56.i, %bb.f, %bb.g
  %i.gn = add nsw i32 %i.co, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.gn, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !6975

bb.h:                                             ; preds = %._crit_edge
  %i.go = ashr i32 %1, 6
  %i.gp = and i32 %1, 63
  %i.gq = zext nneg i32 %i.gp to i64
  %notmask.i47 = shl nsw i64 -1, %i.gq
  %i.gr = xor i64 %notmask.i47, -1
  %i.gs = load i8, ptr %2, align 8, !tbaa !6945, !range !307, !noundef !308
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !6948
  %i.gv = sext i32 %i.go to i64
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !368
  %i.gy = xor i8 %i.gs, 1
  %i.gz = zext nneg i8 %i.gy to i64
  %i.ha = sub nsw i64 0, %i.gz
  %i.hb = xor i64 %i.gx, %i.ha
  %i.hc = and i64 %i.hb, %i.gr                    ; 2 uses
  %.not.i48 = icmp eq i64 %i.hc, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i49

.preheader.i49:                                   ; preds = %bb.h
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.he = sext i32 %i.d to i64
  %.pre.i50 = load ptr, ptr %i.hd, align 8, !tbaa !6952 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !6929, !nonnull !308, !align !414
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !2667, !noalias !6976
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !6931, !nonnull !308, !align !414
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !6935, !nonnull !308, !align !414
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i51

_ZN8facebook5velox6StatusD2Ev.exit19.i51:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %.preheader.i49
  %.028.i52 = phi i64 [ %i.hc, %.preheader.i49 ], [ %i.hu, %_ZN8facebook5velox6StatusD2Ev.exit19.i51 ] ; 3 uses
  %i.hn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i52, i1 true)
  %i.ho = or disjoint i64 %i.hn, %i.he            ; 2 uses
  %i.hp = getelementptr inbounds [16 x i8], ptr %i.hh, i64 %i.ho
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %i.hp, align 8, !noalias !6976
  %i.hq = shl i64 %.sroa.0.0.copyload.i.i53, 3
  %i.hr = and i64 %i.hq, 34359738360
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %i.ho
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !368
  %i.ht = add nsw i64 %.028.i52, -1
  %i.hu = and i64 %i.ht, %.028.i52                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.hu, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i51, !llvm.loop !6956

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17BitLengthFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.2147) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2148, align 8           ; 6 uses
  %3 = alloca %class.anon.2149, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1089, !range !307, !noundef !308
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !85, !range !307
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1015
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1014
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !743    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i26.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i26.not, label %.critedge.i.i.i, label %.lr.ph28

bb.f:                                             ; preds = %.lr.ph28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i27, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph28, label %.critedge.i.i.i, !llvm.loop !1170

.lr.ph28:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i27, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !368
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1170

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !368
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph28, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph28 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1016 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1015 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !6979, !nonnull !308, !align !414 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !6980
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_16FlatVectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  %i.ac = sext i32 %i.d to i64
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !7353 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !7328, !nonnull !308, !align !414
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7270, !noalias !7354
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !7331, !nonnull !308, !align !414
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7335, !nonnull !308, !align !414
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i

_ZN8facebook5velox6StatusD2Ev.exit19.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i, %.preheader.i
  %.028.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ar, %_ZN8facebook5velox6StatusD2Ev.exit19.i ] ; 3 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i, i1 true)
  %i.am = or disjoint i64 %i.al, %i.ac            ; 2 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.am
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !noalias !7354
  %i.ao = and i64 %.sroa.0.0.copyload.i.i, 4294967295
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.am
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !368
  %i.aq = add nsw i64 %.028.i, -1
  %i.ar = and i64 %i.aq, %.028.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ar, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i, !llvm.loop !7357

bb.d:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = sdiv i32 %0, 64                         ; 2 uses
  %i.at = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i35, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = load i8, ptr %2, align 8, !tbaa !7346, !range !307, !noundef !308
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !7349
  %i.bc = sext i32 %i.as to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !368
  %i.bf = xor i8 %i.az, 1
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = and i64 %i.bi, %i.ay                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bj, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = shl nsw i32 %i.as, 6
  %i.bm = sext i32 %i.bl to i64
  %.pre.i38 = load ptr, ptr %i.bk, align 8, !tbaa !7353 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !7328, !nonnull !308, !align !414
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !7270, !noalias !7358
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i38, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !7331, !nonnull !308, !align !414
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !7335, !nonnull !308, !align !414
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i39

_ZN8facebook5velox6StatusD2Ev.exit19.i39:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %.preheader.i37
  %.028.i40 = phi i64 [ %i.bj, %.preheader.i37 ], [ %i.cb, %_ZN8facebook5velox6StatusD2Ev.exit19.i39 ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i40, i1 true)
  %i.bw = or disjoint i64 %i.bv, %i.bm            ; 2 uses
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.bw
  %.sroa.0.0.copyload.i.i41 = load i64, ptr %i.bx, align 8, !noalias !7358
  %i.by = and i64 %.sroa.0.0.copyload.i.i41, 4294967295
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bw
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !368
  %i.ca = add i64 %.028.i40, -1
  %i.cb = and i64 %i.ca, %.028.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.cb, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43, label %_ZN8facebook5velox6StatusD2Ev.exit19.i39, !llvm.loop !7357

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i39, %bb.e, %bb.d
  %i.cc = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3358 = icmp sgt i32 %i.cc, %i.d
  br i1 %.not3358, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %i.cd = load i8, ptr %3, align 8, !tbaa !7350, !range !307, !noundef !308
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !7352
  %i.cg = xor i8 %i.cd, 1
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i44 = load ptr, ptr %i.cj, align 8        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 24 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.h

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.cm = phi i32 [ %i.cc, %.lr.ph ], [ %i.ge, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.059 = phi i32 [ %i.c, %.lr.ph ], [ %i.cm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.cn = sdiv i32 %.059, 64                      ; 3 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !368
  %i.cr = xor i64 %i.cq, %i.ci                    ; 2 uses
  switch i64 %i.cr, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i [
    i64 -1, label %bb.g
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i: ; preds = %bb.f
  %i.cs = shl nsw i32 %i.cn, 6
  %i.ct = sext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !7328, !nonnull !308, !align !414
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !7270, !noalias !7361
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !7331, !nonnull !308, !align !414
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !7335, !nonnull !308, !align !414
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit56.i

bb.g:                                             ; preds = %bb.f
  %i.da = shl nsw i32 %i.cn, 6                    ; 4 uses
  %i.db = add i32 %i.da, 64
  %i.dc = sext i32 %i.db to i64                   ; 4 uses
  %.0.off = add i32 %.059, 127
  %.not79.i = icmp ult i32 %.0.off, 64
  br i1 %.not79.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.dd = sext i32 %i.da to i64                   ; 12 uses
  %i.de = load ptr, ptr %i.ck, align 8, !tbaa !7328, !nonnull !308, !align !414
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !7270, !noalias !7364 ; 8 uses
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !7331, !nonnull !308, !align !414
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !7335, !nonnull !308, !align !414
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !920 ; 5 uses
  %i.dk = or disjoint i64 %i.dd, 1
  %umax80 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dc) ; 5 uses
  %i.dl = sub i64 %umax80, %i.dd                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.dl, 5
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dm = or disjoint i64 %i.dd, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dm, i64 %i.dc)
  %i.dn = xor i64 %i.dd, -1
  %i.do = add i64 %umax, %i.dn                    ; 2 uses
  %i.dp = sext i32 %i.da to i36                   ; 2 uses
  %i.dq = shl nsw i36 %i.dp, 4
  %i.dr = trunc i64 %i.do to i36
  %i.ds = add i36 %i.dp, %i.dr
  %i.dt = shl i36 %i.ds, 4
  %i.du = icmp slt i36 %i.dt, %i.dq
  %i.dv = icmp ugt i64 %i.do, 4294967295
  %i.dw = or i1 %i.du, %i.dv
  br i1 %i.dw, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dx = shl nsw i64 %i.dd, 3
  %scevgep = getelementptr nuw i8, ptr %i.dj, i64 %i.dx
  %i.dy = or disjoint i64 %i.dd, 1
  %umax75 = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.dc) ; 2 uses
  %i.dz = shl nsw i64 %umax75, 3
  %scevgep76 = getelementptr i8, ptr %i.dj, i64 %i.dz
  %i.ea = sext i32 %i.da to i36
  %i.eb = shl nsw i36 %i.ea, 4
  %i.ec = sext i36 %i.eb to i64                   ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.df, i64 %i.ec
  %scevgep78 = getelementptr i8, ptr %i.df, i64 -8
  %i.ed = shl nsw i64 %umax75, 4
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = shl nsw i64 %i.dd, 4
  %i.eg = sub i64 %i.ee, %i.ef
  %scevgep79 = getelementptr i8, ptr %scevgep78, i64 %i.eg
  %bound0 = icmp ult ptr %scevgep, %scevgep79
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check81 = icmp ult i64 %i.dl, 17
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = trunc i64 %umax80 to i1                 ; 2 uses
  %.neg = select i1 %i.eh, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.dl                   ; 2 uses
  %i.ei = add i64 %.neg, %umax80
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = add i64 %index, %i.dd                   ; 5 uses
  %i.ek = shl i64 %i.ej, 32
  %i.el = shl i64 %i.ej, 32
  %i.em = shl i64 %i.ej, 32
  %i.en = shl i64 %i.ej, 32
  %i.eo = ashr exact i64 %i.ek, 28
  %i.ep = ashr exact i64 %i.el, 28
  %i.eq = ashr exact i64 %i.em, 28
  %i.er = ashr exact i64 %i.en, 28
  %i.es = getelementptr inbounds i8, ptr %i.df, i64 %i.eo
  %i.et = getelementptr i8, ptr %i.df, i64 %i.ep
  %i.eu = getelementptr i8, ptr %i.et, i64 64
  %i.ev = getelementptr i8, ptr %i.df, i64 %i.eq
  %i.ew = getelementptr i8, ptr %i.ev, i64 128
  %i.ex = getelementptr i8, ptr %i.df, i64 %i.er
  %i.ey = getelementptr i8, ptr %i.ex, i64 192
  %wide.vec = load <8 x i64>, ptr %i.es, align 8, !alias.scope !7367, !noalias !7364
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec82 = load <8 x i64>, ptr %i.eu, align 8, !alias.scope !7367, !noalias !7364
  %strided.vec83 = shufflevector <8 x i64> %wide.vec82, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec84 = load <8 x i64>, ptr %i.ew, align 8, !alias.scope !7367, !noalias !7364
  %strided.vec85 = shufflevector <8 x i64> %wide.vec84, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec86 = load <8 x i64>, ptr %i.ey, align 8, !alias.scope !7367, !noalias !7364
  %strided.vec87 = shufflevector <8 x i64> %wide.vec86, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ez = and <4 x i64> %strided.vec, splat (i64 4294967295)
  %i.fa = and <4 x i64> %strided.vec83, splat (i64 4294967295)
  %i.fb = and <4 x i64> %strided.vec85, splat (i64 4294967295)
  %i.fc = and <4 x i64> %strided.vec87, splat (i64 4294967295)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ej ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  store <4 x i64> %i.ez, ptr %i.fd, align 8, !tbaa !368, !alias.scope !7370, !noalias !7367
  store <4 x i64> %i.fa, ptr %i.fe, align 8, !tbaa !368, !alias.scope !7370, !noalias !7367
  store <4 x i64> %i.fb, ptr %i.ff, align 8, !tbaa !368, !alias.scope !7370, !noalias !7367
  store <4 x i64> %i.fc, ptr %i.fg, align 8, !tbaa !368, !alias.scope !7370, !noalias !7367
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !7372

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %i.eh, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.ph, !prof !1093

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf88 = and i64 %umax80, 1
  %i.fi = icmp eq i64 %n.mod.vf88, 0
  %.neg95 = select i1 %i.fi, i64 -4, i64 -1       ; 2 uses
  %n.vec89 = add i64 %.neg95, %i.dl
  %i.fj = add i64 %.neg95, %umax80
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.fk = add i64 %index90, %i.dd                 ; 2 uses
  %i.fl = shl i64 %i.fk, 32
  %i.fm = ashr exact i64 %i.fl, 28
  %i.fn = getelementptr inbounds i8, ptr %i.df, i64 %i.fm
  %wide.vec91 = load <8 x i64>, ptr %i.fn, align 8, !alias.scope !7367, !noalias !7364
  %strided.vec92 = shufflevector <8 x i64> %wide.vec91, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fo = and <4 x i64> %strided.vec92, splat (i64 4294967295)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fk
  store <4 x i64> %i.fo, ptr %i.fp, align 8, !tbaa !368, !alias.scope !7370, !noalias !7367
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.fq = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.fq, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, label %vec.epilog.vector.body, !llvm.loop !7373

_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader: ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %.078.i.ph = phi i64 [ %i.dd, %iter.check ], [ %i.dd, %vector.scevcheck ], [ %i.dd, %vector.memcheck ], [ %i.ei, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.vector.body ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i
  %.078.i = phi i64 [ %i.fv, %_ZN8facebook5velox6StatusD2Ev.exit32.i ], [ %.078.i.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.preheader ] ; 3 uses
  %sext.i = shl i64 %.078.i, 32
  %i.fr = ashr exact i64 %sext.i, 28
  %i.fs = getelementptr inbounds i8, ptr %i.df, i64 %i.fr
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %i.fs, align 8, !noalias !7364
  %i.ft = and i64 %.sroa.0.0.copyload.i.i45, 4294967295
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.078.i
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !368
  %i.fv = add nuw i64 %.078.i, 1                  ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.dc
  br i1 %i.fw, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !7374

_ZN8facebook5velox6StatusD2Ev.exit56.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit56.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i
  %.01577.i = phi i64 [ %i.cr, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSA_EEEE7iterateIJNS1_16FlatVectorReaderISA_EEEEEvRNSD_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSM_.exit.lr.ph.i ], [ %i.gd, %_ZN8facebook5velox6StatusD2Ev.exit56.i ] ; 3 uses
  %i.fx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01577.i, i1 true)
  %i.fy = or disjoint i64 %i.fx, %i.ct            ; 2 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.cv, i64 %i.fy
  %.sroa.0.0.copyload.i40.i = load i64, ptr %i.fz, align 8, !noalias !7361
  %i.ga = and i64 %.sroa.0.0.copyload.i40.i, 4294967295
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.fy
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !368
  %i.gc = add i64 %.01577.i, -1
  %i.gd = and i64 %i.gc, %.01577.i                ; 2 uses
  %.not.i46 = icmp eq i64 %i.gd, 0
  br i1 %.not.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit56.i, !llvm.loop !7375

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit56.i, %bb.f, %bb.g
  %i.ge = add nsw i32 %i.cm, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ge, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.f, !llvm.loop !7376

bb.h:                                             ; preds = %._crit_edge
  %i.gf = ashr i32 %1, 6
  %i.gg = and i32 %1, 63
  %i.gh = zext nneg i32 %i.gg to i64
  %notmask.i47 = shl nsw i64 -1, %i.gh
  %i.gi = xor i64 %notmask.i47, -1
  %i.gj = load i8, ptr %2, align 8, !tbaa !7346, !range !307, !noundef !308
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !7349
  %i.gm = sext i32 %i.gf to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !368
  %i.gp = xor i8 %i.gj, 1
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = sub nsw i64 0, %i.gq
  %i.gs = xor i64 %i.go, %i.gr
  %i.gt = and i64 %i.gs, %i.gi                    ; 2 uses
  %.not.i48 = icmp eq i64 %i.gt, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %.preheader.i49

.preheader.i49:                                   ; preds = %bb.h
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gv = sext i32 %i.d to i64
  %.pre.i50 = load ptr, ptr %i.gu, align 8, !tbaa !7353 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !7328, !nonnull !308, !align !414
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !7270, !noalias !7377
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre.i50, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !7331, !nonnull !308, !align !414
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !7335, !nonnull !308, !align !414
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !920
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i51

_ZN8facebook5velox6StatusD2Ev.exit19.i51:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %.preheader.i49
  %.028.i52 = phi i64 [ %i.gt, %.preheader.i49 ], [ %i.hk, %_ZN8facebook5velox6StatusD2Ev.exit19.i51 ] ; 3 uses
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i52, i1 true)
  %i.hf = or disjoint i64 %i.he, %i.gv            ; 2 uses
  %i.hg = getelementptr inbounds [16 x i8], ptr %i.gy, i64 %i.hf
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %i.hg, align 8, !noalias !7377
  %i.hh = and i64 %.sroa.0.0.copyload.i.i53, 4294967295
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hf
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !368
  %i.hj = add nsw i64 %.028.i52, -1
  %i.hk = and i64 %i.hj, %.028.i52                ; 2 uses
  %.not10.i54 = icmp eq i64 %i.hk, 0
  br i1 %.not10.i54, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %_ZN8facebook5velox6StatusD2Ev.exit19.i51, !llvm.loop !7357

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_16FlatVectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i51, %_ZN8facebook5velox6StatusD2Ev.exit19.i, %bb.h, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKS1_SQ_EUlSQ_E_EEvSU_SQ_T0_EUlSQ_E_EEvSQ_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.2405) align 8 %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2406, align 8           ; 6 uses
  %3 = alloca %class.anon.2407, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1089, !range !307, !noundef !308
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !85, !range !307
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1015
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1016 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1014
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !743    ; 2 uses
  %.not.i.i5 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i5, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i26.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i26.not, label %.critedge.i.i.i, label %.lr.ph28

bb.f:                                             ; preds = %.lr.ph28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i27, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph28, label %.critedge.i.i.i, !llvm.loop !1170

.lr.ph28:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i27, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !368
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1170

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !368
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph28, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph28 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1016 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1015 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !tbaa !7380, !nonnull !308, !align !414 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.al = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !7381
  %i.am = load ptr, ptr %.pre, align 8, !tbaa !7384, !noalias !7386, !nonnull !308, !align !414 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1380, !noalias !7386
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 58
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS4_10VectorExecEEESC_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSF_EEEE7iterateIJNS4_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_ZNS3_ISZ_EEvS11_iibSR_EUliE_EEviiSR_SY_:bb.a
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us

_ZN8facebook5velox6StatusD2Ev.exit19.i40.us:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us
  %.028.i39.us = phi i64 [ %i.cz, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us ], [ %i.ca, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us.preheader ] ; 3 uses
  %i.ct = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39.us, i1 true)
  %i.cu = or disjoint i64 %i.ct, %i.cs            ; 2 uses
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.cu
  %.sroa.0.0.copyload.i.i.i42.us = load i64, ptr %i.cv, align 8, !noalias !7403
  %i.cw = and i64 %.sroa.0.0.copyload.i.i.i42.us, 4294967295
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cu
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !368
  %i.cy = add i64 %.028.i39.us, -1
  %i.cz = and i64 %i.cy, %.028.i39.us             ; 2 uses
  %.not10.i43.us = icmp eq i64 %i.cz, 0
  br i1 %.not10.i43.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us, !llvm.loop !7402

.preheader.i37.split:                             ; preds = %.preheader.i37
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 59
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1382, !range !307, !noalias !7403, !noundef !308
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.preheader.i37.split.split.us, label %.preheader.i37.split.split

.preheader.i37.split.split.us:                    ; preds = %.preheader.i37.split
  %i.dd = load i32, ptr %i.cm, align 8, !tbaa !1383, !noalias !7403
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.de
  %i.dg = sext i32 %i.cc to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.cr, i64 %i.dg
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62

_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62:    ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, %.preheader.i37.split.split.us
  %.028.i39.us61 = phi i64 [ %i.ca, %.preheader.i37.split.split.us ], [ %i.dk, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62 ] ; 3 uses
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39.us61, i1 true)
  %.sroa.0.0.copyload.i.i.i42.us64 = load i64, ptr %i.df, align 8, !noalias !7403
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i42.us64, 4294967295
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dh
  store i64 %i.di, ptr %gep, align 8, !tbaa !368
  %i.dj = add i64 %.028.i39.us61, -1
  %i.dk = and i64 %i.dj, %.028.i39.us61           ; 2 uses
  %.not10.i43.us65 = icmp eq i64 %i.dk, 0
  br i1 %.not10.i43.us65, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, !llvm.loop !7402

.preheader.i37.split.split:                       ; preds = %.preheader.i37.split
  %i.dl = load ptr, ptr %i.cl, align 8, !tbaa !1384, !noalias !7403
  %i.dm = sext i32 %i.cc to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit19.i40

_ZN8facebook5velox6StatusD2Ev.exit19.i40:         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40, %.preheader.i37.split.split
  %.028.i39 = phi i64 [ %i.ca, %.preheader.i37.split.split ], [ %i.dx, %_ZN8facebook5velox6StatusD2Ev.exit19.i40 ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.028.i39, i1 true)
  %i.do = or disjoint i64 %i.dn, %i.dm            ; 2 uses
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !7403
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ds
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %i.dt, align 8, !noalias !7403
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i42, 4294967295
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.do
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !368
  %i.dw = add i64 %.028.i39, -1
  %i.dx = and i64 %i.dw, %.028.i39                ; 2 uses
  %.not10.i43 = icmp eq i64 %i.dx, 0
  br i1 %.not10.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44, label %_ZN8facebook5velox6StatusD2Ev.exit19.i40, !llvm.loop !7402

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit19.i40, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us62, %_ZN8facebook5velox6StatusD2Ev.exit19.i40.us, %bb.i, %bb.h
  %i.dy = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3370 = icmp sgt i32 %i.dy, %i.d
  br i1 %.not3370, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %i.dz = load i8, ptr %3, align 8, !tbaa !7396, !range !307, !noundef !308
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !7398
  %i.ec = xor i8 %i.dz, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i45 = load ptr, ptr %i.ef, align 8        ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.pre.i45, i64 24 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit44
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.kg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %.071 = phi i32 [ %i.c, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit ] ; 2 uses
  %i.ej = sdiv i32 %.071, 64                      ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !368
  %i.en = xor i64 %i.em, %i.ee                    ; 2 uses
  switch i64 %i.en, label %.lr.ph.i [
    i64 -1, label %bb.k
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.j
  %i.eo = shl nsw i32 %i.ej, 6
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !7381, !nonnull !308, !align !414
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !7384, !noalias !7406, !nonnull !308, !align !414 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1380, !noalias !7406
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 58
  %i.eu = load i8, ptr %i.et, align 2, !tbaa !1381, !range !307, !noalias !7406, !noundef !308
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.ez = load ptr, ptr %i.eh, align 8, !tbaa !7389, !nonnull !308, !align !414
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !7390, !nonnull !308, !align !414
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !920
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fd = shl nsw i32 %i.ej, 6                    ; 4 uses
  %i.fe = add i32 %i.fd, 64
  %i.ff = sext i32 %i.fe to i64                   ; 8 uses
  %.0.off = add i32 %.071, 127
  %.not83.i = icmp ult i32 %.0.off, 64
  br i1 %.not83.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.k
  %i.fg = sext i32 %i.fd to i64                   ; 22 uses
  %i.fh = load ptr, ptr %i.eg, align 8, !tbaa !7381, !nonnull !308, !align !414
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !7384, !noalias !7409, !nonnull !308, !align !414 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1380, !noalias !7409 ; 11 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 58
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !1381, !range !307, !noalias !7409, !noundef !308
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fq = load ptr, ptr %i.eh, align 8, !tbaa !7389, !nonnull !308, !align !414
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !7390, !nonnull !308, !align !414
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !920 ; 11 uses
  br i1 %i.fn, label %iter.check, label %.lr.ph82.i.split

iter.check:                                       ; preds = %.lr.ph82.i
  %i.fu = or disjoint i64 %i.fg, 1
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.ff) ; 5 uses
  %i.fv = sub i64 %umax119, %i.fg                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.fv, 5
  br i1 %min.iters.check, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fw = or disjoint i64 %i.fg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.ff)
  %i.fx = xor i64 %i.fg, -1
  %i.fy = add i64 %umax, %i.fx                    ; 2 uses
  %i.fz = sext i32 %i.fd to i36                   ; 2 uses
  %i.ga = shl nsw i36 %i.fz, 4
  %i.gb = trunc i64 %i.fy to i36
  %i.gc = add i36 %i.fz, %i.gb
  %i.gd = shl i36 %i.gc, 4
  %i.ge = icmp slt i36 %i.gd, %i.ga
  %i.gf = icmp ugt i64 %i.fy, 4294967295
  %i.gg = or i1 %i.ge, %i.gf
  br i1 %i.gg, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gh = shl nsw i64 %i.fg, 3
  %scevgep = getelementptr i8, ptr %i.ft, i64 %i.gh
  %i.gi = or disjoint i64 %i.fg, 1
  %umax114 = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 %i.ff) ; 2 uses
  %i.gj = shl nsw i64 %umax114, 3
  %scevgep115 = getelementptr i8, ptr %i.ft, i64 %i.gj
  %i.gk = sext i32 %i.fd to i36
  %i.gl = shl nsw i36 %i.gk, 4
  %i.gm = sext i36 %i.gl to i64                   ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.fk, i64 %i.gm
  %scevgep117 = getelementptr i8, ptr %i.fk, i64 -8
  %i.gn = shl nsw i64 %umax114, 4
  %i.go = add i64 %i.gn, %i.gm
  %i.gp = shl nsw i64 %i.fg, 4
  %i.gq = sub i64 %i.go, %i.gp
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.gq
  %bound0 = icmp ult ptr %scevgep, %scevgep118
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check120 = icmp ult i64 %i.fv, 17
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gr = trunc i64 %umax119 to i1                ; 2 uses
  %.neg = select i1 %i.gr, i64 -1, i64 -16        ; 2 uses
  %n.vec = add i64 %.neg, %i.fv                   ; 2 uses
  %i.gs = add i64 %.neg, %umax119
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = add i64 %index, %i.fg                   ; 5 uses
  %i.gu = shl i64 %i.gt, 32
  %i.gv = shl i64 %i.gt, 32
  %i.gw = shl i64 %i.gt, 32
  %i.gx = shl i64 %i.gt, 32
  %i.gy = ashr exact i64 %i.gu, 28
  %i.gz = ashr exact i64 %i.gv, 28
  %i.ha = ashr exact i64 %i.gw, 28
  %i.hb = ashr exact i64 %i.gx, 28
  %i.hc = getelementptr inbounds i8, ptr %i.fk, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.fk, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.hd, i64 64
  %i.hf = getelementptr i8, ptr %i.fk, i64 %i.ha
  %i.hg = getelementptr i8, ptr %i.hf, i64 128
  %i.hh = getelementptr i8, ptr %i.fk, i64 %i.hb
  %i.hi = getelementptr i8, ptr %i.hh, i64 192
  %wide.vec = load <8 x i64>, ptr %i.hc, align 8, !alias.scope !7412, !noalias !7409
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec121 = load <8 x i64>, ptr %i.he, align 8, !alias.scope !7412, !noalias !7409
  %strided.vec122 = shufflevector <8 x i64> %wide.vec121, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec123 = load <8 x i64>, ptr %i.hg, align 8, !alias.scope !7412, !noalias !7409
  %strided.vec124 = shufflevector <8 x i64> %wide.vec123, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec125 = load <8 x i64>, ptr %i.hi, align 8, !alias.scope !7412, !noalias !7409
  %strided.vec126 = shufflevector <8 x i64> %wide.vec125, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hj = and <4 x i64> %strided.vec, splat (i64 4294967295)
  %i.hk = and <4 x i64> %strided.vec122, splat (i64 4294967295)
  %i.hl = and <4 x i64> %strided.vec124, splat (i64 4294967295)
  %i.hm = and <4 x i64> %strided.vec126, splat (i64 4294967295)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.gt ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 96
  store <4 x i64> %i.hj, ptr %i.hn, align 8, !tbaa !368, !alias.scope !7415, !noalias !7412
  store <4 x i64> %i.hk, ptr %i.ho, align 8, !tbaa !368, !alias.scope !7415, !noalias !7412
  store <4 x i64> %i.hl, ptr %i.hp, align 8, !tbaa !368, !alias.scope !7415, !noalias !7412
  store <4 x i64> %i.hm, ptr %i.hq, align 8, !tbaa !368, !alias.scope !7415, !noalias !7412
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !7417

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %i.gr, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vec.epilog.ph, !prof !1093

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf127 = and i64 %umax119, 1
  %i.hs = icmp eq i64 %n.mod.vf127, 0
  %.neg170 = select i1 %i.hs, i64 -4, i64 -1      ; 2 uses
  %n.vec128 = add i64 %.neg170, %i.fv
  %i.ht = add i64 %.neg170, %umax119
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index129 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next132, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = add i64 %index129, %i.fg                ; 2 uses
  %i.hv = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %i.hv, 28
  %i.hx = getelementptr inbounds i8, ptr %i.fk, i64 %i.hw
  %wide.vec130 = load <8 x i64>, ptr %i.hx, align 8, !alias.scope !7412, !noalias !7409
  %strided.vec131 = shufflevector <8 x i64> %wide.vec130, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hy = and <4 x i64> %strided.vec131, splat (i64 4294967295)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.hu
  store <4 x i64> %i.hy, ptr %i.hz, align 8, !tbaa !368, !alias.scope !7415, !noalias !7412
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.ia, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, label %vec.epilog.vector.body, !llvm.loop !7418

_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader: ; preds = %vec.epilog.vector.body, %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check
  %.081.i.us.ph = phi i64 [ %i.fg, %iter.check ], [ %i.fg, %vector.scevcheck ], [ %i.fg, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.ht, %vec.epilog.vector.body ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us

_ZN8facebook5velox6StatusD2Ev.exit32.i.us:        ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us
  %.081.i.us = phi i64 [ %i.if, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us ], [ %.081.i.us.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us.preheader ] ; 3 uses
  %sext = shl i64 %.081.i.us, 32
  %i.ib = ashr exact i64 %sext, 28
  %i.ic = getelementptr inbounds i8, ptr %i.fk, i64 %i.ib
  %.sroa.0.0.copyload.i.i.i47.us = load i64, ptr %i.ic, align 8, !noalias !7409
  %i.id = and i64 %.sroa.0.0.copyload.i.i.i47.us, 4294967295
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i.us
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !368
  %i.if = add nuw i64 %.081.i.us, 1               ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ff
  br i1 %i.ig, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !7419

.lr.ph82.i.split:                                 ; preds = %.lr.ph82.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fi, i64 59
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !1382, !range !307, !noalias !7409, !noundef !308
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %iter.check155, label %.lr.ph82.i.split.split

iter.check155:                                    ; preds = %.lr.ph82.i.split
  %i.ik = load i32, ptr %i.fp, align 8, !tbaa !1383, !noalias !7409
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.il ; 3 uses
  %i.in = or disjoint i64 %i.fg, 1
  %umax143 = tail call i64 @llvm.umax.i64(i64 %i.in, i64 %i.ff) ; 2 uses
  %i.io = sub i64 %umax143, %i.fg                 ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.io, 4
  br i1 %min.iters.check144, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %iter.check155
  %i.ip = shl nsw i64 %i.fg, 3
  %scevgep135 = getelementptr i8, ptr %i.ft, i64 %i.ip
  %i.iq = or disjoint i64 %i.fg, 1
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 %i.ff)
  %i.ir = shl nsw i64 %umax136, 3
  %scevgep137 = getelementptr i8, ptr %i.ft, i64 %i.ir
  %scevgep138 = getelementptr i8, ptr %i.fk, i64 8
  %i.is = shl nsw i64 %i.il, 4
  %scevgep139 = getelementptr i8, ptr %scevgep138, i64 %i.is
  %bound0140 = icmp ult ptr %scevgep135, %scevgep139
  %bound1141 = icmp ult ptr %i.im, %scevgep137
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %vector.memcheck134
  %min.iters.check146 = icmp ult i64 %i.io, 16
  %n.mod.vf160 = and i64 %umax143, 1              ; 3 uses
  %n.vec161 = sub i64 %i.io, %n.mod.vf160         ; 3 uses
  %i.it = add i64 %n.vec161, %i.fg                ; 2 uses
  %i.iu = load i64, ptr %i.im, align 8, !alias.scope !7420, !noalias !7409
  %i.iv = and i64 %i.iu, 4294967295
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check146, label %vec.epilog.vector.body162.preheader, label %vector.body150.preheader

vector.body150.preheader:                         ; preds = %vector.main.loop.iter.check145
  %invariant.gep179 = getelementptr [8 x i8], ptr %i.ft, i64 %i.fg
  br label %vector.body150

vec.epilog.vector.body162.preheader:              ; preds = %vector.main.loop.iter.check145
  %invariant.gep181 = getelementptr [8 x i8], ptr %i.ft, i64 %i.fg
  br label %vec.epilog.vector.body162

vector.body150:                                   ; preds = %vector.body150.preheader, %vector.body150
  %index151 = phi i64 [ %index.next152, %vector.body150 ], [ 0, %vector.body150.preheader ] ; 2 uses
  %gep180 = getelementptr [8 x i8], ptr %invariant.gep179, i64 %index151 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %gep180, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %gep180, i64 64
  %i.iy = getelementptr inbounds nuw i8, ptr %gep180, i64 96
  store <4 x i64> %broadcast.splat165, ptr %gep180, align 8, !tbaa !368, !alias.scope !7423, !noalias !7420
  store <4 x i64> %broadcast.splat165, ptr %i.iw, align 8, !tbaa !368, !alias.scope !7423, !noalias !7420
  store <4 x i64> %broadcast.splat165, ptr %i.ix, align 8, !tbaa !368, !alias.scope !7423, !noalias !7420
  store <4 x i64> %broadcast.splat165, ptr %i.iy, align 8, !tbaa !368, !alias.scope !7423, !noalias !7420
  %index.next152 = add nuw i64 %index151, 16      ; 2 uses
  %i.iz = icmp eq i64 %index.next152, %n.vec161
  br i1 %i.iz, label %middle.block153, label %vector.body150, !llvm.loop !7425

middle.block153:                                  ; preds = %vector.body150
  %cmp.n = icmp eq i64 %n.mod.vf160, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162.preheader, %vec.epilog.vector.body162
  %index163 = phi i64 [ %index.next166, %vec.epilog.vector.body162 ], [ 0, %vec.epilog.vector.body162.preheader ] ; 2 uses
  %gep182 = getelementptr [8 x i8], ptr %invariant.gep181, i64 %index163
  store <4 x i64> %broadcast.splat165, ptr %gep182, align 8, !tbaa !368, !alias.scope !7423, !noalias !7420
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.ja, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !7426

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %n.mod.vf160, 0
  br i1 %cmp.n168, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader

_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader: ; preds = %middle.block153, %vector.memcheck134, %iter.check155, %vec.epilog.middle.block167
  %.081.i.us66.ph = phi i64 [ %i.it, %middle.block153 ], [ %i.fg, %vector.memcheck134 ], [ %i.fg, %iter.check155 ], [ %i.it, %vec.epilog.middle.block167 ]
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67

_ZN8facebook5velox6StatusD2Ev.exit32.i.us67:      ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67
  %.081.i.us66 = phi i64 [ %i.jd, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67 ], [ %.081.i.us66.ph, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i47.us69 = load i64, ptr %i.im, align 8, !noalias !7409
  %i.jb = and i64 %.sroa.0.0.copyload.i.i.i47.us69, 4294967295
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i.us66
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !368
  %i.jd = add nuw i64 %.081.i.us66, 1             ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.ff
  br i1 %i.je, label %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !7427

.lr.ph82.i.split.split:                           ; preds = %.lr.ph82.i.split
  %i.jf = load ptr, ptr %i.fo, align 8, !tbaa !1384, !noalias !7409
  br label %_ZN8facebook5velox6StatusD2Ev.exit32.i

_ZN8facebook5velox6StatusD2Ev.exit32.i:           ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %.lr.ph82.i.split.split
  %.081.i = phi i64 [ %i.fg, %.lr.ph82.i.split.split ], [ %i.jn, %_ZN8facebook5velox6StatusD2Ev.exit32.i ] ; 3 uses
  %sext.i.i = shl i64 %.081.i, 32
  %i.jg = ashr exact i64 %sext.i.i, 30
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !3, !noalias !7409
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [16 x i8], ptr %i.fk, i64 %i.jj
  %.sroa.0.0.copyload.i.i.i47 = load i64, ptr %i.jk, align 8, !noalias !7409
  %i.jl = and i64 %.sroa.0.0.copyload.i.i.i47, 4294967295
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.081.i
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !368
  %i.jn = add nuw i64 %.081.i, 1                  ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.ff
  br i1 %i.jo, label %_ZN8facebook5velox6StatusD2Ev.exit32.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, !llvm.loop !7428

bb.l:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit59.i, %.lr.ph.i
  %.01580.i = phi i64 [ %i.en, %.lr.ph.i ], [ %i.kf, %_ZN8facebook5velox6StatusD2Ev.exit59.i ] ; 3 uses
  %i.jp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580.i, i1 true)
  %i.jq = trunc nuw nsw i64 %i.jp to i32
  %i.jr = or disjoint i32 %i.eo, %i.jq            ; 2 uses
  %i.js = sext i32 %i.jr to i64                   ; 2 uses
  br i1 %i.ev, label %_ZN8facebook5velox6StatusD2Ev.exit59.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jt = load i8, ptr %i.ew, align 1, !tbaa !1382, !range !307, !noalias !7406, !noundef !308
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jv = load i32, ptr %i.ey, align 8, !tbaa !1383, !noalias !7406
  br label %_ZN8facebook5velox6StatusD2Ev.exit59.i

bb.o:                                             ; preds = %bb.m
  %i.jw = load ptr, ptr %i.ex, align 8, !tbaa !1384, !noalias !7406
  %i.jx = shl nsw i64 %i.js, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3, !noalias !7406
  br label %_ZN8facebook5velox6StatusD2Ev.exit59.i

_ZN8facebook5velox6StatusD2Ev.exit59.i:           ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i41.i = phi i32 [ %i.jz, %bb.o ], [ %i.jv, %bb.n ], [ %i.jr, %bb.l ]
  %i.ka = sext i32 %.0.i.i.i41.i to i64
  %i.kb = getelementptr inbounds [16 x i8], ptr %i.es, i64 %i.ka
  %.sroa.0.0.copyload.i.i42.i = load i64, ptr %i.kb, align 8, !noalias !7406
  %i.kc = and i64 %.sroa.0.0.copyload.i.i42.i, 4294967295
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.js
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !368
  %i.ke = add i64 %.01580.i, -1
  %i.kf = and i64 %i.ke, %.01580.i                ; 2 uses
  %.not.i48 = icmp eq i64 %i.kf, 0
  br i1 %.not.i48, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit, label %bb.l, !llvm.loop !7429

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23LengthVarbinaryFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_9VarbinaryEEEEJSE_EEEE7iterateIJNS3_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit32.i, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us67, %_ZN8facebook5velox6StatusD2Ev.exit32.i.us, %_ZN8facebook5velox6StatusD2Ev.exit59.i, %middle.block153, %vec.epilog.middle.block167, %bb.j, %bb.k
  %i.kg = add nsw i32 %i.ei, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.kg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.j, !llvm.loop !7430

bb.p:                                             ; preds = %._crit_edge
  %i.kh = ashr i32 %1, 6
  %i.ki = and i32 %1, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %notmask.i49 = shl nsw i64 -1, %i.kj
  %i.kk = xor i64 %notmask.i49, -1
  %i.kl = load i8, ptr %2, align 8, !tbaa !7393, !range !307, !noundef !308
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !7395
  %i.ko = sext i32 %i.kh to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !368
  %i.kr = xor i8 %i.kl, 1
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = sub nsw i64 0, %i.ks
end_hunk_9
