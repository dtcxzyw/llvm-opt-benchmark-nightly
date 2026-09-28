Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPC64?download=true
inline.NumInlined: 2032
inline.NumDeleted: 911
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt17__rotate_adaptiveIPN3lld3elf10RelocationES3_lET_S4_S4_S4_T1_S5_T0_S5_:bb.a
  %i.ad = icmp eq i64 %i.s, 32
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit39

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !602
  br label %_ZSt13move_backwardIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit39

_ZSt13move_backwardIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [32 x i8], ptr %2, i64 %i.af
  br label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit

bb.y:                                             ; preds = %bb.m
  %i.ah = icmp eq ptr %0, %1
  br i1 %i.ah, label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = icmp eq ptr %2, %1
  br i1 %i.ai, label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 5                 ; 2 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = ashr exact i64 %i.ao, 5                 ; 3 uses
  %i.aq = sub nsw i64 %i.am, %i.ap
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i, label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %1, %bb.aa ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %0, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %.079.i.i.i, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.079.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.010.i.i.i, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit, label %.lr.ph.i.i.i, !llvm.loop !6

bb.ab:                                            ; preds = %bb.aa
  %i.au = sub i64 %i.aj, %i.an
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.070.i.i = phi i64 [ %i.am, %bb.ab ], [ %.070.i.i.be, %.backedge ] ; 5 uses
  %.066.i.i = phi i64 [ %i.ap, %bb.ab ], [ %.066.i.i.be, %.backedge ] ; 12 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 7 uses
  %i.aw = sub nsw i64 %.070.i.i, %.066.i.i        ; 8 uses
  %i.ax = icmp slt i64 %.066.i.i, %i.aw
  br i1 %i.ax, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = icmp sgt i64 %i.aw, 0
  br i1 %i.ay, label %.lr.ph89.preheader.i.i, label %._crit_edge90.i.i

.lr.ph89.preheader.i.i:                           ; preds = %bb.ad
  %i.az = getelementptr inbounds [32 x i8], ptr %.041.i.i, i64 %.066.i.i ; 2 uses
  %.neg = add i64 %.066.i.i, 1
  %xtraiter63 = and i64 %i.aw, 1
  %i.ba = icmp eq i64 %.070.i.i, %.neg
  br i1 %i.ba, label %.lr.ph89.i.i.epil.preheader, label %.lr.ph89.preheader.i.i.new

.lr.ph89.preheader.i.i.new:                       ; preds = %.lr.ph89.preheader.i.i
  %unroll_iter67 = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph89.i.i

._crit_edge90.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph89.i.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge90.i.i, label %.lr.ph89.i.i.epil.preheader

.lr.ph89.i.i.epil.preheader:                      ; preds = %._crit_edge90.i.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i.i
  %.04086.i.i.epil.init = phi ptr [ %i.az, %.lr.ph89.preheader.i.i ], [ %i.bg, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.185.i.i.epil.init = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.185.i.i.epil.init, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.185.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %.04086.i.i.epil.init, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.04086.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %.185.i.i.epil.init, i64 32
  br label %._crit_edge90.i.i

._crit_edge90.i.i:                                ; preds = %.lr.ph89.i.i.epil.preheader, %._crit_edge90.i.i.loopexit.unr-lcssa, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph89.i.i.epil.preheader ]
  %i.bc = srem i64 %.070.i.i, %.066.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit, label %bb.ae

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i, %.lr.ph89.preheader.i.i.new
  %.04086.i.i = phi ptr [ %i.az, %.lr.ph89.preheader.i.i.new ], [ %i.bg, %.lr.ph89.i.i ] ; 4 uses
  %.185.i.i = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i.new ], [ %i.bf, %.lr.ph89.i.i ] ; 4 uses
  %niter68 = phi i64 [ 0, %.lr.ph89.preheader.i.i.new ], [ %niter68.next.1, %.lr.ph89.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %.185.i.i, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.185.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.04086.i.i, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.04086.i.i, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 64 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 64 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge90.i.i.loopexit.unr-lcssa, label %.lr.ph89.i.i, !llvm.loop !7

bb.ae:                                            ; preds = %._crit_edge90.i.i
  %i.bh = sub nsw i64 %.066.i.i, %i.bc
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds [32 x i8], ptr %.041.i.i, i64 %.070.i.i ; 3 uses
  %i.bj = sub i64 0, %i.aw
  %i.bk = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = icmp sgt i64 %.066.i.i, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.066.i.i, 1
  %i.bm = icmp eq i64 %.066.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.066.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.03883.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.282.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %.066.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bn = getelementptr inbounds i8, ptr %.282.i.i.epil.init, i64 -32 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03883.i.i.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.041.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.041.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.070.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.070.i.i.be = phi i64 [ %.066.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.066.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.041.i.i.be = phi ptr [ %.1.lcssa.i.i, %bb.ae ], [ %.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !8

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.03883.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.282.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.282.i.i, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.03883.i.i, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.282.i.i, i64 -64 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.03883.i.i, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !tbaa.struct !602
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !602
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt3_V26rotateIPN3lld3elf10RelocationEEET_S5_S5_S5_.exit: ; preds = %._crit_edge.i.i, %._crit_edge90.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit39, %_ZSt4moveIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit36
  %.0 = phi ptr [ %i.p, %_ZSt4moveIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit36 ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN3lld3elf10RelocationES3_ET0_T_S5_S4_.exit39 ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge90.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld3elf14checkAlignmentERNS0_3CtxEPhmiRKNS0_10RelocationE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 4 uses
  %5 = alloca %"struct.lld::elf::ErrorPlace", align 8 ; 10 uses
  %6 = alloca %"struct.lld::elf::ELFSyncStream", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = add nsw i32 %3, -1
  %i.d = sext i32 %i.c to i64
  %i.e = and i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN3lld3elf3ErrERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3472) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !922
  call void @_ZN3lld3elf13getErrorPlaceERNS0_3CtxEPKh(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ErrorPlace") align 8 %5, ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1) #25, !noalias !922
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !589, !alias.scope !922
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !590, !noalias !922 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !591, !noalias !922 ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %7, align 8, !tbaa !590, !alias.scope !922
  %i.o = load i64, ptr %i.i, align 8, !tbaa !592, !noalias !922
  store i64 %i.o, ptr %i.g, align 8, !tbaa !592, !alias.scope !922
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !591, !noalias !922
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !tbaa !591, !alias.scope !922
  store ptr %i.i, ptr %i.f, align 8, !tbaa !590, !noalias !922
  store i64 0, ptr %i.q, align 8, !tbaa !591, !noalias !922
  store i8 0, ptr %i.i, align 8, !tbaa !592, !noalias !922
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !590, !noalias !922 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !592, !noalias !922
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  %.pre2.i = load ptr, ptr %i.f, align 8, !tbaa !590, !noalias !922 ; 2 uses
  %i.y = icmp eq ptr %.pre2.i, %i.i
  br i1 %i.y, label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !592, !noalias !922
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre2.i, i64 noundef %i.aa) #28
  br label %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit

_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !922
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !590
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !591
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.ac, i64 noundef %i.ad) #25 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 34
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull @.str.23, i64 noundef 34) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

bb.e:                                             ; preds = %_ZN3lld3elfL11getErrorLocB5cxx11ERNS0_3CtxEPKh.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ai, ptr noundef nonnull align 1 dereferenceable(34) @.str.23, i64 34, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 34
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit:     ; preds = %bb.d, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.aq, align 4, !tbaa !527
  %i.ar = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamENS0_7RelTypeE(ptr noundef nonnull align 8 dereferenceable(104) %6, i32 %.sroa.0.0.copyload) #25 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 72 ; 9 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 4
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.24, i64 noundef 4) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6

bb.g:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit
  store i32 2016419898, ptr %i.aw, align 1
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6:    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !923
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 48, ptr %9, align 16, !tbaa !592, !noalias !923
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread
  %.1.lcssa.i = phi ptr [ %9, %.thread ], [ %i.bs, %.lr.ph.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.bf, ptr %8, align 8, !tbaa !589, !alias.scope !923
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !591, !alias.scope !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !923
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %.1.lcssa.i to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !596, !noalias !923
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.bl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.bl, ptr %8, align 8, !tbaa !590, !alias.scope !923
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !596, !noalias !923
  store i64 %i.bm, ptr %i.bf, align 8, !tbaa !592, !alias.scope !923
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %._crit_edge.i
  %i.bn = phi ptr [ %i.bl, %bb.h ], [ %i.bf, %._crit_edge.i ] ; 2 uses
  switch i64 %i.bj, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4llvm9utohexstrB5cxx11Embj.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = load i8, ptr %.1.lcssa.i, align 1, !tbaa !592, !noalias !923
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !592
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %.1.lcssa.i, i64 %i.bj, i1 false)
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit

.lr.ph.i:                                         ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6, %.lr.ph.i
  %.020.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %2, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6 ] ; 2 uses
  %.118.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.be, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit6 ]
  %i.bp = and i64 %.020.i, 15
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !592, !noalias !923
  %i.bs = getelementptr inbounds i8, ptr %.118.i, i64 -1 ; 3 uses
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !592, !noalias !923
  %i.bt = lshr i64 %.020.i, 4                     ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !596, !noalias !923 ; 2 uses
  store i64 %i.bv, ptr %i.bg, align 8, !tbaa !591, !alias.scope !923
  %i.bw = load ptr, ptr %8, align 8, !tbaa !590, !alias.scope !923
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !923
  %i.by = load ptr, ptr %8, align 8, !tbaa !590
  %i.bz = load i64, ptr %i.bg, align 8, !tbaa !591
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.by, i64 noundef %i.bz) #25 ; 0 uses
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.cc = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 19
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.ch = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.25, i64 noundef 19) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit8

bb.l:                                             ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.cc, ptr noundef nonnull align 1 dereferenceable(19) @.str.25, i64 19, i1 false)
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 19
  store ptr %i.cj, ptr %i.av, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit8

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit8:    ; preds = %bb.k, %bb.l
  %i.ck = sext i32 %3 to i64
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 noundef %i.ck) #25 ; 0 uses
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ult i64 %i.cq, 6
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit8
  %i.cs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.26, i64 noundef 6) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit10

bb.n:                                             ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cn, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  %i.ct = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  store ptr %i.cu, ptr %i.av, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit10

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit10:   ; preds = %bb.m, %bb.n
  %i.cv = load ptr, ptr %8, align 8, !tbaa !590   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit10
  %i.cx = load i64, ptr %i.bf, align 8, !tbaa !592
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cz = load ptr, ptr %7, align 8, !tbaa !590   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.g
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.g, align 8, !tbaa !592
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld3elf12checkIntUIntERNS0_3CtxEPhmiRKNS0_10RelocationE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = icmp eq i32 %3, 0                        ; 3 uses
  %i.b = sub i32 64, %3
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl i64 %2, %i.c
  %i.e = ashr exact i64 %i.d, %i.c
  %.0.i = select i1 %i.a, i64 0, i64 %i.e
  %.not = icmp eq i64 %2, %.0.i
  %i.f = zext nneg i32 %3 to i64
  %i.g = lshr i64 %2, %i.f
  %.not10 = icmp eq i64 %i.g, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 12, ptr %i.h, align 8, !tbaa !607
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !608
  store i64 %2, ptr %5, align 8, !tbaa !592
  %i.j = sext i32 %3 to i64                       ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = shl nsw i64 -1, %i.k
  %.0.i12 = select i1 %i.a, i64 0, i64 %i.l
  %i.m = sub nsw i64 64, %i.j
  %i.n = lshr i64 -1, %i.m
  %.0.i13 = select i1 %i.a, i64 0, i64 %i.n
  call void @_ZN3lld3elf16reportRangeErrorERNS0_3CtxEPhRKNS0_10RelocationERKN4llvm5TwineElm(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(34) %5, i64 noundef %.0.i12, i64 noundef %.0.i13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3lld3elf8checkIntERNS0_3CtxEPhliRKNS0_10RelocationE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = icmp eq i32 %3, 0                        ; 3 uses
  %i.b = sub i32 64, %3
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl i64 %2, %i.c
  %i.e = ashr exact i64 %i.d, %i.c
  %.0.i = select i1 %i.a, i64 0, i64 %i.e
  %.not = icmp eq i64 %2, %.0.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 12, ptr %i.f, align 8, !tbaa !607
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !608
  store i64 %2, ptr %5, align 8, !tbaa !592
  %i.h = sext i32 %3 to i64
  %i.i = add nsw i64 %i.h, -1
  %i.j = shl nsw i64 -1, %i.i                     ; 2 uses
  %.0.i8 = select i1 %i.a, i64 0, i64 %i.j
  %i.k = xor i64 %i.j, -1
  %.0.i9 = select i1 %i.a, i64 0, i64 %i.k
  call void @_ZN3lld3elf16reportRangeErrorERNS0_3CtxEPhRKNS0_10RelocationERKN4llvm5TwineElm(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(34) %5, i64 noundef %.0.i8, i64 noundef %.0.i9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9utohexstrB5cxx11Embj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  %i.d = icmp ne i64 %1, 0
  %i.e = icmp ne i32 %3, 0                        ; 3 uses
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 48, ptr %i.f, align 16, !tbaa !592
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.015 = phi ptr [ %i.c, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %i.g = icmp eq i32 %3, 0
  %i.h = icmp eq i64 %1, 0
  %.not17 = select i1 %i.e, i1 %i.g, i1 %i.h
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = select i1 %2, i8 32, i8 0
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.1.lcssa = phi ptr [ %.015, %bb.c ], [ %i.aa, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %.1.lcssa to i64
end_hunk_0
