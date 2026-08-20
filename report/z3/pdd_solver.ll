inline.NumInlined: 663
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2dd3pdd8is_unaryEv:bb.a
  %i.w = or disjoint i32 %i.u, %i.v
  store i32 %i.w, ptr %i.q, align 4, !noalias !131
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2dd3pdd6is_valEv.exit.thread42
  %i.x = icmp eq i32 %i.o, 0
  br i1 %i.x, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !30, !noalias !134 ; 2 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !32, !noalias !134
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !33, !noalias !134 ; 3 uses
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !93, !noalias !134
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !134 ; 3 uses
  %i.ai = and i32 %i.ah, 1023
  %.not.i.i.i22 = icmp eq i32 %i.ai, 1023
  br i1 %.not.i.i.i22, label %_ZNK2dd3pdd2hiEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.ah, 1
  %i.ak = and i32 %i.aj, 1023
  %i.al = and i32 %i.ah, -1024
  %i.am = or disjoint i32 %i.ak, %i.al
  store i32 %i.am, ptr %i.ag, align 4, !noalias !134
  %.pre59 = load ptr, ptr %i.y, align 8, !tbaa !33
  br label %_ZNK2dd3pdd2hiEv.exit

_ZNK2dd3pdd2hiEv.exit:                            ; preds = %bb.f, %bb.e
  %i.an = phi ptr [ %.pre59, %bb.f ], [ %i.aa, %bb.e ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.af ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !93
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK2dd3pdd2hiEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !95
  %.not.i.i.i23 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i23, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !96
  %i.aw = icmp eq i32 %i.av, 0
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2dd3pdd2hiEv.exit, %bb.g, %bb.h
  %.ph = phi i1 [ %i.aw, %bb.h ], [ true, %bb.g ], [ false, %_ZNK2dd3pdd2hiEv.exit ] ; 2 uses
  %i.ax = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.ay = and i32 %i.ax, 1023
  %.not.i.i = icmp eq i32 %i.ay, 1023
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = add i32 %i.ax, 1023
  %i.ba = and i32 %i.az, 1023
  %i.bb = and i32 %i.ax, -1024
  %i.bc = or disjoint i32 %i.ba, %i.bb
  store i32 %i.bc, ptr %i.ao, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j
  %.ph54 = phi i1 [ %.ph, %bb.j ], [ %.ph, %bb.i ], [ false, %bb.d ] ; 2 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.p ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = and i32 %i.bf, 1023
  %.not.i.i25 = icmp eq i32 %i.bg, 1023
  br i1 %.not.i.i25, label %.critedge20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add i32 %i.bf, 1023
  %i.bi = and i32 %i.bh, 1023
  %i.bj = and i32 %i.bf, -1024
  %i.bk = or disjoint i32 %i.bi, %i.bj
  store i32 %i.bk, ptr %i.be, align 4
  br label %.critedge20

.critedge20:                                      ; preds = %bb.b, %bb.l, %bb.k, %_ZNK2dd3pdd6is_valEv.exit
  %i.bl = phi i1 [ false, %_ZNK2dd3pdd6is_valEv.exit ], [ %.ph54, %bb.l ], [ %.ph54, %bb.k ], [ false, %bb.b ]
  ret i1 %i.bl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZltRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 1, ptr %i.e, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !137
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141
  store i32 %1, ptr %2, align 8, !tbaa !140
  store i8 %i.c, ptr %i.a, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !140
  %i.k = load i8, ptr %i.f, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.f, align 4
  %i.m = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 1
  %i.r = icmp eq i8 %i.q, 0
  %i.s = load i32, ptr %i.n, align 8
  %i.t = icmp eq i32 %i.s, 1
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  br i1 %i.u, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = load i8, ptr %i.a, align 4
  %i.aa = and i8 %i.z, 1
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %0, align 8, !tbaa !140
  %i.ad = load i32, ptr %2, align 8, !tbaa !140
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br label %_ZltRK8rationalS1_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.af = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.ag = icmp slt i32 %i.af, 0
  br label %_ZltRK8rationalS1_.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZltRK8rationalS1_.exit unwind label %bb.h

_ZltRK8rationalS1_.exit:                          ; preds = %.noexc, %bb.d, %bb.f
  %.0.i.i = phi i1 [ %i.ag, %.noexc ], [ %i.ae, %bb.d ], [ %i.ah, %bb.f ]
  %i.ai = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !141 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_ZltRK8rationalS1_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc.i, %_ZltRK8rationalS1_.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #23
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.0.i.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd6solver11well_formedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38..critedge39.loopexit_crit_edge: ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38
  br label %.critedge39.loopexit, !llvm.loop !143

.critedge39.loopexit:                             ; preds = %bb.e, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38..critedge39.loopexit_crit_edge
  %i.d = phi ptr [ %i.k, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38..critedge39.loopexit_crit_edge ], [ %i.ax, %bb.e ] ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.e, label %.critedge, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit: ; preds = %bb.a, %.critedge39.loopexit
  %i.f = phi ptr [ %i.d, %.critedge39.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.critedge39.loopexit ], [ 0, %bb.a ] ; 6 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %.critedge39.loopexit ], [ 1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv47, %i.i
  br i1 %i.j, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit, %.critedge39.loopexit, %bb.a
  ret void

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph: ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit
  %1 = zext i32 %indvars.iv to i64
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38: ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph, %bb.e
  %i.k = phi ptr [ %i.f, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph ], [ %i.ax, %bb.e ] ; 3 uses
  %i.l = phi ptr [ %i.f, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph ], [ %i.ay, %bb.e ] ; 5 uses
  %indvars.iv44 = phi i64 [ %1, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38.lr.ph ], [ %indvars.iv.next45, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv44, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38..critedge39.loopexit_crit_edge, !llvm.loop !143

bb.b:                                             ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv44
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv47
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %.not34 = icmp eq ptr %i.t, %i.r
  br i1 %.not34, label %_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit, label %bb.e

_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit: ; preds = %bb.c
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %indvars.iv47) ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %indvars.iv44) ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv47
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.ab)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !23, !nonnull !67, !noundef !67 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !19 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai
  %.not3540 = icmp eq i32 %i.ag, 0
  br i1 %.not3540, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit
  %i.ak = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ae, %_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv47
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv44
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %.not36 = icmp eq ptr %i.am, %i.ao
  br i1 %.not36, label %bb.d, label %bb.e

.lr.ph:                                           ; preds = %_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit, %.lr.ph
  %.041 = phi ptr [ %i.aw, %.lr.ph ], [ %i.ae, %_ZN6vectorIPN2dd6solver8equationELb0EjE3endEv.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.041, align 8, !tbaa !40
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !101
  %i.at = zext i32 %i.as to i64
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.at)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not35 = icmp eq ptr %i.aw, %i.aj
  br i1 %.not35, label %._crit_edge.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.7, i32 noundef 174, ptr noundef nonnull @.str.8)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre50 = load ptr, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.b, %bb.c
  %i.ax = phi ptr [ %i.ak, %._crit_edge ], [ %.pre50, %bb.d ], [ %i.k, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.ay = phi ptr [ %i.ak, %._crit_edge ], [ %.pre50, %bb.d ], [ %i.l, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.critedge39.loopexit, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit38, !llvm.loop !144
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd6solver14simplify_usingER10ptr_vectorINS0_8equationEERSt8functionIFbRS2_RbEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2dd6solver13scoped_updateD2Ev.exit37, label %_ZN2dd6solver13scoped_updateC2ER10ptr_vectorINS0_8equationEE.exit

_ZN2dd6solver13scoped_updateC2ER10ptr_vectorINS0_8equationEE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %.not60 = icmp eq i32 %i.e, 0
  br i1 %.not60, label %._crit_edge.thread84, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2dd6solver13scoped_updateC2ER10ptr_vectorINS0_8equationEE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = icmp eq ptr %i.f, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2dd6solver6retireEPNS0_8equationE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2dd6solver6retireEPNS0_8equationE.exit ] ; 8 uses
  %.sroa.16.058 = phi i32 [ 0, %.lr.ph ], [ %.sroa.16.2, %_ZN2dd6solver6retireEPNS0_8equationE.exit ] ; 11 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 0, ptr %i.a, align 1, !tbaa !127
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  br label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i19 = phi i32 [ %i.aa, %bb.c ], [ 0, %bb.b ]
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit3.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19
  br label %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit3.i

_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit3.i: ; preds = %bb.d, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i
  %.0.i2.i = phi i32 [ %i.ae, %bb.d ], [ 0, %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit.i ]
  %i.af = add i32 %.0.i2.i, %.0.i.i19
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !55
  %.not.i = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %_ZNK6vectorIPN2dd6solver8equationELb0EjE4sizeEv.exit3.i
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !64
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !65
  %.not1.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not1.i, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !66, !nonnull !67, !align !68 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !69, !range !80, !noundef !67
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN2dd6solver8canceledEv.exit.thread4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load atomic i32, ptr %i.aj seq_cst, align 8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN2dd6solver8canceledEv.exit.i, label %.critedge.thread

_ZN2dd6solver8canceledEv.exit.i:                  ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82
  %.not.i.i.i.i = icmp ugt i64 %i.aq, %i.as
  br i1 %.not.i.i.i.i, label %.critedge.thread, label %_ZN2dd6solver8canceledEv.exit.thread4.i

_ZN2dd6solver8canceledEv.exit.thread4.i:          ; preds = %_ZN2dd6solver8canceledEv.exit.i, %bb.f
  %i.at = load i32, ptr %i.l, align 8, !tbaa !83
  %i.au = load i32, ptr %i.m, align 4, !tbaa !84
  %i.av = icmp ugt i32 %i.at, %i.au
  br i1 %i.av, label %.critedge.thread, label %_ZN2dd6solver4doneEv.exit

_ZN2dd6solver4doneEv.exit:                        ; preds = %_ZN2dd6solver8canceledEv.exit.thread4.i
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !42
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %_ZN2dd6solver4doneEv.exit
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt25__throw_bad_function_callv() #25
          to label %.noexc unwind label %.lr.ph.i.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_0
