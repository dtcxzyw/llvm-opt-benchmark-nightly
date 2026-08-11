inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105
  %i.t = load ptr, ptr %11, align 8, !tbaa !607
  store ptr %i.t, ptr %.sroa.12.0371, align 8, !tbaa !607
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.12.0371, i64 8
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %.sroa.12.0371 to i64       ; 3 uses
  %i.w = ptrtoint ptr %.sroa.0231.0372 to i64     ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.m, label %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #49
          to label %.noexc179 unwind label %.loopexit.split-lp

.noexc179:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i178 = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i178)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #47
          to label %.noexc180 unwind label %.loopexit ; 12 uses

.noexc180:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = load ptr, ptr %11, align 8, !tbaa !607
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !607
  store ptr null, ptr %11, align 8, !tbaa !607
  %.not10.i.i.i.i = icmp eq ptr %.sroa.0231.0372, %.sroa.12.0371
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc180
  %i.ai = add i64 %i.v, -8
  %i.aj = sub i64 %i.ai, %i.w                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.am = add i64 %i.v, -8
  %i.an = sub i64 %i.am, %i.w
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %scevgep537 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep538 = getelementptr i8, ptr %.sroa.0231.0372, i64 8
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.ao
  %bound0 = icmp ult ptr %i.af, %scevgep539
  %bound1 = icmp ult ptr %.sroa.0231.0372, %scevgep537
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader543, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.0231.0372, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %next.gep540 = getelementptr i8, ptr %.sroa.0231.0372, i64 %i.as ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.at = getelementptr i8, ptr %next.gep540, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep540, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %wide.load541 = load <2 x ptr>, ptr %i.at, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !607, !alias.scope !617, !noalias !614
  store <2 x ptr> %wide.load541, ptr %i.au, align 8, !tbaa !607, !alias.scope !617, !noalias !614
  store <2 x ptr> splat (ptr null), ptr %next.gep540, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !607, !alias.scope !614, !noalias !609
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader543

.lr.ph.i.i.i.i.preheader543:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %.sroa.0231.0372, %vector.memcheck ], [ %.sroa.0231.0372, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader543, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader543 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader543 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.aw = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !607, !alias.scope !612, !noalias !609
  store ptr %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !607, !alias.scope !609, !noalias !612
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !607, !alias.scope !612, !noalias !609
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %.sroa.12.0371
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !620

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc180
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc180 ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %.sroa.0231.0372, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0372, i64 noundef %i.x) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.n
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 3 uses
  %.pr = load ptr, ptr %11, align 8, !tbaa !607   ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit
  %i.bb = atomicrmw sub ptr %.pr, i32 1 seq_cst, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pr) #3
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 400) #45
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, %bb.o, %bb.p
  %.sroa.0231.1330 = phi ptr [ %.sroa.0231.0372, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.af, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.af, %bb.o ], [ %i.af, %bb.p ] ; 11 uses
  %.sroa.12.1329 = phi ptr [ %i.u, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.az, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.az, %bb.o ], [ %i.az, %bb.p ] ; 6 uses
  %.sroa.18.1328 = phi ptr [ %.sroa.18.0370, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.ba, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.ba, %bb.o ], [ %i.ba, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.a, align 4, !tbaa !3
  %i.bf = icmp slt i32 %i.bd, 243
  br i1 %i.bf, label %bb.h, label %bb.w, !llvm.loop !621

bb.q:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.r:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 400) #45
  br label %bb.u

.loopexit:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.18.0370415 = phi ptr [ %.sroa.12.0371, %bb.t ], [ %.sroa.18.0370, %bb.r ], [ %.sroa.18.0370, %bb.s ]
  %.pn91 = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %i.bh, %bb.r ], [ %i.bi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.sroa.18.0370414 = phi ptr [ %.sroa.18.0370415, %bb.u ], [ %.sroa.18.0370, %bb.q ]
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.u ], [ %i.bg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.bj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #3 ; 0 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !622
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !624
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %.preheader339

.preheader339:                                    ; preds = %bb.w, %bb.y
  %indvars.iv443 = phi i64 [ 0, %bb.w ], [ %indvars.iv.next444, %bb.y ] ; 2 uses
  %.075383 = phi i64 [ 0, %bb.w ], [ %i.bv, %bb.y ] ; 3 uses
  %.0321381 = phi i64 [ 0, %bb.w ], [ %i.ck, %bb.y ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.1330, i64 %indvars.iv443
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !607
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = lshr i64 %i.bp, 23
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, 2388976653695081527      ; 2 uses
  %i.bt = lshr i64 %i.bs, 47
  %12 = trunc i64 %.075383 to i32
  %13 = or disjoint i32 %12, 64
  %invariant.op596 = xor i64 %i.bt, %i.bs
  br label %.preheader338

bb.x:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  store i64 %i.ck, ptr %8, align 16, !tbaa !34
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.bu, ptr nonnull @.str.77, i64 8, i64 4, ptr nonnull %8)
          to label %bb.ab unwind label %bb.ac

.preheader338:                                    ; preds = %.preheader339, %bb.z
  %indvars.iv440 = phi i64 [ 0, %.preheader339 ], [ %indvars.iv.next441, %bb.z ] ; 3 uses
  %indvars.iv438 = phi i32 [ %13, %.preheader339 ], [ %indvars.iv.next439, %bb.z ] ; 2 uses
  %.176380 = phi i64 [ %.075383, %.preheader339 ], [ %14, %bb.z ] ; 2 uses
  %.1322378 = phi i64 [ %.0321381, %.preheader339 ], [ %i.ck, %bb.z ]
  %invariant.op = mul nuw nsw i64 %indvars.iv440, 4294967808
  br label %bb.aa

bb.y:                                             ; preds = %bb.z
  %i.bv = add nuw nsw i64 %.075383, 4096
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next444, 244
  br i1 %exitcond446.not, label %bb.x, label %.preheader339, !llvm.loop !625

bb.z:                                             ; preds = %bb.aa
  %14 = add i64 %.176380, 64
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 64
  %i.bw = icmp samesign ult i64 %indvars.iv440, 4032
  %indvars.iv.next439 = add i32 %indvars.iv438, 64
  br i1 %i.bw, label %.preheader338, label %bb.y, !llvm.loop !626

bb.aa:                                            ; preds = %.preheader338, %bb.aa
  %indvars.iv = phi i64 [ 0, %.preheader338 ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.277377 = phi i64 [ %.176380, %.preheader338 ], [ %i.cl, %bb.aa ]
  %.2323375 = phi i64 [ %.1322378, %.preheader338 ], [ %i.ck, %bb.aa ]
  %.reass = add nuw nsw i64 %invariant.op, %indvars.iv
  %i.bx = mul i64 %.reass, 2388976653695081527    ; 2 uses
  %i.by = lshr i64 %i.bx, 47
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = xor i64 %i.bz, 4649242950869184803
  %i.cb = mul i64 %i.ca, -1937439104295312935
  %i.cc = xor i64 %i.cb, -7773383688535857090
  %i.cd = mul i64 %i.cc, -1937439104295312935
  %.reass374.reass.reass = xor i64 %i.cd, %invariant.op596
  %i.ce = mul i64 %.reass374.reass.reass, -8645972361240307355 ; 2 uses
  %i.cf = lshr i64 %i.ce, 23
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = mul i64 %i.cg, 2388976653695081527      ; 2 uses
  %i.ci = lshr i64 %i.ch, 47
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, %.2323375                ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64
  %i.cl = add i64 %.277377, 1                     ; 2 uses
  %lftr.wideiv = trunc i64 %i.cl to i32
  %exitcond.not = icmp eq i32 %indvars.iv438, %lftr.wideiv
  br i1 %exitcond.not, label %bb.z, label %bb.aa, !llvm.loop !627

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #3 ; 0 uses
  %i.cn = load i64, ptr %0, align 8, !tbaa !622
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !624
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  %reass.add = sub i64 %i.cn, %i.bk
  %reass.mul = mul i64 %reass.add, 1000000000
  %i.cq = sub i64 %i.cp, %i.bm
  %i.cr = add i64 %i.cq, %reass.mul
  %i.cs = call noundef i64 @llvm.abs.i64(i64 %i.cr, i1 true)
  %i.ct = uitofp nneg i64 %i.cs to double
  %i.cu = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !371
  %i.cv = fmul double %i.cu, %i.ct
  %i.cw = fdiv double f0x3FEFFB480A5ACCD5, %i.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  store double %i.cw, ptr %7, align 16, !tbaa !34
  %i.cx = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.cx, ptr nonnull @.str.78, i64 35, i64 10, ptr nonnull %7)
          to label %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit unwind label %bb.ad

_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %.preheader337

.preheader337:                                    ; preds = %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit, %bb.ae
  %indvars.iv457.a = phi i64 [ 0, %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit ], [ %indvars.iv.next458.a, %bb.ae ] ; 2 uses
  %.378392 = phi i64 [ 0, %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit ], [ %i.dh, %bb.ae ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.1330, i64 %indvars.iv457.a
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !607
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = lshr i64 %i.da, 23
  %i.dc = xor i64 %i.db, %i.da
  %i.dd = mul i64 %i.dc, 2388976653695081527      ; 2 uses
  %i.de = lshr i64 %i.dd, 47
  %15 = trunc i64 %.378392 to i32
  %16 = or disjoint i32 %15, 64
  %invariant.op597 = xor i64 %i.de, %i.dd
  br label %.preheader336

bb.ac:                                            ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.ad:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

.preheader336:                                    ; preds = %.preheader337, %bb.af
  %indvars.iv454 = phi i64 [ 0, %.preheader337 ], [ %indvars.iv.next455, %bb.af ] ; 3 uses
  %indvars.iv450 = phi i32 [ %16, %.preheader337 ], [ %indvars.iv.next451, %bb.af ] ; 2 uses
  %.479390 = phi i64 [ %.378392, %.preheader337 ], [ %17, %bb.af ] ; 2 uses
  %invariant.op384 = mul nuw nsw i64 %indvars.iv454, 4294967808
  br label %bb.ag

bb.ae:                                            ; preds = %bb.af
  %i.dh = add nuw nsw i64 %.378392, 4096
  %indvars.iv.next458.a = add nuw nsw i64 %indvars.iv457.a, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next458.a, 244
  br i1 %exitcond460.not, label %.preheader.preheader, label %.preheader337, !llvm.loop !628

.preheader.preheader:                             ; preds = %bb.ae
  %i.di = load i64, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110 ; 2 uses
  %spec.select.1 = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.di)
  %.1.1 = call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.di)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !110 ; 2 uses
  %spec.select.2 = call i64 @llvm.umin.i64(i64 %i.dm, i64 %spec.select.1)
  %.1.2 = call i64 @llvm.umax.i64(i64 %i.dm, i64 %.1.1)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !110 ; 2 uses
  %spec.select.3 = call i64 @llvm.umin.i64(i64 %i.do, i64 %spec.select.2)
  %.1.3 = call i64 @llvm.umax.i64(i64 %i.do, i64 %.1.2)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !110 ; 2 uses
  %spec.select.4 = call i64 @llvm.umin.i64(i64 %i.dq, i64 %spec.select.3)
  %.1.4 = call i64 @llvm.umax.i64(i64 %i.dq, i64 %.1.3)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !110 ; 2 uses
  %spec.select.5 = call i64 @llvm.umin.i64(i64 %i.ds, i64 %spec.select.4)
  %.1.5 = call i64 @llvm.umax.i64(i64 %i.ds, i64 %.1.4)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !110 ; 2 uses
  %spec.select.6 = call i64 @llvm.umin.i64(i64 %i.du, i64 %spec.select.5)
  %.1.6 = call i64 @llvm.umax.i64(i64 %i.du, i64 %.1.5)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !110 ; 2 uses
  %spec.select.7 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %spec.select.6)
  %.1.7 = call i64 @llvm.umax.i64(i64 %i.dw, i64 %.1.6)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !110 ; 2 uses
  %spec.select.8 = call i64 @llvm.umin.i64(i64 %i.dy, i64 %spec.select.7)
  %.1.8 = call i64 @llvm.umax.i64(i64 %i.dy, i64 %.1.7)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !110 ; 2 uses
  %spec.select.9 = call i64 @llvm.umin.i64(i64 %i.ea, i64 %spec.select.8)
  %.1.9 = call i64 @llvm.umax.i64(i64 %i.ea, i64 %.1.8)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !110 ; 2 uses
  %spec.select.10 = call i64 @llvm.umin.i64(i64 %i.ec, i64 %spec.select.9)
  %.1.10 = call i64 @llvm.umax.i64(i64 %i.ec, i64 %.1.9)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !110 ; 2 uses
  %spec.select.11 = call i64 @llvm.umin.i64(i64 %i.ee, i64 %spec.select.10)
  %.1.11 = call i64 @llvm.umax.i64(i64 %i.ee, i64 %.1.10)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !110 ; 2 uses
  %spec.select.12 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %spec.select.11)
  %.1.12 = call i64 @llvm.umax.i64(i64 %i.eg, i64 %.1.11)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !110 ; 2 uses
  %spec.select.13 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %spec.select.12)
  %.1.13 = call i64 @llvm.umax.i64(i64 %i.ei, i64 %.1.12)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !110 ; 2 uses
  %spec.select.14 = call i64 @llvm.umin.i64(i64 %i.ek, i64 %spec.select.13)
  %.1.14 = call i64 @llvm.umax.i64(i64 %i.ek, i64 %.1.13)
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.em = load i64, ptr %i.el, align 8, !tbaa !110 ; 2 uses
  %spec.select.15 = call i64 @llvm.umin.i64(i64 %i.em, i64 %spec.select.14)
  %.1.15 = call i64 @llvm.umax.i64(i64 %i.em, i64 %.1.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store i64 %spec.select.15, ptr %3, align 16, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.1.15, ptr %i.en, align 16, !tbaa !34
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.eo, ptr nonnull @.str.79, i64 39, i64 68, ptr nonnull %3)
          to label %bb.ah unwind label %bb.aj

bb.af:                                            ; preds = %bb.ag
  %17 = add i64 %.479390, 64
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 64
  %i.ep = icmp samesign ult i64 %indvars.iv454, 4032
  %indvars.iv.next451 = add i32 %indvars.iv450, 64
  br i1 %i.ep, label %.preheader336, label %bb.ae, !llvm.loop !629

bb.ag:                                            ; preds = %.preheader336, %bb.ag
  %indvars.iv447 = phi i64 [ 0, %.preheader336 ], [ %indvars.iv.next448, %bb.ag ] ; 2 uses
  %.580388 = phi i64 [ %.479390, %.preheader336 ], [ %i.fu, %bb.ag ]
  %.reass385 = add nuw nsw i64 %invariant.op384, %indvars.iv447
  %i.eq = mul i64 %.reass385, 2388976653695081527 ; 2 uses
  %i.er = lshr i64 %i.eq, 47
  %i.es = xor i64 %i.eq, %i.er
  %i.et = xor i64 %i.es, 4649242950869184803
  %i.eu = mul i64 %i.et, -1937439104295312935
  %i.ev = xor i64 %i.eu, -7773383688535857090
  %i.ew = mul i64 %i.ev, -1937439104295312935
  %.reass387.reass.reass = xor i64 %i.ew, %invariant.op597
  %i.ex = mul i64 %.reass387.reass.reass, -8645972361240307355 ; 2 uses
  %i.ey = lshr i64 %i.ex, 23
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = mul i64 %i.ez, 2388976653695081527      ; 3 uses
  %i.fb = lshr i64 %i.fa, 47
  %i.fc = xor i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = and i64 %i.fc, 15
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !110
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !110
  %i.fh = and i64 %i.fc, 255
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fh ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !110
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !110
  %i.fl = lshr i64 %i.fa, 24
  %i.fm = and i64 %i.fl, 255
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !110
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !110
  %i.fq = and i64 %i.fc, 65535
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !110
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !110
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 64
  %i.fu = add i64 %.580388, 1                     ; 2 uses
  %lftr.wideiv452 = trunc i64 %i.fu to i32
  %exitcond453.not = icmp eq i32 %indvars.iv450, %lftr.wideiv452
  br i1 %exitcond453.not, label %bb.af, label %bb.ag, !llvm.loop !630

bb.ah:                                            ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  store i64 %spec.select331.3, ptr %4, align 16, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.3.3, ptr %i.fv, align 16, !tbaa !34
  %i.fw = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.fw, ptr nonnull @.str.80, i64 39, i64 68, ptr nonnull %4)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %bb.ap, %bb.am, %bb.ai, %.preheader.preheader
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.ak:                                            ; preds = %bb.ak, %bb.ah
  %indvars.iv465 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next466.3, %bb.ak ] ; 5 uses
  %.2398 = phi i64 [ 0, %bb.ah ], [ %.3.3, %bb.ak ]
  %.2315397 = phi i64 [ -1, %bb.ah ], [ %spec.select331.3, %bb.ak ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !110 ; 2 uses
  %spec.select331 = call i64 @llvm.umin.i64(i64 %i.fz, i64 %.2315397)
  %.3 = call i64 @llvm.umax.i64(i64 %i.fz, i64 %.2398)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !110 ; 2 uses
  %spec.select331.1 = call i64 @llvm.umin.i64(i64 %i.gc, i64 %spec.select331)
  %.3.1 = call i64 @llvm.umax.i64(i64 %i.gc, i64 %.3)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !110 ; 2 uses
  %spec.select331.2 = call i64 @llvm.umin.i64(i64 %i.gf, i64 %spec.select331.1)
  %.3.2 = call i64 @llvm.umax.i64(i64 %i.gf, i64 %.3.1)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !110 ; 2 uses
  %spec.select331.3 = call i64 @llvm.umin.i64(i64 %i.gi, i64 %spec.select331.2) ; 2 uses
  %.3.3 = call i64 @llvm.umax.i64(i64 %i.gi, i64 %.3.2) ; 2 uses
  %indvars.iv.next466.3 = add nuw nsw i64 %indvars.iv465, 4 ; 2 uses
  %exitcond468.not.3 = icmp eq i64 %indvars.iv.next466.3, 256
  br i1 %exitcond468.not.3, label %bb.ai, label %bb.ak, !llvm.loop !631

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  store i64 %spec.select332.3, ptr %5, align 16, !tbaa !34
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.5.3, ptr %i.gj, align 16, !tbaa !34
  %i.gk = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.gk, ptr nonnull @.str.81, i64 46, i64 68, ptr nonnull %5)
          to label %bb.ao unwind label %bb.aj

bb.an:                                            ; preds = %bb.an, %bb.al
  %indvars.iv469 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next470.3, %bb.an ] ; 5 uses
  %.4401 = phi i64 [ 0, %bb.al ], [ %.5.3, %bb.an ]
  %.4317400 = phi i64 [ -1, %bb.al ], [ %spec.select332.3, %bb.an ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !110 ; 2 uses
  %spec.select332 = call i64 @llvm.umin.i64(i64 %i.gm, i64 %.4317400)
  %.5 = call i64 @llvm.umax.i64(i64 %i.gm, i64 %.4401)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !110 ; 2 uses
  %spec.select332.1 = call i64 @llvm.umin.i64(i64 %i.gp, i64 %spec.select332)
  %.5.1 = call i64 @llvm.umax.i64(i64 %i.gp, i64 %.5)
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !110 ; 2 uses
  %spec.select332.2 = call i64 @llvm.umin.i64(i64 %i.gs, i64 %spec.select332.1)
  %.5.2 = call i64 @llvm.umax.i64(i64 %i.gs, i64 %.5.1)
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !110 ; 2 uses
  %spec.select332.3 = call i64 @llvm.umin.i64(i64 %i.gv, i64 %spec.select332.2) ; 2 uses
  %.5.3 = call i64 @llvm.umax.i64(i64 %i.gv, i64 %.5.2) ; 2 uses
  %indvars.iv.next470.3 = add nuw nsw i64 %indvars.iv469, 4 ; 2 uses
  %exitcond472.not.3 = icmp eq i64 %indvars.iv.next470.3, 256
  br i1 %exitcond472.not.3, label %bb.am, label %bb.an, !llvm.loop !632

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  store i64 %spec.select333.3, ptr %6, align 16, !tbaa !34
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.7.3, ptr %i.gw, align 16, !tbaa !34
  %i.gx = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.gx, ptr nonnull @.str.82, i64 40, i64 68, ptr nonnull %6)
          to label %bb.ar unwind label %bb.aj

bb.aq:                                            ; preds = %bb.aq, %bb.ao
  %indvars.iv473 = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next474.3, %bb.aq ] ; 5 uses
  %.6404 = phi i64 [ 0, %bb.ao ], [ %.7.3, %bb.aq ]
  %.6319403 = phi i64 [ -1, %bb.ao ], [ %spec.select333.3, %bb.aq ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !110 ; 2 uses
  %spec.select333 = call i64 @llvm.umin.i64(i64 %i.gz, i64 %.6319403)
  %.7 = call i64 @llvm.umax.i64(i64 %i.gz, i64 %.6404)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !110 ; 2 uses
  %spec.select333.1 = call i64 @llvm.umin.i64(i64 %i.hc, i64 %spec.select333)
  %.7.1 = call i64 @llvm.umax.i64(i64 %i.hc, i64 %.7)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !110 ; 2 uses
  %spec.select333.2 = call i64 @llvm.umin.i64(i64 %i.hf, i64 %spec.select333.1)
  %.7.2 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %.7.1)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !110 ; 2 uses
  %spec.select333.3 = call i64 @llvm.umin.i64(i64 %i.hi, i64 %spec.select333.2) ; 2 uses
  %.7.3 = call i64 @llvm.umax.i64(i64 %i.hi, i64 %.7.2) ; 2 uses
  %indvars.iv.next474.3 = add nuw nsw i64 %indvars.iv473, 4 ; 2 uses
  %exitcond476.not.3 = icmp eq i64 %indvars.iv.next474.3, 65536
  br i1 %exitcond476.not.3, label %bb.ap, label %bb.aq, !llvm.loop !633

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.hj = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.hj, ptr nonnull @.str.41, i64 1, i64 0, ptr nonnull %2)
          to label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit unwind label %bb.aj

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  %.not4.i.i.i = icmp eq ptr %.sroa.0231.1330, %.sroa.12.1329
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hn, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ] ; 2 uses
  %i.hk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !607 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hl = atomicrmw sub ptr %i.hk, i32 1 seq_cst, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.at, label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.hk) #3
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 400) #45
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hn, %.sroa.12.1329
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !634

_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.0231.1330, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.ho = ptrtoint ptr %.sroa.18.1328 to i64
  %i.hp = ptrtoint ptr %.sroa.0231.1330 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.1330, i64 noundef %i.hq) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.au
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !43 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i142, label %_ZNSt6vectorImSaImEED2Ev.exit150, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 4294967297
  %i.hw = trunc i64 %i.hu to i32                  ; 2 uses
  br i1 %i.hv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ht, align 8, !tbaa !46
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.hx, align 4, !tbaa !48
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !40
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #3, !inline_history !57
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !40
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #3, !inline_history !57
  br label %_ZNSt6vectorImSaImEED2Ev.exit150

bb.ax:                                            ; preds = %bb.av
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
end_hunk_0
