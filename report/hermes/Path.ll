inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_:bb.a

bb.e:                                             ; preds = %_ZN4llvh5ErrorD2Ev.exit7
  %i.ak = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #30, !inline_history !251
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN4llvh5ErrorD2Ev.exit7
  %i.ao = load ptr, ptr %4, align 8, !tbaa !203
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -2                       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvh5ErrorD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit
  %i.as = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !223
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #30, !inline_history !251
  br label %_ZN4llvh5ErrorD2Ev.exit9

_ZN4llvh5ErrorD2Ev.exit9:                         ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.p
  br i1 %.not, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !223, !noalias !278
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !278
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvh13ErrorInfoBase2IDE) #30, !noalias !278, !inline_history !270
  br i1 %i.ba, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12: ; preds = %bb.g
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !203, !alias.scope !281
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !223, !noalias !278
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !278
  tail call void %i.bd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #30, !noalias !278, !inline_history !274
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10: ; preds = %bb.g
  %i.be = or i64 %i.b, 1
  %i.bf = inttoptr i64 %i.be to ptr
  store ptr %i.bf, ptr %0, align 8, !tbaa !203, !alias.scope !284
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit: ; preds = %_ZN4llvh5ErrorD2Ev.exit9
  %i.bg = inttoptr i64 %i.af to ptr
  br label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit, %bb.c
  %.lcssa = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.bg, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18.loopexit ]
  store ptr %.lcssa, ptr %0, align 8
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #30, !inline_history !287
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i12, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i18, %_ZN4llvh5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind noalias writable sret(%"class.llvh::Error") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !203
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %i.e = zext i1 %i.d to i64
  %i.f = or disjoint i64 %i.c, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr %1, align 8, !tbaa !203
  %i.h = load ptr, ptr %2, align 8, !tbaa !203
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = or i64 %i.i, 1
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %2, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.c:                                             ; preds = %bb.a
  %i.l = and i64 %i.i, -2                         ; 2 uses
  %i.m = icmp ne i64 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i64
  %i.o = or disjoint i64 %i.l, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !203
  %i.q = load ptr, ptr %1, align 8, !tbaa !203
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = or i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %1, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

bb.e:                                             ; preds = %bb.c
  %i.u = and i64 %i.r, -2                         ; 2 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit:      ; preds = %bb.e
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !223
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  %.pre114 = load ptr, ptr %2, align 8, !tbaa !203 ; 2 uses
  br i1 %i.z, label %bb.f, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread

bb.f:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit
  %i.aa = load ptr, ptr %1, align 8, !tbaa !203
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, -2
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %i.ae = ptrtoint ptr %.pre114 to i64
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %.not.i8 = icmp eq i64 %i.af, 0
  br i1 %.not.i8, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9:     ; preds = %bb.f
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !223
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  %.pre = load ptr, ptr %2, align 8, !tbaa !203, !noalias !146
  %i.al = ptrtoint ptr %.pre to i64
  %i.am = and i64 %i.al, -2                       ; 3 uses
  br i1 %i.ak, label %bb.g, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread

bb.g:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !289
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !265 ; 2 uses
  %.not111 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %bb.g
  %.not.i10 = icmp eq i64 %i.am, 0
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i: ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !223
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #30, !inline_history !287
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.sroa.0104.0112 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bc, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !292 ; 4 uses
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !294
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %.sroa.0104.0112, align 8, !tbaa !206
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !206
  store ptr null, ptr %.sroa.0104.0112, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !292
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0104.0112)
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0104.0112, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.ar
  br i1 %.not, label %._crit_edge, label %bb.h

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9, %bb.f
  %.pre-phi117 = phi i64 [ 0, %bb.f ], [ %i.am, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !295
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !292 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !294
  %.not.i.i11 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread
  store i64 %.pre-phi117, ptr %i.bf, align 8, !tbaa !206
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !292
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit9.thread
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !298 ; 11 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i32 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i32)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #32 ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  store i64 %.pre-phi117, ptr %i.bv, align 8, !tbaa !206
  %.not10.i.i.i.i = icmp eq ptr %i.bj, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %3 = ptrtoaddr ptr %i.bf to i64
  %4 = ptrtoaddr ptr %i.bj to i64
  %i.bw = sub i64 %3, %4
  %i.bx = add i64 %i.bw, -8                       ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader167, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ca = add i64 %i.bk, -8
  %i.cb = sub i64 %i.ca, %i.bl
  %i.cc = and i64 %i.cb, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.cd
  %scevgep140 = getelementptr i8, ptr %i.bj, i64 %i.cd
  %bound0 = icmp ult ptr %i.bu, %scevgep140
  %bound1 = icmp ult ptr %i.bj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bj, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ch ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.bj, i64 %i.ch ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ci = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep141, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %wide.load142 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !206, !alias.scope !307, !noalias !304
  store <2 x i64> %wide.load142, ptr %i.cj, align 8, !tbaa !206, !alias.scope !307, !noalias !304
  %i.ck = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep141, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !206, !alias.scope !304, !noalias !299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader167

.lr.ph.i.i.i.i.preheader167:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader167, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader167 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader167 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !206, !alias.scope !302, !noalias !299
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !206, !alias.scope !299, !noalias !302
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !206, !alias.scope !302, !noalias !299
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !310

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bu, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.n
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !298
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !292
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cq, ptr %i.bg, align 8, !tbaa !294
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i, %._crit_edge
  %i.cr = load ptr, ptr %1, align 8, !tbaa !203
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = or i64 %i.cs, 1
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr %i.cu, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %1, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread: ; preds = %bb.e, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit
  %i.cv = phi ptr [ %i.p, %bb.e ], [ %.pre114, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit ]
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -2                       ; 2 uses
  %.not.i16 = icmp eq i64 %i.cx, 0
  br i1 %.not.i16, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17:    ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !223
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull @_ZN4llvh9ErrorList2IDE) #30, !inline_history !288
  br i1 %i.dc, label %bb.o, label %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread

bb.o:                                             ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17
  %i.dd = load ptr, ptr %2, align 8, !tbaa !203
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, -2
  %i.dg = inttoptr i64 %i.df to ptr               ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !265 ; 14 uses
  %i.dj = load ptr, ptr %1, align 8, !tbaa !203, !noalias !311
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -2                       ; 3 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !311
  %i.dn = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !292 ; 12 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !294
  %.not.i.i18 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i.i18, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = icmp eq ptr %i.di, %i.dp
  br i1 %i.ds, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %i.dl, ptr %i.dp, align 8, !tbaa !206
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !292
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.r:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 4 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !206
  store i64 %i.dv, ptr %i.dp, align 8, !tbaa !206
  store ptr null, ptr %i.du, align 8, !tbaa !206
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !292
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dx, %i.dn
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dz, %bb.r ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.dp, %bb.r ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.du, %bb.r ]
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !206
  store ptr null, ptr %i.eb, align 8, !tbaa !206
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !206 ; 3 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !223
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ee) #30, !inline_history !314
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ei = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.ej = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !315

_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.r
  %i.ek = load ptr, ptr %i.di, align 8, !tbaa !206 ; 3 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !206
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #30, !inline_history !316
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

bb.s:                                             ; preds = %bb.o
  %i.eo = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ep = sub i64 %i.eo, %i.dn                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.t, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41: ; preds = %bb.s
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i34, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i35 = icmp ne i64 %i.ev, 0
  tail call void @llvm.assume(i1 %.not.i.i35)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #32 ; 5 uses
  store i64 %i.dl, ptr %i.ex, align 8, !tbaa !206
  %i.ey = getelementptr i8, ptr %i.ex, i64 8      ; 6 uses
  %.not10.i.i.i16.i43 = icmp eq ptr %i.di, %i.dp
  br i1 %.not10.i.i.i16.i43, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader

.lr.ph.i.i.i17.i44.preheader:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %5 = ptrtoaddr ptr %i.dp to i64
  %6 = ptrtoaddr ptr %i.di to i64
  %i.ez = sub i64 %5, %6
  %i.fa = add i64 %i.ez, -8                       ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.fa, 184
  br i1 %min.iters.check151, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i.i.i17.i44.preheader
  %i.fd = add i64 %i.eo, -8
  %i.fe = sub i64 %i.fd, %i.dn
  %i.ff = and i64 %i.fe, -8                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.ff
  %scevgep145 = getelementptr i8, ptr %i.fg, i64 16
  %i.fh = getelementptr i8, ptr %i.di, i64 %i.ff
  %scevgep146 = getelementptr i8, ptr %i.fh, i64 8
  %bound0147 = icmp ult ptr %i.ey, %scevgep146
  %bound1148 = icmp ult ptr %i.di, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i17.i44.preheader166, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec154 = and i64 %i.fc, 4611686018427387900  ; 3 uses
  %i.fi = shl i64 %n.vec154, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ey, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.di, i64 %i.fi
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.fl = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.ey, i64 %i.fl ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.di, i64 %i.fl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fm = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %wide.load160 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %i.fn = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep157, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  store <2 x i64> %wide.load160, ptr %i.fn, align 8, !tbaa !206, !alias.scope !325, !noalias !322
  %i.fo = getelementptr i8, ptr %next.gep158, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep158, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !206, !alias.scope !322, !noalias !317
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.fp, label %middle.block162, label %vector.body155, !llvm.loop !327

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.fc, %n.vec154
  br i1 %cmp.n163, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44.preheader166

.lr.ph.i.i.i17.i44.preheader166:                  ; preds = %vector.memcheck144, %.lr.ph.i.i.i17.i44.preheader, %middle.block162
  %.012.i.i.i18.i45.ph = phi ptr [ %i.ey, %vector.memcheck144 ], [ %i.ey, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fj, %middle.block162 ]
  %.0911.i.i.i19.i46.ph = phi ptr [ %i.di, %vector.memcheck144 ], [ %i.di, %.lr.ph.i.i.i17.i44.preheader ], [ %i.fk, %middle.block162 ]
  br label %.lr.ph.i.i.i17.i44

.lr.ph.i.i.i17.i44:                               ; preds = %.lr.ph.i.i.i17.i44.preheader166, %.lr.ph.i.i.i17.i44
  %.012.i.i.i18.i45 = phi ptr [ %i.fs, %.lr.ph.i.i.i17.i44 ], [ %.012.i.i.i18.i45.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 2 uses
  %.0911.i.i.i19.i46 = phi ptr [ %i.fr, %.lr.ph.i.i.i17.i44 ], [ %.0911.i.i.i19.i46.ph, %.lr.ph.i.i.i17.i44.preheader166 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.fq = load i64, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  store i64 %i.fq, ptr %.012.i.i.i18.i45, align 8, !tbaa !206, !alias.scope !317, !noalias !320
  store ptr null, ptr %.0911.i.i.i19.i46, align 8, !tbaa !206, !alias.scope !320, !noalias !317
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i46, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i45, i64 8 ; 2 uses
  %.not.i.i.i20.i47 = icmp eq ptr %i.fr, %i.dp
  br i1 %.not.i.i.i20.i47, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, label %.lr.ph.i.i.i17.i44, !llvm.loop !328

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48: ; preds = %.lr.ph.i.i.i17.i44, %middle.block162, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41
  %.0.lcssa.i.i.i21.i49 = phi ptr [ %i.ey, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i41 ], [ %i.fj, %middle.block162 ], [ %i.fs, %.lr.ph.i.i.i17.i44 ]
  %.not.i23.i50 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i50, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ep) #33
  br label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i48, %bb.u
  store ptr %i.ex, ptr %i.dh, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21.i49, ptr %i.do, align 8, !tbaa !292
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.ft, ptr %i.dq, align 8, !tbaa !294
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit51, %_ZNKSt14default_deleteIN4llvh13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %bb.q
  %i.fu = load ptr, ptr %2, align 8, !tbaa !203
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = or i64 %i.fv, 1
  %i.fx = inttoptr i64 %i.fw to ptr
  store ptr %i.fx, ptr %0, align 8, !tbaa !203
  store ptr null, ptr %2, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit.thread, %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17
  %i.fy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.fz = load ptr, ptr %1, align 8, !tbaa !203, !noalias !329
  store ptr null, ptr %1, align 8, !tbaa !203, !noalias !329
  %i.ga = load ptr, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr null, ptr %2, align 8, !tbaa !203, !noalias !332
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvh9ErrorListE, i64 16), ptr %i.fy, align 8, !tbaa !223
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ge = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32 ; 3 uses
  %i.gf = insertelement <2 x ptr> poison, ptr %i.fz, i64 0
  %i.gg = insertelement <2 x ptr> %i.gf, ptr %i.ga, i64 1
  %i.gh = ptrtoint <2 x ptr> %i.gg to <2 x i64>
  %i.gi = and <2 x i64> %i.gh, splat (i64 -2)
  store <2 x i64> %i.gi, ptr %i.ge, align 8, !tbaa !206
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !298
  store ptr %i.gj, ptr %i.gc, align 8, !tbaa !292
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !294
  %i.gk = ptrtoint ptr %i.fy to i64
  %i.gl = or i64 %i.gk, 1
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr %i.gm, ptr %0, align 8, !tbaa !203
  br label %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNK4llvh5Error3isAINS_9ErrorListEEEbv.exit17.thread, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit21, %_ZNSt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !298    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !206
  store i64 %i.r, ptr %i.q, align 8, !tbaa !206
  store ptr null, ptr %2, align 8, !tbaa !206
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %i.c to i64
  %i.s = sub i64 %3, %4
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !206, !alias.scope !343, !noalias !340
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !206, !alias.scope !340, !noalias !335
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !206, !alias.scope !335, !noalias !338
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !206, !alias.scope !338, !noalias !335
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %5 = ptrtoaddr ptr %i.b to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.am = sub i64 %5, %6
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec49, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ay = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.az = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %wide.load55 = load <2 x i64>, ptr %i.az, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  store <2 x i64> %wide.load55, ptr %i.ba, align 8, !tbaa !206, !alias.scope !355, !noalias !352
  %i.bb = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !206, !alias.scope !352, !noalias !347
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %middle.block57, label %vector.body50, !llvm.loop !357

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ap, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !206, !alias.scope !347, !noalias !350
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !206, !alias.scope !350, !noalias !347
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !358

_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %middle.block57 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !294
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #33
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvh13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !298
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !292
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !294
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh3sys2fs18directory_iteratorC2ERKNS_5TwineERSt10error_codeb(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !359
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #32, !noalias !362 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !220, !noalias !367
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !222, !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvh3sys2fs6detail12DirIterStateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !223, !noalias !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !367
  store ptr %i.h, ptr %i.g, align 8, !tbaa !71, !noalias !367
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 36, i1 false), !noalias !367
  store i32 65535, ptr %i.j, align 4, !tbaa !198, !noalias !367
  store ptr %i.f, ptr %0, align 8, !tbaa !368
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.k, align 8, !tbaa !219
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 128, ptr %i.n, align 4, !tbaa !39
  %.not.i.i5 = icmp eq i8 %.pre, 1
  br i1 %.not.i.i5, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !40
  switch i8 %i.p, label %bb.g [
    i8 1, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i6, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #29
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.w, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !10
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ab = zext i32 %i.aa to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN4llvh3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %i.ac = load ptr, ptr %4, align 8, !tbaa !36
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !38
  %i.ae = zext i32 %i.ad to i64
  %.pre8 = load i8, ptr %i.b, align 8, !tbaa !359, !range !145
  %i.af = trunc nuw i8 %.pre8 to i1
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.ag = phi i1 [ %i.af, %bb.g ], [ %3, %bb.f ], [ %3, %bb.a ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.b ], [ %3, %bb.c ]
  %.sroa.3.0.i = phi i64 [ %i.ae, %bb.g ], [ %i.ab, %bb.f ], [ 0, %bb.a ], [ %i.v, %bb.d ], [ %.sroa.7.0.copyload.i.i, %bb.e ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.g ], [ %i.y, %bb.f ], [ null, %bb.a ], [ %i.t, %bb.d ], [ %.sroa.0.0.copyload.i.i, %bb.e ], [ null, %bb.b ], [ %i.q, %bb.c ]
  %i.ah = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 noundef zeroext %i.ag) ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0
  %i.aj = extractvalue { i32, ptr } %i.ah, 1
  store i32 %i.ai, ptr %2, align 8, !tbaa !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aj, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !149
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  call void @free(ptr noundef %i.ak) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
end_hunk_0
