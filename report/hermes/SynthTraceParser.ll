Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SynthTraceParser?download=true
inline.NumInlined: 2499
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8facebook6hermes7tracing15parseSynthTraceESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42: ; preds = %_ZNSt11_Tuple_implILm1EJN6hermes2vm13RuntimeConfig7BuilderENS1_8GCConfig7BuilderEEEC2IS3_JS5_EvEEOT_DpOT0_.exit
  store ptr %i.pl, ptr %i.pj, align 8, !tbaa !177
  %i.pr = load i64, ptr %i.cu, align 8, !tbaa !169
  store i64 %i.pr, ptr %i.pk, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %17, i64 64
  %.pre59 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42, %bb.be
  %i.ps = phi i64 [ %.pre59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i42 ], [ %i.po, %bb.be ]
  %i.pt = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.ps, ptr %i.pu, align 8, !tbaa !168
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !177
  store i64 0, ptr %i.pt, align 8, !tbaa !168
  store i8 0, ptr %i.cu, align 8, !tbaa !169
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.pw = load i32, ptr %i.cv, align 8, !tbaa !347
  store i32 %i.pw, ptr %i.pv, align 8, !tbaa !347
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.pz = getelementptr inbounds nuw i8, ptr %17, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, i8 0, i64 24, i1 false)
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !348
  store ptr %i.qa, ptr %i.py, align 8, !tbaa !348
  %i.qb = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i43 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.not.i.i.i.i.i.i43, label %_ZN6hermes2vm16GCTripwireConfigC2EOS1_.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 16, i1 false), !tbaa.struct !349
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qb, i8 0, i64 16, i1 false)
  br label %_ZN6hermes2vm16GCTripwireConfigC2EOS1_.exit.i.i.i.i

_ZN6hermes2vm16GCTripwireConfigC2EOS1_.exit.i.i.i.i: ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.qf = load i32, ptr %i.cx, align 8
  store i32 %i.qf, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.qi = getelementptr inbounds nuw i8, ptr %17, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qg, i8 0, i64 24, i1 false)
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !350
  store ptr %i.qj, ptr %i.qh, align 8, !tbaa !350
  %i.qk = getelementptr inbounds nuw i8, ptr %17, i64 152 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN6hermes2vm16GCTripwireConfigC2EOS1_.exit.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 16, i1 false), !tbaa.struct !349
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i.i.i

_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i.i.i: ; preds = %bb.bg, %_ZN6hermes2vm16GCTripwireConfigC2EOS1_.exit.i.i.i.i
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.qp = getelementptr inbounds nuw i8, ptr %17, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qn, i8 0, i64 24, i1 false)
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !351
  store ptr %i.qq, ptr %i.qo, align 8, !tbaa !351
  %i.qr = getelementptr inbounds nuw i8, ptr %17, i64 184 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.not.i7.i.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.not.i7.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTraceD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %17, i64 168
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qn, ptr noundef nonnull align 8 dereferenceable(32) %i.qt, i64 16, i1 false), !tbaa.struct !349
  store ptr %i.qs, ptr %i.qu, align 8, !tbaa !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qr, i8 0, i64 16, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTraceD2Ev.exit

_ZN8facebook6hermes7tracing10SynthTraceD2Ev.exit: ; preds = %bb.bh, %_ZNSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEEC2EOS6_.exit.i.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.qw = getelementptr inbounds nuw i8, ptr %17, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %i.qv, ptr noundef nonnull align 8 dereferenceable(45) %i.qw, i64 45, i1 false)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.qy = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !179
  store ptr null, ptr %i.dp, align 8, !tbaa !155
  store <2 x ptr> %i.qy, ptr %i.qx, align 8, !tbaa !179
  store ptr null, ptr %i.dn, align 8, !tbaa !154
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.qz, ptr noundef nonnull align 8 dereferenceable(5) %i.du, i64 5, i1 false)
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.ra, ptr noundef nonnull align 8 dereferenceable(27) %i.dw, i64 27, i1 false)
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.rc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rd = load <2 x i64>, ptr %16, align 16, !tbaa !179, !noalias !346
  store ptr null, ptr %16, align 16, !tbaa !181, !noalias !346
  store <2 x i64> %i.rd, ptr %i.rb, align 8, !tbaa !179, !alias.scope !346
  store ptr null, ptr %i.rc, align 8, !tbaa !353, !noalias !346
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.rf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.rg = load <2 x ptr>, ptr %i.rf, align 16, !tbaa !354, !noalias !346
  store <2 x ptr> %i.rg, ptr %i.re, align 8, !tbaa !354, !alias.scope !346
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ri = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.rj = load ptr, ptr %i.ri, align 16, !tbaa !184, !noalias !346
  store ptr %i.rj, ptr %i.rh, align 8, !tbaa !184, !alias.scope !346
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.rf, i8 0, i64 24, i1 false), !noalias !346
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.rl = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %i.rl, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes28BacktrackingBumpPtrAllocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !guid !362 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !363
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !364
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.f, align 8, !tbaa !197
  %i.g = tail call noalias noundef nonnull dereferenceable(262144) ptr @_Znwm(i64 noundef 262144) #19, !noalias !365 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) %i.g, i8 0, i64 262144, i1 false), !noalias !365
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.g to i64
  store i64 %i.l, ptr %i.i, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !198
  br label %_ZNSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !202    ; 7 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i, %i.s  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i1 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i1)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %i.g to i64
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !201
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ab = add i64 %i.o, -8
  %i.ac = sub i64 %i.ab, %i.p                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.n, i64 %i.ai ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.aj = getelementptr i8, ptr %next.gep5, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !201, !alias.scope !367
  %wide.load6 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !201, !alias.scope !367
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !201, !alias.scope !366
  store <2 x i64> %wide.load6, ptr %i.ak, align 8, !tbaa !201, !alias.scope !366
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !201, !alias.scope !367
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !201, !alias.scope !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !360

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader8

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !201, !alias.scope !367
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !201, !alias.scope !366
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !201, !alias.scope !367
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !361

_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.as) #18
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.y, ptr %0, align 8, !tbaa !202
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !198
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.at, ptr %i.j, align 8, !tbaa !199
  br label %_ZNSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat !guid !368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !168  ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !177    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) #16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !135
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !177  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !168  ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !177
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !169
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !168
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !168
  store ptr %i.v, ptr %i.s, align 8, !tbaa !177
  store i64 0, ptr %i.ac, align 8, !tbaa !168
  store i8 0, ptr %i.v, align 8, !tbaa !169
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !177
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) #16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !135
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !177 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !168 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !177
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !169
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !168
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !168
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !177
  store i64 0, ptr %i.as, align 8, !tbaa !168
  store i8 0, ptr %i.al, align 8, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 comdat !guid !369 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) #16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !135
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %.inv.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.i.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.m = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i, %2
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i.i.i.i
  %i.n = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %2
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i: ; preds = %bb.b, %.thread.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ 0, %.thread.i.i.i.i.i ]
  %i.p = icmp eq i32 %.1.i.i.i.i.i.i, -1          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = xor i64 %i.f, -1
  %i.s = add nsw i64 %.017.i.i, %i.r
  %.112.i.i = select i1 %i.p, ptr %i.q, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.p, i64 %i.s, i64 %i.f    ; 2 uses
  %i.t = icmp sgt i64 %.1.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKPN6hermes6parser10JSONStringElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, !llvm.loop !548

_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i, %bb.a
  %.011.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN6hermes6parser15JSONHiddenClass14NameComparatorEEclIPKPNS3_10JSONStringEKN4llvh9StringRefEEEbT_RT0_.exit.i.i ] ; 3 uses
  %.not = icmp eq ptr %.011.lcssa.i.i, %i.c
  br i1 %.not, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit
  %i.u = load ptr, ptr %.011.lcssa.i.i, align 8, !tbaa !551
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !172  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !210
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !176
  %i.x = icmp eq i64 %.sroa.22.0.copyload, %2
  br i1 %i.x, label %bb.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %2, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %1, i64 %2)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread11:     ; preds = %bb.d, %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.aa = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit.thread:       ; preds = %bb.c, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11
  %.sroa.09.0 = phi i64 [ %i.ac, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ undef, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ undef, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ undef, %bb.c ]
  %.sroa.2.0 = phi i8 [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread11 ], [ 0, %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZN8facebook6hermes7tracing10SynthTraceC1ERKN6hermes2vm13RuntimeConfigESt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteISA_EESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(269), ptr noundef, i64, i8) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17BeginExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EERbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !guid !557 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19 ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !177    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !168  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %5, align 8, !tbaa !177
  %i.k = load i64, ptr %i.e, align 8, !tbaa !169
  store i64 %i.k, ptr %i.c, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.m = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %2, align 8, !tbaa !177
  store i64 0, ptr %i.n, align 8, !tbaa !168
  store i8 0, ptr %i.e, align 8, !tbaa !169
  %i.p = load i8, ptr %4, align 1, !tbaa !148, !range !166, !noundef !167
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !135
  %i.t = icmp eq ptr %i.l, %i.c
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.l, ptr %i.r, align 8, !tbaa !177
  %i.w = load i64, ptr %i.c, align 8, !tbaa !169
  store i64 %i.w, ptr %i.s, align 8, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit

_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.m, ptr %i.x, align 8, !tbaa !168
  store ptr %i.c, ptr %5, align 8, !tbaa !177
  store i64 0, ptr %i.o, align 8, !tbaa !168
  store i8 0, ptr %i.c, align 8, !tbaa !169
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 1 dereferenceable(20) %3, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i8 %i.p, ptr %i.z, align 4, !tbaa !560
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace17BeginExecJSRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EEb.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ba = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !242, !alias.scope !562
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !562
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !561
  store <2 x i64> %wide.load20, ptr %i.bb, align 8, !tbaa !242, !alias.scope !561
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !242, !alias.scope !562
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !562
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !562
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !561
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !562
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !556

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, %bb.f
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  %.pre8 = load ptr, ptr %5, align 8, !tbaa !177  ; 2 uses
  %i.bl = icmp eq ptr %.pre8, %i.c
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !169
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.bn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17BeginExecJSRecordEEEERS8_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15EndExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !568 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, ptr noundef nonnull align 1 dereferenceable(15) @.str.87, i64 15, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 15, ptr %i.f, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  store i8 0, ptr %i.g, align 1, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15EndExecJSRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = add i64 %i.o, -8
  %i.ab = sub i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.n, i64 %i.ah ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ai = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !570
  %wide.load9 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !242, !alias.scope !570
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !569
  store <2 x i64> %wide.load9, ptr %i.aj, align 8, !tbaa !242, !alias.scope !569
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !570
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !242, !alias.scope !570
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !570
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !569
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !570
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !567

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !184
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ar) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15EndExecJSRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15EndExecJSRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

declare { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12MarkerRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKcEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !576 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.e = load ptr, ptr %2, align 8, !tbaa !210    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !135
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !176
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !177
  %i.k = load i64, ptr %i.b, align 8, !tbaa !176
  store i64 %i.k, ptr %i.f, align 8, !tbaa !169
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.e, align 1, !tbaa !169
  store i8 %i.m, ptr %i.l, align 1, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.n = load i64, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !168
  %i.p = load ptr, ptr %3, align 8, !tbaa !177
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12MarkerRecordE, i64 16), ptr %i.d, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !135
  %i.u = load ptr, ptr %3, align 8, !tbaa !177    ; 2 uses
  %i.v = load i64, ptr %i.o, align 8, !tbaa !168  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.v, ptr %i.a, align 8, !tbaa !176
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !177
  %i.y = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.y, ptr %i.t, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.z = phi ptr [ %i.x, %bb.g ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !169
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !168
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !177
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !242
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace12MarkerRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !243 ; 7 uses
  %i.al = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #19 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store ptr %i.d, ptr %i.aw, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ak, %i.ag
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = add i64 %i.al, -8
  %i.ay = sub i64 %i.ax, %i.am                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.av, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ak, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.be ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.ak, i64 %i.be ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.bf = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !578
  %wide.load10 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !242, !alias.scope !578
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !577
  store <2 x i64> %wide.load10, ptr %i.bg, align 8, !tbaa !242, !alias.scope !577
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !578
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !242, !alias.scope !578
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !578
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !577
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !578
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !575

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.av, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bc, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !184
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bo) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.av, ptr %i.c, align 8, !tbaa !243
  store ptr %i.bl, ptr %i.af, align 8, !tbaa !240
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12MarkerRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.bq = load ptr, ptr %3, align 8, !tbaa !177   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.f
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !169
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12MarkerRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !584 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !247
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !586
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !586
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !585
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !585
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !586
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !586
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !586
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !585
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !586
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !583

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreateObjectWithPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !592 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreateObjectWithPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !596
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !596
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !595
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !595
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !596
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !596
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !596
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !595
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !596
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !591

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreateObjectWithPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreateObjectWithPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20QueueMicrotaskRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !602 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load i64, ptr %2, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20QueueMicrotaskRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !604
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #19 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.k, i64 %i.ae ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.af = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !606
  %wide.load7 = load <2 x i64>, ptr %i.af, align 8, !tbaa !242, !alias.scope !606
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !605
  store <2 x i64> %wide.load7, ptr %i.ag, align 8, !tbaa !242, !alias.scope !605
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !606
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !242, !alias.scope !606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !606
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !605
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !606
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !601

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ao) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !243
  store ptr %i.al, ptr %i.f, align 8, !tbaa !240
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20QueueMicrotaskRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20QueueMicrotaskRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_21DrainMicrotasksRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEERiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !guid !612 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load i32, ptr %2, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace21DrainMicrotasksRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.c, ptr %i.e, align 8, !tbaa !614
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.g, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #19 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store ptr %i.b, ptr %i.w, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.k, i64 %i.ae ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.af = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !616
  %wide.load7 = load <2 x i64>, ptr %i.af, align 8, !tbaa !242, !alias.scope !616
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !615
  store <2 x i64> %wide.load7, ptr %i.ag, align 8, !tbaa !242, !alias.scope !615
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !616
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !242, !alias.scope !616
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !616
  store i64 %i.ai, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !615
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !616
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !611

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ao) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.v, ptr %i.a, align 8, !tbaa !243
  store ptr %i.al, ptr %i.f, align 8, !tbaa !240
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_21DrainMicrotasksRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_21DrainMicrotasksRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateBigIntRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdRNS4_6MethodEmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !622 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load i32, ptr %3, align 4, !tbaa !213
  %i.f = load i64, ptr %4, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateBigIntRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !624
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.e, ptr %i.i, align 8, !tbaa !625
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.f, ptr %i.j, align 8, !tbaa !626
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.l, align 8, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #19 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = add i64 %i.q, -8
  %i.ad = sub i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.aj ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.p, i64 %i.aj ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ak = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !628
  %wide.load9 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !242, !alias.scope !628
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !627
  store <2 x i64> %wide.load9, ptr %i.al, align 8, !tbaa !242, !alias.scope !627
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !628
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !242, !alias.scope !628
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !628
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !627
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !628
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !621

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !184
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.at) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !243
  store ptr %i.aq, ptr %i.k, align 8, !tbaa !240
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.au, ptr %i.m, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateBigIntRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateBigIntRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20BigIntToStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddiEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 !guid !634 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %i.g = load i32, ptr %4, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20BigIntToStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !636
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.j, align 8, !tbaa !637
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.g, ptr %i.k, align 8, !tbaa !638
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !240  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.m, align 8, !tbaa !242
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = add i64 %i.r, -8
  %i.ae = sub i64 %i.ad, %i.s                     ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.q, i64 %i.ak ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.al = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !640
  %wide.load9 = load <2 x i64>, ptr %i.al, align 8, !tbaa !242, !alias.scope !640
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !639
  store <2 x i64> %wide.load9, ptr %i.am, align 8, !tbaa !242, !alias.scope !639
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !640
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !242, !alias.scope !640
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.ao = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !640
  store i64 %i.ao, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !639
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !640
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !633

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.au) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !240
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.av, ptr %i.n, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20BigIntToStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20BigIntToStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKcmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !646 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.d = load double, ptr %2, align 8, !tbaa !211
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !210    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !176    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.c, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !176
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !177
  %i.p = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.p, ptr %i.k, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !169
  store i8 %i.r, ptr %i.q, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !168
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !218
  store i16 0, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.z, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.ba = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !648
  %wide.load9 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !648
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !647
  store <2 x i64> %wide.load9, ptr %i.bb, align 8, !tbaa !242, !alias.scope !647
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !648
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !648
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !648
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !647
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !648
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !645

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_120jsonStringToU8StringB5cxx11ERKN6hermes6parser10JSONStringE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(none) %.16.val) unnamed_addr #0 !guid !650 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::back_insert_iterator", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %.16.val, align 8, !tbaa !210 ; 3 uses
  %.sroa.5.0..16.val.sroa_idx = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..16.val.sroa_idx, align 8, !tbaa !176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !168
  store i8 0, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %1, align 8
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !210
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i
  %i.g = phi ptr [ %i.ak, %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i ], [ %.sroa.0.0.copyload, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !169
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !253

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.j, ptr %i.c, align 8, !tbaa !210
  %i.k = load i8, ptr %i.g, align 1, !tbaa !169
  %i.l = sext i8 %i.k to i32
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i

_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.n = icmp ult i32 %.0.i.i, 65536
  br i1 %i.n, label %bb.d, label %bb.f, !prof !253

bb.d:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i
  %i.o = trunc i32 %.0.i.i to i8
  %i.p = load ptr, ptr %1, align 8, !tbaa !255    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !168  ; 4 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !177  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.d
  %i.w = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.u, align 8, !tbaa !169
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %i.z = icmp ugt i64 %i.s, %i.y
  br i1 %i.z, label %bb.e, label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.r, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !177
  br label %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i

_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.aa = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  store i8 %i.o, ptr %i.ab, align 1, !tbaa !169
  store i64 %i.s, ptr %i.q, align 8, !tbaa !168
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s
  store i8 0, ptr %i.ad, align 1, !tbaa !169
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i

bb.f:                                             ; preds = %_ZN6hermes10decodeUTF8ILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_SA_PKcSC_EUlRKN4llvh5TwineEE_EEjRSC_T0_.exit.i
  %i.ae = add i32 %.0.i.i, 196608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.af = lshr i32 %i.ae, 10
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 1, !tbaa !169
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ai = trunc i32 %.0.i.i to i8
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !169
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i

_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i: ; preds = %bb.f, %_ZNSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOc.exit.i.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.f
  br i1 %i.al, label %.lr.ph.i, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit, !llvm.loop !649

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET_S9_PKcSB_.exit: ; preds = %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRT_j.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKhmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !656 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.d = load double, ptr %2, align 8, !tbaa !211
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !210    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !176    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.c, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !176
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !177
  %i.p = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.p, ptr %i.k, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !169
  store i8 %i.r, ptr %i.q, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !168
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !218
  store i16 0, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.z, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.ba = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !658
  %wide.load9 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !658
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !657
  store <2 x i64> %wide.load9, ptr %i.bb, align 8, !tbaa !242, !alias.scope !657
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !658
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !658
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !658
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !657
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !658
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !655

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateStringRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPDsmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !664 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load ptr, ptr %3, align 8, !tbaa !222    ; 3 uses
  %i.f = load i64, ptr %4, align 8, !tbaa !176    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CreateStringRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !251
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !168
  store i8 0, ptr %i.j, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !216
  %i.n = icmp eq ptr %i.e, null
  %i.o = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %i.f, 1             ; 3 uses
  %i.p = icmp ugt i64 %i.f, 7
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.q, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #17
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = add nuw nsw i64 %.idx.i.i, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !221
  store i64 %i.f, ptr %i.m, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.c
  %.pre7.i.i.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i16, ptr %i.e, align 2, !tbaa !220
  store i16 %i.t, ptr %.pre7.i.i.i, align 2, !tbaa !220
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i.i, ptr align 2 %i.e, i64 %.idx.i.i, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.f, ptr %i.u, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 %.idx.i.i
  store i16 0, ptr %i.v, align 2, !tbaa !220
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 2, ptr %i.w, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !240  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CreateStringRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #19 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = add i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.ac, i64 %i.aw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.ax = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !666
  %wide.load10 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !242, !alias.scope !666
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !665
  store <2 x i64> %wide.load10, ptr %i.ay, align 8, !tbaa !242, !alias.scope !665
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !666
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !242, !alias.scope !666
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !666
  store i64 %i.ba, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !665
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !666
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !663

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !184
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !243
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !240
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CreateStringRecordEEEERS8_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CreateStringRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKcmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !672 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.d = load double, ptr %2, align 8, !tbaa !211
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !210    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !176    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.c, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !176
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !177
  %i.p = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.p, ptr %i.k, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !169
  store i8 %i.r, ptr %i.q, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !168
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !218
  store i16 0, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 0, ptr %i.z, align 8, !tbaa !258
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKcm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.ba = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !674
  %wide.load9 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !674
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !673
  store <2 x i64> %wide.load9, ptr %i.bb, align 8, !tbaa !242, !alias.scope !673
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !674
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !674
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !674
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !673
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !674
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !671

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKhmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !680 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.d = load double, ptr %2, align 8, !tbaa !211
  %i.e = fptoui double %i.d to i64
  %i.f = load ptr, ptr %3, align 8, !tbaa !210    ; 3 uses
  %i.g = load i64, ptr %4, align 8, !tbaa !176    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.c, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.i, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.f, null
  %i.m = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.g, ptr %i.a, align 8, !tbaa !176
  %i.n = icmp ugt i64 %i.g, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !177
  %i.p = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.p, ptr %i.k, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.f, align 1, !tbaa !169
  store i8 %i.r, ptr %i.q, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.s, ptr %i.t, align 8, !tbaa !168
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !216
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !218
  store i16 0, ptr %i.x, align 8, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.z, align 8, !tbaa !258
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKhm.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.ba = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !682
  %wide.load9 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !682
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !681
  store <2 x i64> %wide.load9, ptr %i.bb, align 8, !tbaa !242, !alias.scope !681
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !682
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !682
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !682
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !681
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !682
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !679

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPDsmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !688 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 12 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load ptr, ptr %3, align 8, !tbaa !222    ; 3 uses
  %i.f = load i64, ptr %4, align 8, !tbaa !176    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !257
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !168
  store i8 0, ptr %i.j, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !216
  %i.n = icmp eq ptr %i.e, null
  %i.o = icmp ne i64 %i.f, 0
  %or.cond.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %i.f, 1             ; 3 uses
  %i.p = icmp ugt i64 %i.f, 7
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.q, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #17
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.r = add nuw nsw i64 %.idx.i.i, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !221
  store i64 %i.f, ptr %i.m, align 8, !tbaa !169
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.c
  %.pre7.i.i.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i16, ptr %i.e, align 2, !tbaa !220
  store i16 %i.t, ptr %.pre7.i.i.i, align 2, !tbaa !220
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i.i, ptr align 2 %i.e, i64 %.idx.i.i, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit

_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.f, ptr %i.u, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %.pre7.i.i.i, i64 %.idx.i.i
  store i16 0, ptr %i.v, align 2, !tbaa !220
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 2, ptr %i.w, align 8, !tbaa !258
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !240  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

bb.i:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace22CreatePropNameIDRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmPKDsm.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #19 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ap = add i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.an, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ac, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.ac, i64 %i.aw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ax = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !690
  %wide.load10 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !242, !alias.scope !690
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !689
  store <2 x i64> %wide.load10, ptr %i.ay, align 8, !tbaa !242, !alias.scope !689
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !690
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !242, !alias.scope !690
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !690
  store i64 %i.ba, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !689
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !690
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.y
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !687

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !184
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !243
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !240
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreatePropNameIDRecordEEEERS8_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreatePropNameIDRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreatePropNameIDWithValueRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !696 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31CreatePropNameIDWithValueRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !698
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !700
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !700
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !699
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !699
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !700
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !700
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !694

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !700
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !699
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !700
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !695

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31CreatePropNameIDWithValueRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31CreatePropNameIDWithValueRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreateHostObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !706 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !247
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22CreateHostObjectRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !708
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !708
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !707
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !707
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !708
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !708
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !708
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !707
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !708
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !705

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22CreateHostObjectRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22CreateHostObjectRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_24CreateHostFunctionRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddRjEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 !guid !714 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %i.g = load i32, ptr %4, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !176
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.i, align 8, !tbaa !247
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace24CreateHostFunctionRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = trunc i64 %i.f to i32
  store i32 %i.k, ptr %i.j, align 8, !tbaa !716
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.g, ptr %i.l, align 4, !tbaa !717
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.n, align 8, !tbaa !242
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #19 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = add i64 %i.s, -8
  %i.af = sub i64 %i.ae, %i.t                     ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.r, i64 %i.al ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.am = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !719
  %wide.load9 = load <2 x i64>, ptr %i.am, align 8, !tbaa !242, !alias.scope !719
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !718
  store <2 x i64> %wide.load9, ptr %i.an, align 8, !tbaa !242, !alias.scope !718
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !719
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !242, !alias.scope !719
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !719
  store i64 %i.ap, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !718
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !719
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !713

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.av) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !243
  store ptr %i.as, ptr %i.m, align 8, !tbaa !240
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_24CreateHostFunctionRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_24CreateHostFunctionRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17GetPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !725 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17GetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !727
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !729
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !729
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !728
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !728
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !729
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !729
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !723

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !729
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !728
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !729
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !724

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17GetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17GetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17SetPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESB_EEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 !guid !735 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.f, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17SetPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !737
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = add i64 %i.o, -8
  %i.ab = sub i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.n, i64 %i.ah ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.ai = getelementptr i8, ptr %next.gep10, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !242, !alias.scope !739
  %wide.load11 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !242, !alias.scope !739
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !738
  store <2 x i64> %wide.load11, ptr %i.aj, align 8, !tbaa !242, !alias.scope !738
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !242, !alias.scope !739
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !242, !alias.scope !739
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !739
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !738
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !739
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !734

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !184
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ar) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17SetPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17SetPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17HasPropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !745 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17HasPropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !747
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !749
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !749
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !748
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !748
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !749
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !749
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !743

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !749
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !748
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !749
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !744

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17HasPropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17HasPropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20DeletePropertyRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !755 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20DeletePropertyRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !757
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !759
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !759
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !758
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !758
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !759
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !759
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !759
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !758
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !759
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !754

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20DeletePropertyRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20DeletePropertyRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22GetPropertyNamesRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !765 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22GetPropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !767
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !769
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !769
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !768
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !768
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !769
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !769
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !763

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !769
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !768
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !769
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !764

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22GetPropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22GetPropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17CreateArrayRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 !guid !775 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load i64, ptr %3, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace17CreateArrayRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !777
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !778
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = add i64 %i.o, -8
  %i.ab = sub i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.n, i64 %i.ah ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.ai = getelementptr i8, ptr %next.gep7, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !242, !alias.scope !780
  %wide.load8 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !242, !alias.scope !780
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !779
  store <2 x i64> %wide.load8, ptr %i.aj, align 8, !tbaa !242, !alias.scope !779
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !242, !alias.scope !780
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !242, !alias.scope !780
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !780
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !779
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !780
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !774

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !184
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ar) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_17CreateArrayRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_17CreateArrayRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15ArrayReadRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 !guid !786 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace15ArrayReadRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !788
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !789
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !242
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #19 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = add i64 %i.p, -8
  %i.ac = sub i64 %i.ab, %i.q                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.z, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.o, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ai ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.o, i64 %i.ai ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !242, !alias.scope !791
  %wide.load8 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !242, !alias.scope !791
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !790
  store <2 x i64> %wide.load8, ptr %i.ak, align 8, !tbaa !242, !alias.scope !790
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !242, !alias.scope !791
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !242, !alias.scope !791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !784

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.am = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !791
  store i64 %i.am, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !790
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !791
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !785

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.aq = load ptr, ptr %i.l, align 8, !tbaa !184
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.as) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !240
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.l, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_15ArrayReadRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_15ArrayReadRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_16ArrayWriteRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 !guid !797 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load double, ptr %3, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %.sroa.0.0.copyload = load i32, ptr %4, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.g, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace16ArrayWriteRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.h, align 8, !tbaa !799
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !800
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.sroa.0.0.copyload, ptr %i.j, align 8, !tbaa !245
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !169
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.l, align 8, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #19 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = add i64 %i.q, -8
  %i.ad = sub i64 %i.ac, %i.r                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.aj ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.p, i64 %i.aj ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.ak = getelementptr i8, ptr %next.gep10, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !242, !alias.scope !802
  %wide.load11 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !242, !alias.scope !802
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !801
  store <2 x i64> %wide.load11, ptr %i.al, align 8, !tbaa !242, !alias.scope !801
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !242, !alias.scope !802
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !242, !alias.scope !802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !802
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !801
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !802
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !796

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !184
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.at) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !243
  store ptr %i.aq, ptr %i.k, align 8, !tbaa !240
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.au, ptr %i.m, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_16ArrayWriteRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_16ArrayWriteRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20CallFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 !guid !808 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !225    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.c, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !206

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !265
  %.pre10 = load ptr, ptr %i.i, align 8, !tbaa !265
  br label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.q = phi ptr [ %.pre10, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %i.p, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.u, ptr %i.v, align 8, !tbaa !226
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !266
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace20CallFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #19 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = add i64 %i.ae, -8
  %i.ar = sub i64 %i.aq, %i.af                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.ax ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.ay = getelementptr i8, ptr %next.gep20, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !242, !alias.scope !810
  %wide.load21 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !242, !alias.scope !810
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !809
  store <2 x i64> %wide.load21, ptr %i.az, align 8, !tbaa !242, !alias.scope !809
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !242, !alias.scope !810
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !242, !alias.scope !810
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !810
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !809
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !810
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !807

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !243
  store ptr %i.be, ptr %i.y, align 8, !tbaa !240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20CallFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20CallFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_"(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #3 align 2 !guid !816 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !208  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not12.i = icmp eq i64 %i.d, 0
  br i1 %.not12.i, label %"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i, %.lr.ph.i
  %i.j = phi ptr [ null, %.lr.ph.i ], [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i ] ; 7 uses
  %.013.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.ba, %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.013.i, align 8, !tbaa !110 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !111
  %.not.i.i = icmp eq i32 %i.l, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.100) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !174  ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !135
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.q, ptr %i.a, align 8, !tbaa !176
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !177
  %i.t = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.t, ptr %i.f, align 8, !tbaa !169
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.g ], [ %i.f, %bb.f ] ; 2 uses
  switch i64 %i.q, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.o, align 1, !tbaa !169
  store i8 %i.v, ptr %i.u, align 1, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  store i64 %i.w, ptr %i.g, align 8, !tbaa !168
  %i.x = load ptr, ptr %2, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.z = call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2) #16 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !177   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !169
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #18
  br label %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"

"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ae = extractvalue { i32, i64 } %i.z, 0       ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !226
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.ag
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"
  store i32 %i.ae, ptr %i.j, align 8, !tbaa !245
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.af, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !264
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i

bb.k:                                             ; preds = %"_ZZZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImEENK3$_0clES6_ENKUlPKNS4_9JSONValueEE_clESC_.exit.i"
  %i.ai = load ptr, ptr %0, align 8, !tbaa !225   ; 5 uses
  %i.aj = ptrtoint ptr %i.j to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775792
  br i1 %i.am, label %bb.l, label %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.k
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #19 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  store i32 %i.ae, ptr %i.au, align 8, !tbaa !245
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.af, ptr %.sroa.58.0..sroa_idx9.i, align 8, !tbaa !169
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !266, !alias.scope !817
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !814

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #18
  br label %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i
  store ptr %i.at, ptr %0, align 8, !tbaa !225
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !264
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !226
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i: ; preds = %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.j
  %i.az = phi ptr [ %i.ax, %_ZNSt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i ], [ %i.ah, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.e
  br i1 %.not.i, label %"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit", label %bb.b, !llvm.loop !815

"_ZSt9transformIPKPKN6hermes6parser9JSONValueESt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaISD_EEEZZNSB_12_GLOBAL__N_18getTraceEPNS1_9JSONArrayESt8optionalImEENK3$_0clESJ_EUlS4_E_ET0_T_SP_SO_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS5_EEEaSEOS5_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_25ConstructFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 !guid !823 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !225    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.c, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !206

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !265
  %.pre10 = load ptr, ptr %i.i, align 8, !tbaa !265
  br label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.a
  %i.q = phi ptr [ %.pre10, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %i.p, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.u, ptr %i.v, align 8, !tbaa !226
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !266
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace25ConstructFromNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #19 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = add i64 %i.ae, -8
  %i.ar = sub i64 %i.aq, %i.af                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.ax ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.ay = getelementptr i8, ptr %next.gep20, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !242, !alias.scope !825
  %wide.load21 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !242, !alias.scope !825
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !824
  store <2 x i64> %wide.load21, ptr %i.az, align 8, !tbaa !242, !alias.scope !824
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !242, !alias.scope !825
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !242, !alias.scope !825
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !821

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !825
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !824
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !825
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !822

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !243
  store ptr %i.be, ptr %i.y, align 8, !tbaa !240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_25ConstructFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_25ConstructFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22ReturnFromNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !831 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace22ReturnFromNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ad ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.ad ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.ae = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !833
  %wide.load9 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !242, !alias.scope !833
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !832
  store <2 x i64> %wide.load9, ptr %i.af, align 8, !tbaa !242, !alias.scope !832
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !833
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !242, !alias.scope !833
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !833
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !832
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !833
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !830

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.an) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !240
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_22ReturnFromNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_22ReturnFromNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_20ReturnToNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !839 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace20ReturnToNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ad ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.ad ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.ae = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !841
  %wide.load9 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !242, !alias.scope !841
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !840
  store <2 x i64> %wide.load9, ptr %i.af, align 8, !tbaa !242, !alias.scope !840
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !841
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !242, !alias.scope !841
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !841
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !840
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !841
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !838

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.an) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !240
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_20ReturnToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_20ReturnToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CallToNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueESt6vectorISB_SaISB_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 !guid !847 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264  ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !225    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.c, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !206

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !265
  %.pre10 = load ptr, ptr %i.i, align 8, !tbaa !265
  br label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.q = phi ptr [ %.pre10, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = phi ptr [ %i.p, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.s, ptr %i.h, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.u, ptr %i.v, align 8, !tbaa !226
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !266
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !264
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace18CallToNativeRecordCI2NS2_10CallRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmNS2_10TraceValueERKSt6vectorIS9_SaIS9_EE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #19 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = add i64 %i.ae, -8
  %i.ar = sub i64 %i.aq, %i.af                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.ad, i64 %i.ax ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.ay = getelementptr i8, ptr %next.gep20, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !242, !alias.scope !849
  %wide.load21 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !242, !alias.scope !849
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !848
  store <2 x i64> %wide.load21, ptr %i.az, align 8, !tbaa !242, !alias.scope !848
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !242, !alias.scope !849
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !242, !alias.scope !849
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !845

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !849
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !848
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !849
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !846

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !243
  store ptr %i.be, ptr %i.y, align 8, !tbaa !240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18CallToNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18CallToNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23GetPropertyNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddPKcEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 !guid !855 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.e = load double, ptr %2, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %i.g = load double, ptr %3, align 8, !tbaa !211
  %i.h = fptoui double %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !210    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !135
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.l, ptr %i.b, align 8, !tbaa !176
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !177
  %i.o = load i64, ptr %i.b, align 8, !tbaa !176
  store i64 %i.o, ptr %i.j, align 8, !tbaa !169
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !169
  store i8 %i.q, ptr %i.p, align 1, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !168
  %i.t = load ptr, ptr %5, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.v, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.w, align 8, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.x, align 8, !tbaa !269
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !135
  %i.aa = load ptr, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !176
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !177
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !169
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.af = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !169
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !168
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !240 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.d, ptr %i.am, align 8, !tbaa !242
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23GetPropertyNativeRecordCI2NS2_28GetOrSetPropertyNativeRecordEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !243 ; 7 uses
  %i.ar = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #19 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  store ptr %i.d, ptr %i.bc, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.aq, %i.am
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = add i64 %i.ar, -8
  %i.be = sub i64 %i.bd, %i.as                    ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.aq, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bk ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.aq, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bl = getelementptr i8, ptr %next.gep11, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !242, !alias.scope !857
  %wide.load12 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !242, !alias.scope !857
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !856
  store <2 x i64> %wide.load12, ptr %i.bm, align 8, !tbaa !242, !alias.scope !856
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !242, !alias.scope !857
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !242, !alias.scope !857
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.preheader14:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !857
  store i64 %i.bo, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !856
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !857
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !854

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !184
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bu) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !243
  store ptr %i.br, ptr %i.al, align 8, !tbaa !240
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bv, ptr %i.an, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23GetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.bw = load ptr, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.j
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit
  %i.by = load i64, ptr %i.j, align 8, !tbaa !169
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23GetPropertyNativeRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29GetPropertyNativeReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !863 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.c, align 8, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !169
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29GetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.f, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.b, ptr %i.v, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ad ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.ad ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.ae = getelementptr i8, ptr %next.gep8, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !242, !alias.scope !865
  %wide.load9 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !242, !alias.scope !865
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !864
  store <2 x i64> %wide.load9, ptr %i.af, align 8, !tbaa !242, !alias.scope !864
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !242, !alias.scope !865
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !242, !alias.scope !865
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !865
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !864
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !865
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !862

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.an) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !240
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29GetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29GetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_23SetPropertyNativeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddPKcNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 !guid !871 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.facebook::hermes::tracing::SynthTrace::TraceValue", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 11 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.e = load double, ptr %2, align 8, !tbaa !211
  %i.f = fptoui double %i.e to i64
  %i.g = load double, ptr %3, align 8, !tbaa !211
  %i.h = fptoui double %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.i = load ptr, ptr %4, align 8, !tbaa !210    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !135
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.l, ptr %i.b, align 8, !tbaa !176
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !177
  %i.o = load i64, ptr %i.b, align 8, !tbaa !176
  store i64 %i.o, ptr %i.j, align 8, !tbaa !169
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.i, align 1, !tbaa !169
  store i8 %i.q, ptr %i.p, align 1, !tbaa !169
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.r = load i64, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !168
  %i.t = load ptr, ptr %7, align 8, !tbaa !177
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.v, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetOrSetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.w, align 8, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %i.x, align 8, !tbaa !269
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !135
  %i.aa = load ptr, ptr %7, align 8, !tbaa !177   ; 2 uses
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !176
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !177
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !176
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !169
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.af = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  switch i64 %i.ab, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !169
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit

_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !168
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordE, i64 16), ptr %i.d, align 8, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  store ptr %i.d, ptr %i.an, align 8, !tbaa !242
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace23SetPropertyNativeRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_10TraceValueE.exit
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !243 ; 7 uses
  %i.as = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #19 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store ptr %i.d, ptr %i.bd, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = add i64 %i.as, -8
  %i.bf = sub i64 %i.be, %i.at                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bh, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bc, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ar, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bl ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.ar, i64 %i.bl ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.bm = getelementptr i8, ptr %next.gep12, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !242, !alias.scope !873
  %wide.load13 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !242, !alias.scope !873
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !872
  store <2 x i64> %wide.load13, ptr %i.bn, align 8, !tbaa !242, !alias.scope !872
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !242, !alias.scope !873
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !242, !alias.scope !873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !873
  store i64 %i.bp, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !872
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !873
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !870

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bj, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !184
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bv) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !243
  store ptr %i.bs, ptr %i.am, align 8, !tbaa !240
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bw, ptr %i.ao, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_23SetPropertyNativeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  %i.bx = load ptr, ptr %7, align 8, !tbaa !177   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.j
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !169
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_23SetPropertyNativeRecordEEEERS8_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_29SetPropertyNativeReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !guid !879 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace29SetPropertyNativeReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.e, align 8, !tbaa !242
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store ptr %i.b, ptr %i.u, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = add i64 %i.j, -8
  %i.w = sub i64 %i.v, %i.k                       ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.i, i64 %i.ac ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.ad = getelementptr i8, ptr %next.gep5, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !242, !alias.scope !881
  %wide.load6 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !242, !alias.scope !881
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !880
  store <2 x i64> %wide.load6, ptr %i.ae, align 8, !tbaa !242, !alias.scope !880
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !242, !alias.scope !881
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !242, !alias.scope !881
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !877

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.preheader8:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !881
  store i64 %i.ag, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !880
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !881
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !878

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !184
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.am) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !243
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !240
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.an, ptr %i.f, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_29SetPropertyNativeReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_29SetPropertyNativeReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_28GetNativePropertyNamesRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !887 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace28GetNativePropertyNamesRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !889
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !891
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !891
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !890
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !890
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !891
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !891
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !891
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !890
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !891
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !886

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_28GetNativePropertyNamesRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_28GetNativePropertyNamesRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_34GetNativePropertyNamesReturnRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEESt6vectorINS2_10TraceValueESaISC_EEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !guid !897 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i, !prof !206

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #19
  %.pre = load ptr, ptr %2, align 8, !tbaa !265
  %.pre7 = load ptr, ptr %i.e, align 8, !tbaa !265
  br label %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i

_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %.pre7, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.o = phi ptr [ %i.l, %_ZNSt15__new_allocatorIN8facebook6hermes7tracing10SynthTrace10TraceValueEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !225
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !226
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !266
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN8facebook6hermes7tracing10SynthTrace10TraceValueESaIS4_EEC2EmRKS5_.exit.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit
  store ptr %i.b, ptr %i.v, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

bb.e:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace34GetNativePropertyNamesReturnRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEERKSt6vectorINS2_10TraceValueESaISA_EE.exit
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #19 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store ptr %i.b, ptr %i.al, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = add i64 %i.aa, -8
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.z, i64 %i.at ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.au = getelementptr i8, ptr %next.gep17, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !242, !alias.scope !899
  %wide.load18 = load <2 x i64>, ptr %i.au, align 8, !tbaa !242, !alias.scope !899
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !898
  store <2 x i64> %wide.load18, ptr %i.av, align 8, !tbaa !242, !alias.scope !898
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !242, !alias.scope !899
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !242, !alias.scope !899
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !895

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !899
  store i64 %i.ax, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !898
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !899
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.ay, %i.v
  br i1 %.not.i.i.i.i.i3, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !896

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !184
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.bd) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !240
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.be, ptr %i.w, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_34GetNativePropertyNamesReturnRecordEEEERS8_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_34GetNativePropertyNamesReturnRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31SetExternalMemoryPressureRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdRmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 !guid !905 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = load i64, ptr %3, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace31SetExternalMemoryPressureRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !907
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !908
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.j, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = add i64 %i.o, -8
  %i.ab = sub i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.n, i64 %i.ah ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ai = getelementptr i8, ptr %next.gep7, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !tbaa !242, !alias.scope !910
  %wide.load8 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !242, !alias.scope !910
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !909
  store <2 x i64> %wide.load8, ptr %i.aj, align 8, !tbaa !242, !alias.scope !909
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !tbaa !242, !alias.scope !910
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !242, !alias.scope !910
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader10

.lr.ph.i.i.i.i.i.preheader10:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !910
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !909
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !910
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !904

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !184
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ar) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.y, ptr %i.a, align 8, !tbaa !243
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.as, ptr %i.k, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_31SetExternalMemoryPressureRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_31SetExternalMemoryPressureRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_10Utf8RecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !guid !916 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !177    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !168  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !177
  %i.k = load i64, ptr %i.e, align 8, !tbaa !169
  store i64 %i.k, ptr %i.c, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.m = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !177
  store i64 0, ptr %i.n, align 8, !tbaa !168
  store i8 0, ptr %i.e, align 8, !tbaa !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.p, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace10Utf8RecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.q, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !135
  %i.t = icmp eq ptr %i.l, %i.c
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.v, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.l, ptr %i.r, align 8, !tbaa !177
  %i.w = load i64, ptr %i.c, align 8, !tbaa !169
  store i64 %i.w, ptr %i.s, align 8, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.m, ptr %i.x, align 8, !tbaa !168
  store ptr %i.c, ptr %4, align 8, !tbaa !177
  store i64 0, ptr %i.o, align 8, !tbaa !168
  store i8 0, ptr %i.c, align 8, !tbaa !169
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store ptr %i.b, ptr %i.z, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !240
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace10Utf8RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #19 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  store ptr %i.b, ptr %i.ap, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.ad, %i.z
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = add i64 %i.ae, -8
  %i.ar = sub i64 %i.aq, %i.af                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.ad, i64 %i.ax ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.ay = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !242, !alias.scope !918
  %wide.load20 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !242, !alias.scope !918
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !917
  store <2 x i64> %wide.load20, ptr %i.az, align 8, !tbaa !242, !alias.scope !917
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !242, !alias.scope !918
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !242, !alias.scope !918
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !914

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !918
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !917
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !918
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !915

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.av, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bf = load ptr, ptr %i.aa, align 8, !tbaa !184
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bh) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, %bb.f
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !243
  store ptr %i.be, ptr %i.y, align 8, !tbaa !240
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bi, ptr %i.aa, align 8, !tbaa !184
  %.pre8 = load ptr, ptr %4, align 8, !tbaa !177  ; 2 uses
  %i.bj = icmp eq ptr %.pre8, %i.c
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !169
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.bl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_10Utf8RecordEEEERS8_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_11Utf16RecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !guid !924 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.142", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !221    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !218  ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = add nuw nsw i64 %i.j, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !221
  %i.l = load i64, ptr %i.e, align 8, !tbaa !169
  store i64 %i.l, ptr %i.c, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !218
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !221
  store i64 0, ptr %i.o, align 8, !tbaa !218
  store i16 0, ptr %i.e, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.q, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace11Utf16RecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !216
  %i.u = icmp eq ptr %i.m, %i.c
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  %i.v = icmp ult i64 %i.n, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.x, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  store ptr %i.m, ptr %i.s, align 8, !tbaa !221
  %i.y = load i64, ptr %i.c, align 8, !tbaa !169
  store i64 %i.y, ptr %i.t, align 8, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %i.z, align 8, !tbaa !218
  store ptr %i.c, ptr %4, align 8, !tbaa !221
  store i64 0, ptr %i.p, align 8, !tbaa !218
  store i16 0, ptr %i.c, align 8, !tbaa !220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace11Utf16RecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.ba = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !242, !alias.scope !926
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !926
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !925
  store <2 x i64> %wide.load20, ptr %i.bb, align 8, !tbaa !242, !alias.scope !925
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !242, !alias.scope !926
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !926
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !922

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !926
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !925
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !926
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !923

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, %bb.f
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  %.pre8 = load ptr, ptr %4, align 8, !tbaa !221  ; 2 uses
  %i.bl = icmp eq ptr %.pre8, %i.c
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !169
  %i.bn = shl i64 %i.bm, 1
  %i.bo = add i64 %i.bn, 2
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_11Utf16RecordEEEERS8_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_19GetStringDataRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !guid !932 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.142", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 9 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %.sroa.0.0.copyload = load i32, ptr %2, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !221    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !218  ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  tail call void @llvm.assume(i1 %i.i)
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = add nuw nsw i64 %i.j, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !221
  %i.l = load i64, ptr %i.e, align 8, !tbaa !169
  store i64 %i.l, ptr %i.c, align 8, !tbaa !169
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !218
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.m = phi ptr [ %i.c, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %3, align 8, !tbaa !221
  store i64 0, ptr %i.o, align 8, !tbaa !218
  store i16 0, ptr %i.e, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.q, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !216
  %i.u = icmp eq ptr %i.m, %i.c
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  %i.v = icmp ult i64 %i.n, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = shl nuw nsw i64 %i.n, 1
  %i.x = add nuw nsw i64 %i.w, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.x, i1 false)
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  store ptr %i.m, ptr %i.s, align 8, !tbaa !221
  %i.y = load i64, ptr %i.c, align 8, !tbaa !169
  store i64 %i.y, ptr %i.t, align 8, !tbaa !169
  br label %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %i.z, align 8, !tbaa !218
  store ptr %i.c, ptr %4, align 8, !tbaa !221
  store i64 0, ptr %i.p, align 8, !tbaa !218
  store i16 0, ptr %i.c, align 8, !tbaa !220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread: ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !240
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.d:                                             ; preds = %_ZN8facebook6hermes7tracing10SynthTrace19GetStringDataRecordC2ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !243 ; 7 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = add i64 %i.ag, -8
  %i.at = sub i64 %i.as, %i.ah                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aq, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.af, i64 %i.az ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.ba = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !242, !alias.scope !934
  %wide.load20 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !242, !alias.scope !934
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !933
  store <2 x i64> %wide.load20, ptr %i.bb, align 8, !tbaa !242, !alias.scope !933
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !242, !alias.scope !934
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !242, !alias.scope !934
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !930

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.preheader22:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader22 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !934
  store i64 %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !933
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !934
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %i.ab
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !931

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aq, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !184
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.bj) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, %bb.f
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !243
  store ptr %i.bg, ptr %i.aa, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bk, ptr %i.ac, align 8, !tbaa !184
  %.pre8 = load ptr, ptr %4, align 8, !tbaa !221  ; 2 uses
  %i.bl = icmp eq ptr %.pre8, %i.c
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !169
  %i.bn = shl i64 %i.bm, 1
  %i.bo = add i64 %i.bn, 2
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_19GetStringDataRecordEEEERS8_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i6
  call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18SetPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 !guid !940 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 7 uses
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %.sroa.0.0.copyload = load i32, ptr %3, align 8, !tbaa !245
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18SetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !942
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.0.0.copyload, ptr %i.g, align 8, !tbaa !245
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.21.0.copyload, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !169
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.i, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store ptr %i.b, ptr %i.y, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.m, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.m, i64 %i.ag ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.ah = getelementptr i8, ptr %next.gep9, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !242, !alias.scope !944
  %wide.load10 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !242, !alias.scope !944
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !943
  store <2 x i64> %wide.load10, ptr %i.ai, align 8, !tbaa !242, !alias.scope !943
  store <2 x ptr> splat (ptr null), ptr %next.gep9, align 8, !tbaa !242, !alias.scope !944
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !242, !alias.scope !944
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !944
  store i64 %i.ak, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !943
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !944
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !939

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !243
  store ptr %i.an, ptr %i.h, align 8, !tbaa !240
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18SetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18SetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18GetPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !950 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace18GetPrototypeRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !952
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !954
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !954
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !953
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !953
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !954
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !954
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !954
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !953
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !954
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !949

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_18GetPrototypeRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_18GetPrototypeRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12GlobalRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !guid !960 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !176
  %i.c = load double, ptr %2, align 8, !tbaa !211
  %i.d = fptoui double %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8facebook6hermes7tracing10SynthTrace12GlobalRecordE, i64 16), ptr %i.b, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !962
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8, !tbaa !242
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !240
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !243  ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #19 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store ptr %i.b, ptr %i.x, align 8, !tbaa !242
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.af ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.ag = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !242, !alias.scope !964
  %wide.load7 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !242, !alias.scope !964
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !242, !alias.scope !963
  store <2 x i64> %wide.load7, ptr %i.ah, align 8, !tbaa !242, !alias.scope !963
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !242, !alias.scope !964
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !242, !alias.scope !964
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.preheader9:                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader9 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !964
  store i64 %i.aj, ptr %.012.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !963
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !242, !alias.scope !964
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !959

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !243
  store ptr %i.am, ptr %i.g, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE12emplace_backIJPNS4_12GlobalRecordEEEERS8_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8facebook6hermes7tracing10SynthTrace6RecordESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJPNS4_12GlobalRecordEEEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace23flushRecordsIfNecessaryEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !guid !965 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !guid !966 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !guid !967 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !guid !968 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 !guid !969 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15NopCrashManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat !guid !971 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %.not30.i = icmp samesign eq i64 %1, 0
  br i1 %.not30.i, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = add nsw i32 %2, 48
  %i.c = add nsw i32 %2, 87
  %i.d = sitofp i32 %2 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.3 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.p, %bb.e ]
  %.01731.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.e = load i8, ptr %.01731.i, align 1, !tbaa !169 ; 3 uses
  %i.f = or i8 %i.e, 32                           ; 3 uses
  %i.g = add i8 %i.e, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.g, 10
  %i.h = zext nneg i8 %i.e to i32
  %i.i = icmp sgt i32 %i.b, %i.h
  %or.cond24.i = select i1 %or.cond.i, i1 %i.i, i1 false
  br i1 %or.cond24.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i8 %i.f, 96
  %i.k = zext nneg i8 %i.f to i32
  %i.l = icmp sgt i32 %i.c, %i.k
  %or.cond38.i = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond38.i, label %bb.d, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i8 %i.f, -87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink42.i = phi i8 [ %i.m, %bb.d ], [ %i.g, %bb.b ]
  %i.n = fmul double %.3, %i.d
  %i.o = uitofp nneg i8 %.sink42.i to double
  %i.p = fadd double %i.n, %i.o                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01731.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.a
  br i1 %.not.i, label %bb.f, label %bb.b, !llvm.loop !970

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp oge double %i.p, f0x4340000000000000
  %.not.i56 = icmp ne i32 %2, 0
  %or.cond72.not74 = and i1 %.not.i56, %i.r
  %i.s = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %2)
  %.not3.i = icmp samesign ult i32 %i.s, 2
  %or.cond73 = select i1 %or.cond72.not74, i1 %.not3.i, i1 false
  br i1 %or.cond73, label %.preheader, label %_ZN6hermes23parseIntWithRadixDigitsILb0EN4llvh9StringRefEZNS_17parseIntWithRadixILb0ES2_EENS_8OptValueIdEET0_iEUlhE_EEbS6_iT1_.exit

.preheader:                                       ; preds = %bb.f
  %i.t = lshr i32 %2, 1
  %i.u = zext nneg i32 %i.t to i64                ; 7 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !169     ; 3 uses
  %i.w = or i8 %i.v, 32
  %i.x = add i8 %i.v, -48
  %or.cond = icmp ult i8 %i.x, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nsw i64 %i.y, -48
  %i.aa = sext i8 %i.w to i64
  %i.ab = add nsw i64 %i.aa, -87
  %.147 = select i1 %or.cond, i64 %i.z, i64 %i.ab ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ad = and i64 %.147, %i.u
  %.not216 = icmp eq i64 %i.ad, 0
  %i.ae = lshr i64 %i.u, 1                        ; 2 uses
  br i1 %.not216, label %.lr.ph, label %._crit_edge.preheader

.preheader202:                                    ; preds = %.split, %bb.r
  %i.af = phi i64 [ %i.ca, %bb.r ], [ %i.cd, %.split ] ; 2 uses
  %.139122 = phi ptr [ %.139.jt4, %bb.r ], [ %.139.jt3, %.split ] ; 3 uses
  %.150.jt4 = phi double [ %i.cb, %bb.r ], [ %i.ce, %.split ] ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.r

spec.select.si.unfold.false.jt3:                  ; preds = %.split, %bb.s
  %i.ah = phi i64 [ %i.ch, %bb.s ], [ %i.cd, %.split ] ; 2 uses
  %.139123 = phi ptr [ %.139.jt2, %bb.s ], [ %.139.jt3, %.split ] ; 4 uses
  %.248115 = phi i64 [ %.248.jt2, %bb.s ], [ %.248.jt3, %.split ]
  %.150.jt3 = phi double [ 2.000000e+00, %bb.s ], [ %i.ce, %.split ] ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %.split

bb.g:                                             ; preds = %bb.u
  %i.aj = icmp eq i64 %i.cm, 0
  br i1 %i.aj, label %bb.j, label %bb.s

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %i.ak = phi i64 [ %i.cj, %bb.t ], [ %i.ae, %.preheader ] ; 2 uses
  %.248110218 = phi i64 [ %.248.jt0, %bb.t ], [ %.147, %.preheader ]
  %.139118217 = phi ptr [ %.139.jt0, %bb.t ], [ %i.ac, %.preheader ] ; 4 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.t

end_hunk_1
