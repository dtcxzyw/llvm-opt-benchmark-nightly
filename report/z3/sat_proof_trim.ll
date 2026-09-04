Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_proof_trim?download=true
inline.NumInlined: 902
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3sat10proof_trim6assumeEjb:bb.a
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.dl = sub i64 %i.cy, %i.db
  %i.dm = add i64 %i.dl, 7
  %diff.check = icmp ult i64 %i.dm, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.cz, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dq ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.da, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !18
  %wide.load190 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !18
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !18
  store <4 x i32> %wide.load190, ptr %i.ds, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_DnbRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSC_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211:          ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cz, %vector.memcheck ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0810.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader211 ] ; 2 uses
  %i.du = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !18
  store i32 %i.du, ptr %.011.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_DnbRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSC_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !276

_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_DnbRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSC_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN3sat10proof_trim11clause_infoD2Ev.exit, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i
  %i.dx = phi ptr [ %i.cz, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i ], [ null, %_ZN3sat10proof_trim11clause_infoD2Ev.exit ], [ %i.cz, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i ], [ %i.cz, %middle.block ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %1, ptr %i.dy, align 8, !tbaa !240
  %i.dz = load ptr, ptr %i.cm, align 8, !tbaa !33 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_DnbRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSC_.exit
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !18 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_DnbRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSC_.exit
  invoke void @_ZN6vectorISt5tupleIJj7svectorIN3sat7literalEjEPNS2_6clauseEbbEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !18
  br label %bb.p

bb.n:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit24
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat10proof_trim11clause_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(13) dereferenceable(13) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bk

bb.o:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm1EJ7svectorIN3sat7literalEjEPNS1_6clauseEbbEED2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bk

bb.p:                                             ; preds = %.noexc, %bb.l
  %i.ei = phi i32 [ %.pre2.i, %.noexc ], [ %i.ec, %bb.l ] ; 2 uses
  %i.ej = phi ptr [ %.pre.i, %.noexc ], [ %i.dz, %bb.l ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = zext i32 %i.ei to i64
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %i.el ; 5 uses
  store i8 %i.a, ptr %i.em, align 1, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i8 1, ptr %i.en, align 1, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.dx, ptr %i.ep, align 8, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i32 %1, ptr %i.eq, align 8, !tbaa !18
  %i.er = add i32 %i.ei, 1
  store i32 %i.er, ptr %i.ek, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.pr.pre = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %i.es = icmp eq ptr %.pr.pre, null
  br i1 %i.es, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25.thread, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25:  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit23, %bb.p
  %.pr186 = phi ptr [ %.pr.pre, %bb.p ], [ %i.bo, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit23 ], [ %i.bo, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit ]
  %i.et = getelementptr inbounds i8, ptr %.pr186, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !18
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25.thread, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.p, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25
  %i.ew = call noundef i32 @_Z19get_verbosity_levelv()
  %i.ex = icmp ugt i32 %i.ew, 2
  br i1 %i.ex, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25.thread
  %i.ey = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ey, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @_Z12verbose_lockv()
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.fa = select i1 %2, ptr @.str.16, ptr @.str.17
  %i.fb = select i1 %2, i64 7, i64 4
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.fa, i64 noundef %i.fb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.fd = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit:      ; preds = %bb.r, %bb.s
  %.0.i.i28 = phi i32 [ %i.fg, %bb.s ], [ 0, %bb.r ]
  store i32 %.0.i.i28, ptr %9, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.fd, ptr %i.fh, align 8, !tbaa !59
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.fl = select i1 %2, ptr @.str.16, ptr @.str.17
  %i.fm = select i1 %2, i64 7, i64 4
  %i.fn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull %i.fl, i64 noundef %i.fm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit32, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit32

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit32:    ; preds = %bb.t, %bb.u
  %.0.i.i31 = phi i32 [ %i.fr, %bb.u ], [ 0, %bb.t ]
  store i32 %.0.i.i31, ptr %8, align 8, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.fo, ptr %i.fs, align 8, !tbaa !59
  %i.ft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit32, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !18
  br label %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit

_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit: ; preds = %bb.v, %bb.w
  %.0.i.i34 = phi i32 [ %i.fy, %bb.w ], [ 0, %bb.v ]
  store i32 2, ptr %7, align 8, !tbaa !47
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.fz, align 4, !tbaa !48
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ga, align 8, !tbaa !49
  %i.gb = call noundef ptr @_ZN3sat6solver9mk_clauseEjPNS_7literalENS_6statusE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %.0.i.i34, ptr noundef %i.fv, ptr noundef nonnull align 8 dead_on_return %7) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4336
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr null, ptr %12, align 8, !tbaa !53
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %1, ptr %i.gd, align 8, !tbaa !228
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit35, label %bb.x

bb.x:                                             ; preds = %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !18
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = zext i1 %i.gj to i8
  br label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit35

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit35:  ; preds = %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit, %bb.x
  %i.gl = phi i8 [ 1, %_ZN3sat6solver9mk_clauseERK7svectorINS_7literalEjENS_6statusE.exit ], [ %i.gk, %bb.x ]
  store i8 %i.gl, ptr %i.ge, align 4, !tbaa !56
  %i.gm = invoke noundef nonnull align 8 dereferenceable(13) ptr @_ZN9table2mapI17default_map_entryI7svectorIN3sat7literalEjENS2_10proof_trim11clause_infoEENS5_4hashENS5_2eqEE19insert_if_not_thereERKS4_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(13) %12)
          to label %bb.y unwind label %bb.ae      ; 3 uses

bb.y:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit35
  %i.gn = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i36, label %_ZN3sat10proof_trim11clause_infoD2Ev.exit37, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.go)
          to label %_ZN3sat10proof_trim11clause_infoD2Ev.exit37 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #17
  unreachable

_ZN3sat10proof_trim11clause_infoD2Ev.exit37:      ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %.not = icmp eq ptr %i.gb, null
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZN3sat10proof_trim11clause_infoD2Ev.exit37
  %i.gr = load ptr, ptr %i.gm, align 8, !tbaa !53 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !18 ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 -8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !18
  %i.gx = icmp eq i32 %i.gu, %i.gw
  br i1 %i.gx, label %bb.ad, label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @_ZN6vectorIPN3sat6clauseELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
  %.pre.i38 = load ptr, ptr %i.gm, align 8, !tbaa !53 ; 2 uses
  %.phi.trans.insert.i39 = getelementptr inbounds i8, ptr %.pre.i38, i64 -4
  %.pre2.i40 = load i32, ptr %.phi.trans.insert.i39, align 4, !tbaa !18
  br label %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit: ; preds = %bb.ac, %bb.ad
  %i.gy = phi i32 [ %.pre2.i40, %bb.ad ], [ %i.gu, %bb.ac ] ; 2 uses
  %i.gz = phi ptr [ %.pre.i38, %bb.ad ], [ %i.gr, %bb.ac ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -4
  %i.hb = zext i32 %i.gy to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hb
  store ptr %i.gb, ptr %i.hc, align 8, !tbaa !43
  %i.hd = add i32 %i.gy, 1
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !18
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit35
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat10proof_trim11clause_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(13) dereferenceable(13) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bk

bb.af:                                            ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE9push_backERKS2_.exit, %_ZN3sat10proof_trim11clause_infoD2Ev.exit37
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i8 %i.a, ptr %13, align 8, !tbaa !236
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 1
  store i8 1, ptr %i.hg, align 1, !tbaa !238
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.gb, ptr %i.hh, align 8, !tbaa !242
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr null, ptr %i.hi, align 8, !tbaa !39
  %i.hj = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq ptr %i.hj, null
  %i.hk = ptrtoint ptr %i.gb to i64
  br i1 %.not.i.i.i.i.i.i41, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i42

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i42: ; preds = %bb.af
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -8 ; 2 uses
  %i.hm = load <2 x i32>, ptr %i.hl, align 4, !tbaa !18
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !18
  %i.ho = zext i32 %i.hn to i64
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 8
  %i.hr = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hq) ; 3 uses
  %i.hs = ptrtoaddr ptr %i.hr to i64
  store <2 x i32> %i.hm, ptr %i.hr, align 4, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 9 uses
  store ptr %i.ht, ptr %i.hi, align 8, !tbaa !39
  %i.hu = load ptr, ptr %i.b, align 8, !tbaa !39  ; 8 uses
  %i.hv = ptrtoaddr ptr %i.hu to i64
  %i.hw = icmp eq ptr %i.hu, null
  br i1 %i.hw, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i43

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i43: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i42
  %i.hx = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !18 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = shl nuw nsw i64 %i.hz, 2                ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ia
  %.not9.i.i.i.i.i.i.i.i.i.i44 = icmp eq i32 %i.hy, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i44, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader:           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i43
  %i.ic = add nsw i64 %i.ia, -4                   ; 2 uses
  %i.id = lshr exact i64 %i.ic, 2
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.ic, 60
  br i1 %min.iters.check195, label %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader
  %i.if = sub i64 %i.hs, %i.hv
  %i.ig = add i64 %i.if, 7
  %diff.check193 = icmp ult i64 %i.ig, 31
  br i1 %diff.check193, label %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck192
  %n.vec197 = and i64 %i.ie, 9223372036854775800  ; 3 uses
  %i.ih = shl i64 %n.vec197, 2                    ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ht, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.hu, i64 %i.ih
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next204, %vector.body198 ] ; 2 uses
  %i.ik = shl i64 %index199, 2                    ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.ht, i64 %i.ik ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.hu, i64 %i.ik ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep201, i64 16
  %wide.load202 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !18
  %wide.load203 = load <4 x i32>, ptr %i.il, align 4, !tbaa !18
  %i.im = getelementptr i8, ptr %next.gep200, i64 16
  store <4 x i32> %wide.load202, ptr %next.gep200, align 4, !tbaa !18
  store <4 x i32> %wide.load203, ptr %i.im, align 4, !tbaa !18
  %index.next204 = add nuw i64 %index199, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.in, label %middle.block205, label %vector.body198, !llvm.loop !277

middle.block205:                                  ; preds = %vector.body198
  %cmp.n206 = icmp eq i64 %i.ie, %n.vec197
  br i1 %cmp.n206, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210

.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210:        ; preds = %vector.memcheck192, %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader, %middle.block205
  %.011.i.i.i.i.i.i.i.i.i.i46.ph = phi ptr [ %i.ht, %vector.memcheck192 ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader ], [ %i.ii, %middle.block205 ]
  %.0810.i.i.i.i.i.i.i.i.i.i47.ph = phi ptr [ %i.hu, %vector.memcheck192 ], [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader ], [ %i.ij, %middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i.i.i.i45:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210, %.lr.ph.i.i.i.i.i.i.i.i.i.i45
  %.011.i.i.i.i.i.i.i.i.i.i46 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i45 ], [ %.011.i.i.i.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i.i47 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i.i.i.i.i45 ], [ %.0810.i.i.i.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i45.preheader210 ] ; 2 uses
  %i.io = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i.i47, align 4, !tbaa !18
  store i32 %i.io, ptr %.011.i.i.i.i.i.i.i.i.i.i46, align 4, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i47, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i46, i64 4
  %.not.i.i.i.i.i.i.i.i.i.i48 = icmp eq ptr %i.ip, %i.ib
  br i1 %.not.i.i.i.i.i.i.i.i.i.i48, label %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i45, !llvm.loop !278

_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i45, %middle.block205, %bb.af, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i42, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i43
  %i.ir = phi ptr [ %i.ht, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i.i.i.i.i.i.i43 ], [ null, %bb.af ], [ %i.ht, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i.i.i.i.i.i42 ], [ %i.ht, %middle.block205 ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i.i.i.i45 ]
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %1, ptr %i.is, align 8, !tbaa !240
  %i.it = load ptr, ptr %i.hf, align 8, !tbaa !33 ; 4 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.it, i64 -8
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !18
  %i.iz = icmp eq i32 %i.iw, %i.iy
  br i1 %i.iz, label %bb.ah, label %_ZNSt11_Tuple_implILm1EJ7svectorIN3sat7literalEjEPNS1_6clauseEbbEED2Ev.exit55

bb.ah:                                            ; preds = %bb.ag, %_ZNSt5tupleIJj7svectorIN3sat7literalEjEPNS1_6clauseEbbEEC2IJRjRS3_RS5_bRbELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSD_.exit
  invoke void @_ZN6vectorISt5tupleIJj7svectorIN3sat7literalEjEPNS2_6clauseEbbEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
          to label %.noexc52 unwind label %bb.an

.noexc52:                                         ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_ZN3sat10proof_trim6assumeEjb:bb.a
  store ptr %i.ir, ptr %i.jh, align 8, !tbaa !39
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %1, ptr %i.ji, align 8, !tbaa !18
  %i.jj = add i32 %i.ja, 1
  store i32 %i.jj, ptr %i.jc, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.val = load ptr, ptr %i.b, align 8, !tbaa !39  ; 7 uses
  %i.jk = icmp eq ptr %.val, null
  br i1 %i.jk, label %.loopexit, label %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i:    ; preds = %_ZNSt11_Tuple_implILm1EJ7svectorIN3sat7literalEjEPNS1_6clauseEbbEED2Ev.exit55
  %i.jl = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !18 ; 7 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jn, 2
  %i.jp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.jo
  %.not3.i = icmp eq i32 %i.jm, 0
  br i1 %.not3.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %.val.val.i = load ptr, ptr %i.jq, align 8, !tbaa !205 ; 4 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %i.jr = getelementptr inbounds nuw i8, ptr %.0134.i, i64 4 ; 2 uses
  %.not.i56 = icmp eq ptr %i.jr, %i.jp
  br i1 %.not.i56, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i
  %.0134.i = phi ptr [ %.val, %.lr.ph.i ], [ %i.jr, %bb.ai ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.0134.i, align 4, !tbaa !18
  %i.js = zext i32 %.sroa.0.0.copyload.i to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !207
  %i.jv = icmp eq i32 %i.ju, -1
  br i1 %i.jv, label %bb.ai, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit65

.loopexit:                                        ; preds = %bb.ai, %_ZNK6vectorIN3sat7literalELb0EjE3endEv.exit.i, %_ZNSt11_Tuple_implILm1EJ7svectorIN3sat7literalEjEPNS1_6clauseEbbEED2Ev.exit55
  %i.jw = call noundef i32 @_Z19get_verbosity_levelv()
  %i.jx = icmp ugt i32 %i.jw, 2
  br i1 %i.jx, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.loopexit
  %i.jy = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.jy, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_Z12verbose_lockv()
  %i.jz = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.ka = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull @.str.18, i64 noundef 13) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit59, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit59

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit59:    ; preds = %bb.al, %bb.am
  %.0.i.i58 = phi i32 [ %i.ke, %bb.am ], [ 0, %bb.al ]
  store i32 %.0.i.i58, ptr %6, align 8, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.kb, ptr %i.kf, align 8, !tbaa !59
  %i.kg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.kh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.aq

bb.an:                                            ; preds = %bb.ah
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm1EJ7svectorIN3sat7literalEjEPNS1_6clauseEbbEED2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bk

bb.ao:                                            ; preds = %bb.ak
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.kk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.18, i64 noundef 13) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit62, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit62

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit62:    ; preds = %bb.ao, %bb.ap
  %.0.i.i61 = phi i32 [ %i.ko, %bb.ap ], [ 0, %bb.ao ]
  store i32 %.0.i.i61, ptr %5, align 8, !tbaa !58
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.kl, ptr %i.kp, align 8, !tbaa !59
  %i.kq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.kr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit59, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit62, %.loopexit
  %i.ks = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i63, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 -4
  store i32 0, ptr %i.kt, align 4, !tbaa !18
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i:   ; preds = %bb.ar, %bb.aq
  %i.ku = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i: ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i
  %i.kw = phi ptr [ %i.lj, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ], [ %i.ks, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i ] ; 4 uses
  %i.kx = phi ptr [ %i.lk, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ], [ %i.ku, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ], [ 0, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i ] ; 3 uses
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 -4
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !18
  %i.la = zext i32 %i.kz to i64
  %i.lb = icmp samesign ult i64 %indvars.iv.i.i, %i.la
  br i1 %i.lb, label %bb.as, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split

bb.as:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv.i.i
  %i.ld = icmp eq ptr %i.kw, null
  br i1 %i.ld, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.le = getelementptr inbounds i8, ptr %i.kw, i64 -4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !18 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %i.kw, i64 -8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !18
  %i.li = icmp eq i32 %i.lf, %i.lh
  br i1 %i.li, label %bb.au, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  %.pre.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !18
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.au, %bb.at
  %i.lj = phi ptr [ %.pre.i.i.i, %bb.au ], [ %i.kw, %bb.at ] ; 3 uses
  %i.lk = phi ptr [ %.pre.i.i, %bb.au ], [ %i.kx, %bb.at ] ; 2 uses
  %i.ll = phi i32 [ %.pre2.i.i.i, %bb.au ], [ %i.lf, %bb.at ] ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %i.lj, i64 -4
  %i.ln = zext i32 %i.ll to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.ln
  %i.lp = load i32, ptr %i.lc, align 4, !tbaa !18
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !18
  %i.lq = add i32 %i.ll, 1
  store i32 %i.lq, ptr %i.lm, align 4, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.lr = icmp eq ptr %i.lk, null
  br i1 %i.lr, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i, !llvm.loop !279

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit65:   ; preds = %bb.aj
  %i.ls = icmp eq i32 %i.jm, 2
  br i1 %i.ls, label %bb.av, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68

bb.av:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit65
  %.sroa.01.0.copyload.i = load i32, ptr %.val, align 4, !tbaa !18 ; 4 uses
  %i.lt = zext i32 %.sroa.01.0.copyload.i to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !207
  %i.lw = icmp eq i32 %i.lv, -1
  %i.lx = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !18 ; 4 uses
  br i1 %i.lw, label %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit.thread", label %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit"

"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit.thread": ; preds = %bb.av
  store i32 %i.ly, ptr %.val, align 4, !tbaa !18
  store i32 %.sroa.01.0.copyload.i, ptr %i.lx, align 4, !tbaa !18
  br label %bb.aw

"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit": ; preds = %bb.av
  %.phi.trans.insert2.i = zext i32 %i.ly to i64
  %.phi.trans.insert3.i = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %.phi.trans.insert2.i
  %.pre.i66 = load i32, ptr %.phi.trans.insert3.i, align 4, !tbaa !207
  %i.lz = icmp eq i32 %.pre.i66, -1
  br i1 %i.lz, label %bb.aw, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread

bb.aw:                                            ; preds = %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit.thread", %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit"
  %.sroa.0.0.copyload = phi i32 [ %.sroa.01.0.copyload.i, %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit.thread" ], [ %i.ly, %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit" ]
  %.sroa.01.0.copyload = phi i32 [ %i.ly, %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit.thread" ], [ %.sroa.01.0.copyload.i, %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit" ]
  %i.ma = call noundef zeroext i1 @_ZN3sat6solver20propagate_bin_clauseENS_7literalES1_(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload) ; 0 uses
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit65
  %i.mb = icmp ugt i32 %i.jm, 2
  br i1 %i.mb, label %.lr.ph.i70, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread

.lr.ph.i70:                                       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gb, i64 20 ; 4 uses
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i, %.lr.ph.i70
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i ] ; 3 uses
  %.0141519.i = phi i32 [ %i.jm, %.lr.ph.i70 ], [ %.115.ph.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i ] ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv.i
  %.sroa.01.0.copyload.i71 = load i32, ptr %i.md, align 4, !tbaa !18
  %i.me = zext i32 %.sroa.01.0.copyload.i71 to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !207
  %.not.i72 = icmp eq i32 %i.mg, 0
  br i1 %.not.i72, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21.i: ; preds = %bb.ax
  %i.mh = icmp ult i32 %.0141519.i, %i.jm
  %i.mi = trunc nuw i64 %indvars.iv.i to i32
  br i1 %i.mh, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21.i, %bb.ax
  %.115.ph.i = phi i32 [ %i.mi, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21.i ], [ %.0141519.i, %bb.ax ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jn
  br i1 %exitcond.not.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit23.i, label %bb.ax

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit23.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit19.thread.i
  %i.mj = icmp ult i32 %.115.ph.i, %i.jm
  br i1 %i.mj, label %bb.ay, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread

bb.ay:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit23.i
  %i.mk = zext i32 %.115.ph.i to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.mk ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ml, align 4, !tbaa !18
  %i.mm = load i32, ptr %i.mc, align 4, !tbaa !18
  store i32 %i.mm, ptr %i.ml, align 4, !tbaa !18
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.mc, align 4, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.mp = load i8, ptr %i.mo, align 8, !tbaa !217, !range !40, !noundef !41
  %i.mq = zext nneg i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [568 x i8], ptr %i.mn, i64 %i.mq
  %i.ms = call noundef i64 @_ZNK3sat16clause_allocator10get_offsetEPKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568) %i.mr, ptr noundef nonnull %i.gb)
  call void @_ZN3sat6solver16propagate_clauseERNS_6clauseEbjm(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.gb, i1 noundef zeroext true, i32 noundef 0, i64 noundef %i.ms)
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit21.i, %"_ZZN3sat10proof_trim6assumeEjbENK3$_0clEv.exit", %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit23.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68, %bb.ay, %bb.aw
  %i.mt = call noundef zeroext i1 @_ZN3sat6solver9propagateEb(ptr noundef nonnull align 8 dereferenceable(4264) %0, i1 noundef zeroext false) ; 0 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.mv = load i8, ptr %i.mu, align 8, !tbaa !204, !range !40, !noundef !41
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.az, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit

bb.az:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread
  %i.mx = call noundef i32 @_Z19get_verbosity_levelv()
  %i.my = icmp ugt i32 %i.mx, 2
  br i1 %i.my, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.mz = call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.mz, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  call void @_Z12verbose_lockv()
  %i.na = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.nb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.nc = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit75, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 -4
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit75

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit75:    ; preds = %bb.bb, %bb.bc
  %.0.i.i74 = phi i32 [ %i.nf, %bb.bc ], [ 0, %bb.bb ]
  store i32 %.0.i.i74, ptr %4, align 8, !tbaa !58
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.nc, ptr %i.ng, align 8, !tbaa !59
  %i.nh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ni = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nh, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @_Z14verbose_unlockv()
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.nj = call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.nk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.nl = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit78, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 -4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !18
  br label %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit78

_ZN3satlsERSoRK7svectorINS_7literalEjE.exit78:    ; preds = %bb.bd, %bb.be
  %.0.i.i77 = phi i32 [ %i.no, %bb.be ], [ 0, %bb.bd ]
  store i32 %.0.i.i77, ptr %3, align 8, !tbaa !58
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.nl, ptr %i.np, align 8, !tbaa !59
  %i.nq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_10mk_lits_ppE(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.nr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nq, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit75, %_ZN3satlsERSoRK7svectorINS_7literalEjE.exit78, %bb.az
  %i.ns = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i79, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 -4
  store i32 0, ptr %i.nt, align 4, !tbaa !18
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80: ; preds = %bb.bg, %bb.bf
  %i.nu = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i81

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i81: ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83
  %i.nw = phi ptr [ %i.oj, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83 ], [ %i.ns, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80 ] ; 4 uses
  %i.nx = phi ptr [ %i.ok, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83 ], [ %i.nu, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80 ] ; 3 uses
  %indvars.iv.i.i82 = phi i64 [ %indvars.iv.next.i.i84, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83 ], [ 0, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80 ] ; 3 uses
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !18
  %i.oa = zext i32 %i.nz to i64
  %i.ob = icmp samesign ult i64 %indvars.iv.i.i82, %i.oa
  br i1 %i.ob, label %bb.bh, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split

bb.bh:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i81
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.i.i82
  %i.od = icmp eq ptr %i.nw, null
  br i1 %i.od, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oe = getelementptr inbounds i8, ptr %i.nw, i64 -4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !18 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %i.nw, i64 -8
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !18
  %i.oi = icmp eq i32 %i.of, %i.oh
  br i1 %i.oi, label %bb.bj, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  %.pre.i.i.i85 = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i.i.i86 = getelementptr inbounds i8, ptr %.pre.i.i.i85, i64 -4
  %.pre2.i.i.i87 = load i32, ptr %.phi.trans.insert.i.i.i86, align 4, !tbaa !18
  %.pre.i.i88 = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83: ; preds = %bb.bj, %bb.bi
  %i.oj = phi ptr [ %.pre.i.i.i85, %bb.bj ], [ %i.nw, %bb.bi ] ; 3 uses
  %i.ok = phi ptr [ %.pre.i.i88, %bb.bj ], [ %i.nx, %bb.bi ] ; 2 uses
  %i.ol = phi i32 [ %.pre2.i.i.i87, %bb.bj ], [ %i.of, %bb.bi ] ; 2 uses
  %i.om = getelementptr inbounds i8, ptr %i.oj, i64 -4
  %i.on = zext i32 %i.ol to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.on
  %i.op = load i32, ptr %i.oc, align 4, !tbaa !18
  store i32 %i.op, ptr %i.oo, align 4, !tbaa !18
  %i.oq = add i32 %i.ol, 1
  store i32 %i.oq, ptr %i.om, align 4, !tbaa !18
  %indvars.iv.next.i.i84 = add nuw nsw i64 %indvars.iv.i.i82, 1
  %i.or = icmp eq ptr %i.ok, null
  br i1 %i.or, label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i81, !llvm.loop !279

_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i83, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i81, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i80, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 4312
  store ptr %i.gb, ptr %i.os, align 8, !tbaa !280
  br label %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit

_ZN3sat10proof_trim21unit_or_binary_occursEv.exit: ; preds = %_ZN3sat10proof_trim21unit_or_binary_occursEv.exit.sink.split, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit68.thread, %_ZNK8uint_set8containsEj.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit25
  ret void

bb.bk:                                            ; preds = %bb.ae, %bb.an, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.n ], [ %i.eh, %bb.o ], [ %i.ki, %bb.an ], [ %i.he, %bb.ae ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat10proof_trim21unit_or_binary_occursEv(ptr noundef nonnull align 8 dereferenceable(4376) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread7, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.thread7

bb.b:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.g = load i32, ptr %i.b, align 4, !tbaa !18   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 3 uses
  %i.i = lshr i32 %i.g, 5                         ; 5 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !21   ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %thread-pre-split.i.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18   ; 2 uses
  %i.n = icmp ult i32 %i.i, %i.m
  br i1 %i.n, label %_ZNK8uint_set8containsEj.exit, label %thread-pre-split.i.i.preheader

_ZNK8uint_set8containsEj.exit:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.o = zext nneg i32 %i.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = and i32 %i.g, 31
  %i.s = shl nuw i32 1, %i.r
  %i.t = and i32 %i.q, %i.s
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread7.sink.split, label %.thread7

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.b
  %.ph = phi ptr [ null, %bb.b ], [ %i.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ 0, %bb.b ], [ %i.m, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.ph20 = add nuw nsw i32 %i.i, 1                ; 3 uses
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.u = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i.preheader ] ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %.not21 = icmp ult i32 %i.i, %i.x
end_hunk_1
