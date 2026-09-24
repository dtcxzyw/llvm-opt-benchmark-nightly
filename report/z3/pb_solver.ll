Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb_solver?download=true
inline.NumInlined: 3382
inline.NumDeleted: 792
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2pb6solver9add_pb_geEN3sat7literalERK7svectorISt4pairIjS2_EjEjb:bb.a
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !110
  %i.il = zext i32 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 3
  %i.in = add nuw nsw i64 %i.im, 88
  br label %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit128

_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit128: ; preds = %bb.an, %bb.ao
  %.0.i127 = phi i64 [ %i.in, %bb.ao ], [ 88, %bb.an ]
  %i.io = invoke noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ig, i64 noundef %.0.i127)
          to label %bb.ap unwind label %bb.ar     ; 3 uses

bb.ap:                                            ; preds = %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit128
  store ptr %0, ptr %i.io, align 8, !tbaa !297
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !298 ; 2 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !298
  invoke void @_ZN2pb3pbcC1EjN3sat7literalERK7svectorISt4pairIjS2_EjEj(ptr noundef nonnull align 8 dereferenceable(76) %i.ip, i32 noundef %i.ir, i32 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.it = zext i1 %4 to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store i8 %i.it, ptr %i.iu, align 8, !tbaa !254
  invoke void @_ZN2pb6solver14add_constraintEPNS_10constraintE(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr noundef nonnull %i.ip)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE4sizeEv.exit128
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %bb.aa, %_ZN3sat6solver10add_clauseENS_7literalENS_6statusE.exit, %bb.aq, %bb.i, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %.3 = phi ptr [ %i.gf, %bb.aa ], [ %i.hk, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ null, %bb.i ], [ null, %_ZN3sat6solver10add_clauseENS_7literalENS_6statusE.exit ], [ %i.ip, %bb.aq ]
  %i.ix = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !292 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i unwind label %bb.au

.noexc.i:                                         ; preds = %bb.at
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %.noexc.i, %bb.at
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #35
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.aw

bb.av:                                            ; preds = %.loopexit151, %.loopexit.split-lp, %bb.ar, %bb.as, %bb.y, %bb.am, %bb.ac, %bb.f
  %.pn113 = phi { ptr, i32 } [ %i.bp, %bb.f ], [ %i.iw, %bb.as ], [ %.pn111, %bb.am ], [ %i.iv, %bb.ar ], [ %i.hb, %bb.ac ], [ %.pn.pn, %bb.y ], [ %lpad.loopexit, %.loopexit151 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  resume { ptr, i32 } %.pn113

bb.aw:                                            ; preds = %bb.b, %bb.c, %_ZN8rationalD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN8rationalD2Ev.exit ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %3)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !286  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !110  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !110
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !286 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre2.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  store i32 %2, ptr %i.r, align 4, !tbaa !110
  %i.s = add i32 %i.n, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.u = zext i32 %2 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load i64, ptr %i.v, align 4
  %.sroa.0.0.extract.trunc = trunc i64 %i.w to i32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !299
  %i.z = icmp ult i32 %i.y, %.sroa.0.0.extract.trunc
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit
  store i32 %.sroa.0.0.extract.trunc, ptr %i.x, align 8, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN2pb6solver10add_assignERNS_3pbcEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !273
  %i.c = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.17, i64 noundef 8) ; 0 uses
  %i.g = icmp eq i32 %2, -2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = trunc i32 %2 to i1
  %i.j = select i1 %i.i, ptr @.str.124, ptr @.str.125
  %.mask.i = and i32 %2, 1
  %i.k = zext nneg i32 %.mask.i to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.j, i64 noundef %i.k) ; 0 uses
  %i.m = lshr i32 %2, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.n) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.c, %bb.d
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.18, i64 noundef 8) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !301
  %i.s = zext i32 %i.r to i64
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.s) ; 2 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.19, i64 noundef 7) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !249
  %i.x = zext i32 %i.w to i64
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %1, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i1 noundef zeroext true), !inline_history !113 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN3satlsERSoNS_7literalE.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !249 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !256 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !301 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !302
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 12 uses
  store i32 0, ptr %i.am, align 8, !tbaa !299
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 11 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i32 0, ptr %i.ap, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.e, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 6 uses
  %.not195 = icmp eq i32 %i.aj, 0
  br i1 %.not195, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %wide.trip.count = zext i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = load i64, ptr %i.ar, align 4
  %.sroa.3168.0.extract.shift = lshr i64 %i.as, 32
  %.sroa.3168.0.extract.trunc = trunc nuw i64 %.sroa.3168.0.extract.shift to i32 ; 2 uses
  %i.at = icmp eq i32 %2, %.sroa.3168.0.extract.trunc
  %i.au = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  br i1 %i.at, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.av = load ptr, ptr %0, align 8, !tbaa !112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 536
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.3168.0.extract.trunc), !inline_history !677
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !286 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !110 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !110
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.j, %bb.i
  %i.bh = phi i32 [ %.pre2.i.i, %bb.j ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre.i.i, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk
  store i32 %i.au, ptr %i.bl, align 4, !tbaa !110
  %i.bm = add i32 %i.bh, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !110
  %i.bn = load i64, ptr %i.ar, align 4
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.bn to i32 ; 2 uses
  %i.bo = load i32, ptr %i.am, align 8, !tbaa !299
  %i.bp = icmp ult i32 %i.bo, %.sroa.0.0.extract.trunc.i
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.am, align 8, !tbaa !299
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread, label %.lr.ph, !llvm.loop !674

_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit: ; preds = %.lr.ph
  %i.bq = icmp eq i32 %i.aj, %i.au
  br i1 %i.bq, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit
  %.0136179 = add i32 %i.au, 1                    ; 2 uses
  %i.br = load i32, ptr %i.am, align 8, !tbaa !299
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = icmp ult i32 %.0136179, %i.aj
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph181, label %._crit_edge

.lr.ph181:                                        ; preds = %.preheader
  %i.bv = zext i32 %.0136179 to i64
  %i.bw = zext i32 %i.aj to i64
  br label %bb.p

_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread: ; preds = %bb.l, %_ZN6vectorIjLb0EjE5resetEv.exit, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !273
  store i32 %i.bx, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.20, i64 noundef 5) ; 0 uses
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !273
  %i.cb = zext i32 %i.ca to i64
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i64 noundef %i.cb)
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cg = load ptr, ptr %1, align 8, !tbaa !112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i1 noundef zeroext true), !inline_history !113 ; 0 uses
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 5 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.21, i64 noundef 6) ; 0 uses
  %i.cm = icmp eq i32 %2, -2
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit.thread
  %i.co = trunc i32 %2 to i1
  %i.cp = select i1 %i.co, ptr @.str.124, ptr @.str.125
  %.mask.i141 = and i32 %2, 1
  %i.cq = zext nneg i32 %.mask.i141 to i64
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull %i.cp, i64 noundef %i.cq) ; 0 uses
  %i.cs = lshr i32 %2, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i64 noundef %i.ct) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.cx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.22, i64 noundef 10) ; 0 uses
  %i.cy = zext i32 %i.aj to i64
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i64 noundef %i.cy)
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.aw

bb.p:                                             ; preds = %.lr.ph181, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148
  %indvars.iv197 = phi i64 [ %i.bv, %.lr.ph181 ], [ %indvars.iv.next198, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv197 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 4
  %.sroa.3.0.extract.shift = lshr i64 %i.dc, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.dd = load ptr, ptr %0, align 8, !tbaa !112
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 536
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef i32 %i.df(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.3.0.extract.trunc), !inline_history !677
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %._ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148_crit_edge

._ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148_crit_edge: ; preds = %bb.p
  %.pre = load i32, ptr %i.am, align 8, !tbaa !299
  br label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !286 ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !110 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !110
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.s, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i143

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pre.i.i145 = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %.phi.trans.insert.i.i146 = getelementptr inbounds i8, ptr %.pre.i.i145, i64 -4
  %.pre2.i.i147 = load i32, ptr %.phi.trans.insert.i.i146, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i143

_ZN6vectorIjLb0EjE9push_backERKj.exit.i143:       ; preds = %bb.s, %bb.r
  %i.dp = phi i32 [ %.pre2.i.i147, %bb.s ], [ %i.dl, %bb.r ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i.i145, %bb.s ], [ %i.di, %bb.r ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ds
  %i.du = trunc nuw i64 %indvars.iv197 to i32
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !110
  %i.dv = add i32 %i.dp, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !110
  %i.dw = load i64, ptr %i.db, align 4
  %.sroa.0.0.extract.trunc.i144 = trunc i64 %i.dw to i32 ; 2 uses
  %i.dx = load i32, ptr %i.am, align 8, !tbaa !299 ; 2 uses
  %i.dy = icmp ult i32 %i.dx, %.sroa.0.0.extract.trunc.i144
  br i1 %i.dy, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148.thread, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148

_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148.thread: ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i143
  store i32 %.sroa.0.0.extract.trunc.i144, ptr %i.am, align 8, !tbaa !299
  br label %._crit_edge

_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148: ; preds = %._ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148_crit_edge, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i143
  %i.dz = phi i32 [ %.pre, %._ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148_crit_edge ], [ %i.dx, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i143 ]
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = icmp samesign ult i64 %indvars.iv.next198, %i.bw
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %bb.p, label %._crit_edge, !llvm.loop !675

._crit_edge:                                      ; preds = %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit148.thread, %.preheader
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ee = load i64, ptr %i.ed, align 4
  %.sroa.0163.0.extract.trunc = trunc i64 %i.ee to i32 ; 2 uses
  %i.ef = sub i32 %i.al, %.sroa.0163.0.extract.trunc ; 2 uses
  %i.eg = icmp ult i32 %i.aj, %i.af
  br i1 %i.eg, label %.lr.ph186, label %.critedge

.lr.ph186:                                        ; preds = %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ei = zext i32 %i.aj to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph186, %bb.aa
  %indvars.iv200 = phi i64 [ %i.ei, %.lr.ph186 ], [ %indvars.iv.next201, %bb.aa ] ; 3 uses
  %.0129184 = phi i32 [ %i.aj, %.lr.ph186 ], [ %.1130, %bb.aa ] ; 6 uses
  %.0131183 = phi i32 [ %i.ef, %.lr.ph186 ], [ %.1132, %bb.aa ] ; 4 uses
  %i.ej = load i32, ptr %i.am, align 8, !tbaa !299
  %i.ek = add i32 %i.ej, %i.ah
  %i.el = icmp ult i32 %.0131183, %i.ek
  br i1 %i.el, label %bb.u, label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.aa, %._crit_edge
  %.0131.lcssa = phi i32 [ %i.ef, %._crit_edge ], [ %.1132, %bb.aa ], [ %.0131183, %bb.t ] ; 6 uses
  %.0129.lcssa = phi i32 [ %i.aj, %._crit_edge ], [ %.1130, %bb.aa ], [ %.0129184, %bb.t ] ; 4 uses
  %i.em = icmp ult i32 %.0131.lcssa, %i.ah
  br i1 %i.em, label %bb.ab, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv200
  %i.eo = load i64, ptr %i.en, align 4            ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.eo, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 3 uses
  %i.ep = load ptr, ptr %0, align 8, !tbaa !112
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 536
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i32 %i.er(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.4.0.extract.trunc)
  %.not140 = icmp eq i32 %i.es, -1
  br i1 %.not140, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0162.0.extract.trunc = trunc i64 %i.eo to i32
  %i.et = add i32 %.0131183, %.sroa.0162.0.extract.trunc
  tail call void @_ZN2pb10constraint13watch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 %.sroa.4.0.extract.trunc)
  %i.eu = load ptr, ptr %1, align 8, !tbaa !112
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = trunc nuw i64 %indvars.iv200 to i32
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %.0129184, i32 noundef %i.ex) #34
  %i.ey = load ptr, ptr %0, align 8, !tbaa !112
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 536
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.4.0.extract.trunc), !inline_history !677
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.w, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154

bb.w:                                             ; preds = %bb.v
  %i.fd = load ptr, ptr %i.an, align 8, !tbaa !286 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !110 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fd, i64 -8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !110
  %i.fj = icmp eq i32 %i.fg, %i.fi
  br i1 %i.fj, label %bb.y, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i149

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %.pre.i.i151 = load ptr, ptr %i.an, align 8, !tbaa !286 ; 2 uses
  %.phi.trans.insert.i.i152 = getelementptr inbounds i8, ptr %.pre.i.i151, i64 -4
  %.pre2.i.i153 = load i32, ptr %.phi.trans.insert.i.i152, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i149

_ZN6vectorIjLb0EjE9push_backERKj.exit.i149:       ; preds = %bb.y, %bb.x
  %i.fk = phi i32 [ %.pre2.i.i153, %bb.y ], [ %i.fg, %bb.x ] ; 2 uses
  %i.fl = phi ptr [ %.pre.i.i151, %bb.y ], [ %i.fd, %bb.x ] ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fn = zext i32 %i.fk to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fn
  store i32 %.0129184, ptr %i.fo, align 4, !tbaa !110
  %i.fp = add i32 %i.fk, 1
  store i32 %i.fp, ptr %i.fm, align 4, !tbaa !110
  %i.fq = zext i32 %.0129184 to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 4
  %.sroa.0.0.extract.trunc.i150 = trunc i64 %i.fs to i32 ; 2 uses
  %i.ft = load i32, ptr %i.am, align 8, !tbaa !299
  %i.fu = icmp ult i32 %i.ft, %.sroa.0.0.extract.trunc.i150
  br i1 %i.fu, label %bb.z, label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154

bb.z:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i149
  store i32 %.sroa.0.0.extract.trunc.i150, ptr %i.am, align 8, !tbaa !299
  br label %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154

_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154: ; preds = %bb.v, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i149, %bb.z
  %i.fv = add i32 %.0129184, 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154, %bb.u
  %.1132 = phi i32 [ %i.et, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154 ], [ %.0131183, %bb.u ] ; 2 uses
  %.1130 = phi i32 [ %i.fv, %_ZN2pb6solver9add_indexERNS_3pbcEjN3sat7literalE.exit154 ], [ %.0129184, %bb.u ] ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next201 to i32
  %exitcond203.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond203.not, label %.critedge, label %bb.t, !llvm.loop !676

bb.ab:                                            ; preds = %.critedge
  %i.fw = add i32 %.0131.lcssa, %.sroa.0163.0.extract.trunc
  store i32 %i.fw, ptr %i.ak, align 8, !tbaa !302
  store i32 %.0129.lcssa, ptr %i.ai, align 4, !tbaa !301
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !273
  %i.fy = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ga = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.23, i64 noundef 10) ; 0 uses
  %i.gc = icmp eq i32 %2, -2
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit156

bb.ae:                                            ; preds = %bb.ac
  %i.ge = trunc i32 %2 to i1
  %i.gf = select i1 %i.ge, ptr @.str.124, ptr @.str.125
  %.mask.i155 = and i32 %2, 1
  %i.gg = zext nneg i32 %.mask.i155 to i64
  %i.gh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull %i.gf, i64 noundef %i.gg) ; 0 uses
  %i.gi = lshr i32 %2, 1
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i64 noundef %i.gj) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit156

_ZN3satlsERSoNS_7literalE.exit156:                ; preds = %bb.ad, %bb.ae
  %i.gl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.18, i64 noundef 8) ; 0 uses
  %i.gm = load i32, ptr %i.ai, align 4, !tbaa !301
  %i.gn = zext i32 %i.gm to i64
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i64 noundef %i.gn) ; 2 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.19, i64 noundef 7) ; 0 uses
  %i.gq = load i32, ptr %i.ae, align 8, !tbaa !249
  %i.gr = zext i32 %i.gq to i64
  %i.gs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.go, i64 noundef %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gu = load ptr, ptr %1, align 8, !tbaa !112
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 136
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.gw(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i1 noundef zeroext true), !inline_history !113 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZN3satlsERSoNS_7literalE.exit156, %bb.ab
  %i.gy = load ptr, ptr %0, align 8, !tbaa !112
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 512
  %i.ha = load ptr, ptr %i.gz, align 8
  tail call void %i.ha(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 %2)
  br label %bb.aw

bb.ag:                                            ; preds = %.critedge
  %i.hb = icmp eq i32 %.0129.lcssa, 1
  %.pre204 = load i32, ptr %i.a, align 4, !tbaa !273 ; 2 uses
  br i1 %i.hb, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  store i32 %.pre204, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.pre206 = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.hc = icmp eq i32 %.pre204, %.pre206
  br i1 %i.hc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread, %bb.ah
  %i.hd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull @.str.24, i64 noundef 6) ; 0 uses
  %i.hf = load i32, ptr %i.ae, align 8, !tbaa !249
  %i.hg = zext i32 %i.hf to i64
  %i.hh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, i64 noundef %i.hg) ; 2 uses
  %i.hi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull @.str.25, i64 noundef 8) ; 0 uses
  %i.hj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i64 noundef %indvars.iv) ; 2 uses
  %i.hk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef nonnull @.str.26, i64 noundef 12) ; 0 uses
  %i.hl = zext i32 %.0129.lcssa to i64
  %i.hm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, i64 noundef %i.hl)
  %i.hn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ho = add i32 %.0129.lcssa, -1                ; 3 uses
  store i32 %.0131.lcssa, ptr %i.ak, align 8, !tbaa !302
  store i32 %i.ho, ptr %i.ai, align 4, !tbaa !301
  %i.hp = load ptr, ptr %1, align 8, !tbaa !112
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.hr = load ptr, ptr %i.hq, align 8
  tail call void %i.hr(ptr noundef nonnull align 8 dereferenceable(76) %1, i32 noundef %i.ho, i32 noundef %i.au) #34
  %i.hs = load i32, ptr %i.am, align 8, !tbaa !299
  %i.ht = add i32 %i.hs, %i.ah
  %i.hu = icmp ult i32 %.0131.lcssa, %i.ht
  br i1 %i.hu, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hv = load i32, ptr %i.a, align 4, !tbaa !273
  %i.hw = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.hz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull @.str.27, i64 noundef 6) ; 0 uses
  %i.ia = zext i32 %.0131.lcssa to i64
  %i.ib = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, i64 noundef %i.ia) ; 2 uses
  %i.ic = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.id = zext i32 %i.ah to i64
  %i.ie = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i64 noundef %i.id) ; 2 uses
  %i.if = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.ig = load i32, ptr %i.am, align 8, !tbaa !299
  %i.ih = zext i32 %i.ig to i64
  %i.ii = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, i64 noundef %i.ih)
  %i.ij = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ik = load ptr, ptr %i.an, align 8, !tbaa !286 ; 4 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.loopexit, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.am
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !110 ; 2 uses
  %i.io = zext i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ip
  %.not192 = icmp eq i32 %i.in, 0
  br i1 %.not192, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %_ZN6vectorIjLb0EjE3endEv.exit, %bb.as
  %.0128193 = phi ptr [ %i.jr, %bb.as ], [ %i.ik, %_ZN6vectorIjLb0EjE3endEv.exit ] ; 2 uses
  %i.ir = load i32, ptr %.0128193, align 4, !tbaa !110 ; 2 uses
  %i.is = icmp eq i32 %i.ir, %i.ho
  %spec.select = select i1 %i.is, i32 %i.au, i32 %i.ir
  %i.it = zext i32 %spec.select to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 4            ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.iv to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.iv, 32   ; 4 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.iw = add i32 %i.ah, %.sroa.0.0.extract.trunc
  %i.ix = icmp ult i32 %.0131.lcssa, %i.iw
  br i1 %i.ix, label %bb.an, label %bb.as

bb.an:                                            ; preds = %.lr.ph194
  %i.iy = load i32, ptr %i.a, align 4, !tbaa !273
  %i.iz = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.ja = icmp eq i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.jb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.jc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.29, i64 noundef 7) ; 0 uses
  %i.jd = icmp eq i64 %.sroa.5.0.extract.shift, 4294967294
  br i1 %i.jd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.je = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit158

bb.aq:                                            ; preds = %bb.ao
  %i.jf = trunc i64 %.sroa.5.0.extract.shift to i1
  %i.jg = select i1 %i.jf, ptr @.str.124, ptr @.str.125
  %.mask.i157 = and i64 %.sroa.5.0.extract.shift, 1
  %i.jh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull %i.jg, i64 noundef %.mask.i157) ; 0 uses
  %i.ji = lshr i64 %i.iv, 33
  %i.jj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i64 noundef %i.ji) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit158

_ZN3satlsERSoNS_7literalE.exit158:                ; preds = %bb.ap, %bb.aq
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.jl = and i64 %i.iv, 4294967295
  %i.jm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, i64 noundef %i.jl)
  %i.jn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN3satlsERSoNS_7literalE.exit158, %bb.an
  %i.jo = load ptr, ptr %0, align 8, !tbaa !112
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 520
  %i.jq = load ptr, ptr %i.jp, align 8
  tail call void %i.jq(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 %.sroa.5.0.extract.trunc)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph194
  %i.jr = getelementptr inbounds nuw i8, ptr %.0128193, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.jr, %i.iq
  br i1 %.not, label %.loopexit, label %.lr.ph194

.loopexit:                                        ; preds = %bb.as, %bb.am, %_ZN6vectorIjLb0EjE3endEv.exit, %bb.aj
  %i.js = load i32, ptr %i.a, align 4, !tbaa !273
  %i.jt = load i32, ptr @_ZN2pbL7_bad_idE, align 4, !tbaa !110
  %i.ju = icmp eq i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %.loopexit
  %i.jv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  %i.jw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.30, i64 noundef 8) ; 0 uses
  %i.jx = icmp eq i32 %2, -2
  br i1 %i.jx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit160

bb.av:                                            ; preds = %bb.at
  %i.jz = trunc i32 %2 to i1
  %i.ka = select i1 %i.jz, ptr @.str.124, ptr @.str.125
  %.mask.i159 = and i32 %2, 1
  %i.kb = zext nneg i32 %.mask.i159 to i64
  %i.kc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull %i.ka, i64 noundef %i.kb) ; 0 uses
  %i.kd = lshr i32 %2, 1
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, i64 noundef %i.ke) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit160

_ZN3satlsERSoNS_7literalE.exit160:                ; preds = %bb.au, %bb.av
  %i.kg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, ptr noundef nonnull @.str.18, i64 noundef 8) ; 0 uses
  %i.kh = load i32, ptr %i.ai, align 4, !tbaa !301
  %i.ki = zext i32 %i.kh to i64
  %i.kj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jv, i64 noundef %i.ki) ; 2 uses
  %i.kk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.19, i64 noundef 7) ; 0 uses
  %i.kl = load i32, ptr %i.ae, align 8, !tbaa !249
  %i.km = zext i32 %i.kl to i64
  %i.kn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, i64 noundef %i.km) ; 2 uses
  %i.ko = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull @.str.31, i64 noundef 8) ; 0 uses
  %i.kp = load i32, ptr %i.ak, align 8, !tbaa !302
  %i.kq = zext i32 %i.kp to i64
  %i.kr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, i64 noundef %i.kq) ; 2 uses
  %i.ks = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.kt = load ptr, ptr %0, align 8, !tbaa !112
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 568
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = tail call noundef zeroext i1 %i.kv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  %i.kx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, i1 noundef zeroext %i.kw)
  %i.ky = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.af, %_ZN3satlsERSoNS_7literalE.exit160, %.loopexit, %bb.o
  %.1 = phi i32 [ 0, %bb.o ], [ -1, %bb.af ], [ 0, %_ZN3satlsERSoNS_7literalE.exit160 ], [ 0, %.loopexit ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp eq i32 %1, -2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.123, i64 noundef 4) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i32 %1 to i1
  %i.d = select i1 %i.c, ptr @.str.124, ptr @.str.125
  %.mask = and i32 %1, 1
  %i.e = zext nneg i32 %.mask to i64
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef %i.e) ; 0 uses
  %i.g = lshr i32 %1, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.h) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %0
}

declare void @_ZN2pb10constraint13watch_literalERNS_16solver_interfaceEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden i64 @_ZN2pb6solver9normalizeEPSt4pairIjN3sat7literalEES5_j(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK3sat6solver8num_varsEv.exit.thread, label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %i.i = shl i32 %i.h, 1                          ; 7 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !286  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK3sat6solver8num_varsEv.exit.thread:           ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !286  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread:  ; preds = %_ZNK3sat6solver8num_varsEv.exit.thread
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  br label %bb.b

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %.not.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !110  ; 2 uses
  %.not16.i = icmp ugt i32 %i.i, %i.p
  br i1 %.not16.i, label %thread-pre-split.i.preheader, label %bb.b

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.ph = phi i32 [ %i.p, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %i.q = phi ptr [ %i.n, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.o, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ]
  %.0.i.i107112 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ]
  %i.r = phi ptr [ %i.l, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ]
  store i32 %.0.i.i107112, ptr %i.q, align 4, !tbaa !110
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.s = phi ptr [ %.pr.pre.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110
  %i.w = icmp ugt i32 %i.i, %i.v
  br i1 %i.w, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %bb.c

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i = load ptr, ptr %i.a, align 8, !tbaa !286
  br label %thread-pre-split.i, !llvm.loop !1
end_hunk_0
