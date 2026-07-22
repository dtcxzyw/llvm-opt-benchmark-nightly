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
  %i.ai = sub i64 %i.v, %i.w
  %i.aj = add i64 %i.ai, -8                       ; 2 uses
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
  %.075383 = phi i64 [ 0, %bb.w ], [ %indvars.iv.next444, %bb.y ] ; 2 uses
  %.0321381 = phi i64 [ 0, %bb.w ], [ %indvars.iv.next.a, %bb.y ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.1330, i64 %.075383
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !607
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = lshr i64 %i.bp, 23
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, 2388976653695081527      ; 2 uses
  %i.bt = lshr i64 %i.bs, 47
  %invariant.op596 = xor i64 %i.bt, %i.bs
  br label %.preheader338

bb.x:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  store i64 %indvars.iv.next.a, ptr %8, align 16, !tbaa !34
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.bu, ptr nonnull @.str.77, i64 8, i64 4, ptr nonnull %8)
          to label %bb.ab unwind label %bb.ac

.preheader338:                                    ; preds = %.preheader339, %bb.z
  %.176380 = phi i64 [ 0, %.preheader339 ], [ %i.bv, %bb.z ] ; 3 uses
  %.1322378 = phi i64 [ %.0321381, %.preheader339 ], [ %indvars.iv.next.a, %bb.z ]
  %invariant.op = mul nuw nsw i64 %.176380, 4294967808
  br label %bb.aa

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next444 = add nuw nsw i64 %.075383, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next444, 244
  br i1 %exitcond446.not, label %bb.x, label %.preheader339, !llvm.loop !625

bb.z:                                             ; preds = %bb.aa
  %i.bv = add nuw nsw i64 %.176380, 64
  %i.bw = icmp samesign ult i64 %.176380, 4032
  br i1 %i.bw, label %.preheader338, label %bb.y, !llvm.loop !626

bb.aa:                                            ; preds = %.preheader338, %bb.aa
  %.277377 = phi i64 [ 0, %.preheader338 ], [ %i.ck, %bb.aa ] ; 3 uses
  %.2323375 = phi i64 [ %.1322378, %.preheader338 ], [ %indvars.iv.next.a, %bb.aa ]
  %.reass = add nuw nsw i64 %invariant.op, %.277377
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
  %indvars.iv.next.a = add i64 %i.cj, %.2323375   ; 4 uses
  %i.ck = add nuw nsw i64 %.277377, 64
  %12 = icmp samesign ult i64 %.277377, 4032
  br i1 %12, label %bb.aa, label %bb.z, !llvm.loop !627

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  %i.cl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #3 ; 0 uses
  %i.cm = load i64, ptr %0, align 8, !tbaa !622
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !624
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  %reass.add = sub i64 %i.cm, %i.bk
  %reass.mul = mul i64 %reass.add, 1000000000
  %i.cp = sub i64 %i.co, %i.bm
  %i.cq = add i64 %i.cp, %reass.mul
  %i.cr = call noundef i64 @llvm.abs.i64(i64 %i.cq, i1 true)
  %i.cs = uitofp nneg i64 %i.cr to double
  %i.ct = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !371
  %i.cu = fmul double %i.ct, %i.cs
  %i.cv = fdiv double f0x3FEFFB480A5ACCD5, %i.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  store double %i.cv, ptr %7, align 16, !tbaa !34
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.cw, ptr nonnull @.str.78, i64 35, i64 10, ptr nonnull %7)
          to label %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit unwind label %bb.ad

_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %.preheader337

.preheader337:                                    ; preds = %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit, %bb.ae
  %.378392 = phi i64 [ 0, %_ZN3fmt3v125printIJRdEEEvNS0_7fstringIJDpT_EE1tEDpOS4_.exit ], [ %indvars.iv.next458.a, %bb.ae ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.1330, i64 %.378392
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !607
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = lshr i64 %i.cz, 23
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, 2388976653695081527      ; 2 uses
  %i.dd = lshr i64 %i.dc, 47
  %invariant.op597 = xor i64 %i.dd, %i.dc
  br label %.preheader336

bb.ac:                                            ; preds = %bb.x
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.ad:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

.preheader336:                                    ; preds = %.preheader337, %bb.af
  %.479390 = phi i64 [ 0, %.preheader337 ], [ %i.en, %bb.af ] ; 3 uses
  %invariant.op384 = mul nuw nsw i64 %.479390, 4294967808
  br label %bb.ag

bb.ae:                                            ; preds = %bb.af
  %indvars.iv.next458.a = add nuw nsw i64 %.378392, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next458.a, 244
  br i1 %exitcond460.not, label %.preheader.preheader, label %.preheader337, !llvm.loop !628

.preheader.preheader:                             ; preds = %bb.ae
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !110 ; 2 uses
  %spec.select.1 = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dg)
  %.1.1 = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dg)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110 ; 2 uses
  %spec.select.2 = call i64 @llvm.umin.i64(i64 %i.dk, i64 %spec.select.1)
  %.1.2 = call i64 @llvm.umax.i64(i64 %i.dk, i64 %.1.1)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !110 ; 2 uses
  %spec.select.3 = call i64 @llvm.umin.i64(i64 %i.dm, i64 %spec.select.2)
  %.1.3 = call i64 @llvm.umax.i64(i64 %i.dm, i64 %.1.2)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !110 ; 2 uses
  %spec.select.4 = call i64 @llvm.umin.i64(i64 %i.do, i64 %spec.select.3)
  %.1.4 = call i64 @llvm.umax.i64(i64 %i.do, i64 %.1.3)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !110 ; 2 uses
  %spec.select.5 = call i64 @llvm.umin.i64(i64 %i.dq, i64 %spec.select.4)
  %.1.5 = call i64 @llvm.umax.i64(i64 %i.dq, i64 %.1.4)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !110 ; 2 uses
  %spec.select.6 = call i64 @llvm.umin.i64(i64 %i.ds, i64 %spec.select.5)
  %.1.6 = call i64 @llvm.umax.i64(i64 %i.ds, i64 %.1.5)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !110 ; 2 uses
  %spec.select.7 = call i64 @llvm.umin.i64(i64 %i.du, i64 %spec.select.6)
  %.1.7 = call i64 @llvm.umax.i64(i64 %i.du, i64 %.1.6)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !110 ; 2 uses
  %spec.select.8 = call i64 @llvm.umin.i64(i64 %i.dw, i64 %spec.select.7)
  %.1.8 = call i64 @llvm.umax.i64(i64 %i.dw, i64 %.1.7)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !110 ; 2 uses
  %spec.select.9 = call i64 @llvm.umin.i64(i64 %i.dy, i64 %spec.select.8)
  %.1.9 = call i64 @llvm.umax.i64(i64 %i.dy, i64 %.1.8)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !110 ; 2 uses
  %spec.select.10 = call i64 @llvm.umin.i64(i64 %i.ea, i64 %spec.select.9)
  %.1.10 = call i64 @llvm.umax.i64(i64 %i.ea, i64 %.1.9)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !110 ; 2 uses
  %spec.select.11 = call i64 @llvm.umin.i64(i64 %i.ec, i64 %spec.select.10)
  %.1.11 = call i64 @llvm.umax.i64(i64 %i.ec, i64 %.1.10)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !110 ; 2 uses
  %spec.select.12 = call i64 @llvm.umin.i64(i64 %i.ee, i64 %spec.select.11)
  %.1.12 = call i64 @llvm.umax.i64(i64 %i.ee, i64 %.1.11)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !110 ; 2 uses
  %spec.select.13 = call i64 @llvm.umin.i64(i64 %i.eg, i64 %spec.select.12)
  %.1.13 = call i64 @llvm.umax.i64(i64 %i.eg, i64 %.1.12)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !110 ; 2 uses
  %spec.select.14 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %spec.select.13)
  %.1.14 = call i64 @llvm.umax.i64(i64 %i.ei, i64 %.1.13)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !110 ; 2 uses
  %spec.select.15 = call i64 @llvm.umin.i64(i64 %i.ek, i64 %spec.select.14)
  %.1.15 = call i64 @llvm.umax.i64(i64 %i.ek, i64 %.1.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store i64 %spec.select.15, ptr %3, align 16, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.1.15, ptr %i.el, align 16, !tbaa !34
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.em, ptr nonnull @.str.79, i64 39, i64 68, ptr nonnull %3)
          to label %bb.ah unwind label %bb.aj

bb.af:                                            ; preds = %bb.ag
  %i.en = add nuw nsw i64 %.479390, 64
  %i.eo = icmp samesign ult i64 %.479390, 4032
  br i1 %i.eo, label %.preheader336, label %bb.ae, !llvm.loop !629

bb.ag:                                            ; preds = %.preheader336, %bb.ag
  %.580388 = phi i64 [ 0, %.preheader336 ], [ %i.ft, %bb.ag ] ; 3 uses
  %.reass385 = add nuw nsw i64 %invariant.op384, %.580388
  %i.ep = mul i64 %.reass385, 2388976653695081527 ; 2 uses
  %i.eq = lshr i64 %i.ep, 47
  %i.er = xor i64 %i.ep, %i.eq
  %i.es = xor i64 %i.er, 4649242950869184803
  %i.et = mul i64 %i.es, -1937439104295312935
  %i.eu = xor i64 %i.et, -7773383688535857090
  %i.ev = mul i64 %i.eu, -1937439104295312935
  %.reass387.reass.reass = xor i64 %i.ev, %invariant.op597
  %i.ew = mul i64 %.reass387.reass.reass, -8645972361240307355 ; 2 uses
  %i.ex = lshr i64 %i.ew, 23
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, 2388976653695081527      ; 3 uses
  %i.fa = lshr i64 %i.ez, 47
  %i.fb = xor i64 %i.fa, %i.ez                    ; 3 uses
  %i.fc = and i64 %i.fb, 15
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fc ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !110
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !110
  %i.fg = and i64 %i.fb, 255
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fg ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !110
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !110
  %i.fk = lshr i64 %i.ez, 24
  %i.fl = and i64 %i.fk, 255
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !110
  %i.fo = add i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !110
  %i.fp = and i64 %i.fb, 65535
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fp ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !110
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !110
  %i.ft = add nuw nsw i64 %.580388, 64
  %13 = icmp samesign ult i64 %.580388, 4032
  br i1 %13, label %bb.ag, label %bb.af, !llvm.loop !630

bb.ah:                                            ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  store i64 %spec.select331.3, ptr %4, align 16, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.3.3, ptr %i.fu, align 16, !tbaa !34
  %i.fv = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.fv, ptr nonnull @.str.80, i64 39, i64 68, ptr nonnull %4)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ar, %bb.ap, %bb.am, %bb.ai, %.preheader.preheader
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit153

bb.ak:                                            ; preds = %bb.ak, %bb.ah
  %indvars.iv465 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next466.3, %bb.ak ] ; 5 uses
  %.2398 = phi i64 [ 0, %bb.ah ], [ %.3.3, %bb.ak ]
  %.2315397 = phi i64 [ -1, %bb.ah ], [ %spec.select331.3, %bb.ak ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !110 ; 2 uses
  %spec.select331 = call i64 @llvm.umin.i64(i64 %i.fy, i64 %.2315397)
  %.3 = call i64 @llvm.umax.i64(i64 %i.fy, i64 %.2398)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !110 ; 2 uses
  %spec.select331.1 = call i64 @llvm.umin.i64(i64 %i.gb, i64 %spec.select331)
  %.3.1 = call i64 @llvm.umax.i64(i64 %i.gb, i64 %.3)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !110 ; 2 uses
  %spec.select331.2 = call i64 @llvm.umin.i64(i64 %i.ge, i64 %spec.select331.1)
  %.3.2 = call i64 @llvm.umax.i64(i64 %i.ge, i64 %.3.1)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv465
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !110 ; 2 uses
  %spec.select331.3 = call i64 @llvm.umin.i64(i64 %i.gh, i64 %spec.select331.2) ; 2 uses
  %.3.3 = call i64 @llvm.umax.i64(i64 %i.gh, i64 %.3.2) ; 2 uses
  %indvars.iv.next466.3 = add nuw nsw i64 %indvars.iv465, 4 ; 2 uses
  %exitcond468.not.3 = icmp eq i64 %indvars.iv.next466.3, 256
  br i1 %exitcond468.not.3, label %bb.ai, label %bb.ak, !llvm.loop !631

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  store i64 %spec.select332.3, ptr %5, align 16, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.5.3, ptr %i.gi, align 16, !tbaa !34
  %i.gj = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.gj, ptr nonnull @.str.81, i64 46, i64 68, ptr nonnull %5)
          to label %bb.ao unwind label %bb.aj

bb.an:                                            ; preds = %bb.an, %bb.al
  %indvars.iv469 = phi i64 [ 0, %bb.al ], [ %indvars.iv.next470.3, %bb.an ] ; 5 uses
  %.4401 = phi i64 [ 0, %bb.al ], [ %.5.3, %bb.an ]
  %.4317400 = phi i64 [ -1, %bb.al ], [ %spec.select332.3, %bb.an ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !110 ; 2 uses
  %spec.select332 = call i64 @llvm.umin.i64(i64 %i.gl, i64 %.4317400)
  %.5 = call i64 @llvm.umax.i64(i64 %i.gl, i64 %.4401)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !110 ; 2 uses
  %spec.select332.1 = call i64 @llvm.umin.i64(i64 %i.go, i64 %spec.select332)
  %.5.1 = call i64 @llvm.umax.i64(i64 %i.go, i64 %.5)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !110 ; 2 uses
  %spec.select332.2 = call i64 @llvm.umin.i64(i64 %i.gr, i64 %spec.select332.1)
  %.5.2 = call i64 @llvm.umax.i64(i64 %i.gr, i64 %.5.1)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv469
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !110 ; 2 uses
  %spec.select332.3 = call i64 @llvm.umin.i64(i64 %i.gu, i64 %spec.select332.2) ; 2 uses
  %.5.3 = call i64 @llvm.umax.i64(i64 %i.gu, i64 %.5.2) ; 2 uses
  %indvars.iv.next470.3 = add nuw nsw i64 %indvars.iv469, 4 ; 2 uses
  %exitcond472.not.3 = icmp eq i64 %indvars.iv.next470.3, 256
  br i1 %exitcond472.not.3, label %bb.am, label %bb.an, !llvm.loop !632

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  store i64 %spec.select333.3, ptr %6, align 16, !tbaa !34
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.7.3, ptr %i.gv, align 16, !tbaa !34
  %i.gw = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.gw, ptr nonnull @.str.82, i64 40, i64 68, ptr nonnull %6)
          to label %bb.ar unwind label %bb.aj

bb.aq:                                            ; preds = %bb.aq, %bb.ao
  %indvars.iv473 = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next474.3, %bb.aq ] ; 5 uses
  %.6404 = phi i64 [ 0, %bb.ao ], [ %.7.3, %bb.aq ]
  %.6319403 = phi i64 [ -1, %bb.ao ], [ %spec.select333.3, %bb.aq ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !110 ; 2 uses
  %spec.select333 = call i64 @llvm.umin.i64(i64 %i.gy, i64 %.6319403)
  %.7 = call i64 @llvm.umax.i64(i64 %i.gy, i64 %.6404)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !110 ; 2 uses
  %spec.select333.1 = call i64 @llvm.umin.i64(i64 %i.hb, i64 %spec.select333)
  %.7.1 = call i64 @llvm.umax.i64(i64 %i.hb, i64 %.7)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !110 ; 2 uses
  %spec.select333.2 = call i64 @llvm.umin.i64(i64 %i.he, i64 %spec.select333.1)
  %.7.2 = call i64 @llvm.umax.i64(i64 %i.he, i64 %.7.1)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv473
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !110 ; 2 uses
  %spec.select333.3 = call i64 @llvm.umin.i64(i64 %i.hh, i64 %spec.select333.2) ; 2 uses
  %.7.3 = call i64 @llvm.umax.i64(i64 %i.hh, i64 %.7.2) ; 2 uses
  %indvars.iv.next474.3 = add nuw nsw i64 %indvars.iv473, 4 ; 2 uses
  %exitcond476.not.3 = icmp eq i64 %indvars.iv.next474.3, 65536
  br i1 %exitcond476.not.3, label %bb.ap, label %bb.aq, !llvm.loop !633

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.hi = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.hi, ptr nonnull @.str.41, i64 1, i64 0, ptr nonnull %2)
          to label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit unwind label %bb.aj

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  %.not4.i.i.i = icmp eq ptr %.sroa.0231.1330, %.sroa.12.1329
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hm, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ] ; 2 uses
  %i.hj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !607 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hk = atomicrmw sub ptr %i.hj, i32 1 seq_cst, align 4
  %i.hl = icmp eq i32 %i.hk, 1
  br i1 %i.hl, label %bb.at, label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.hj) #3
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef 400) #45
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hm, %.sroa.12.1329
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !634

_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.0231.1330, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.hn = ptrtoint ptr %.sroa.18.1328 to i64
  %i.ho = ptrtoint ptr %.sroa.0231.1330 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.1330, i64 noundef %i.hp) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !43 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i142, label %_ZNSt6vectorImSaImEED2Ev.exit150, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EED2Ev.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hs, align 8, !tbaa !46
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !48
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !40
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #3, !inline_history !57
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #3, !inline_history !57
  br label %_ZNSt6vectorImSaImEED2Ev.exit150

bb.ax:                                            ; preds = %bb.av
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i143 = icmp eq i8 %i.id, 0
end_hunk_0
