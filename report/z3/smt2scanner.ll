Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt2scanner?download=true
inline.NumInlined: 281
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4smt27scanner4scanEv:bb.a
  store i32 0, ptr %i.bn, align 4, !tbaa !26
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !26
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i22, label %_ZN4smt27scanner11read_symbolEv.exit23

_ZN6vectorIcLb0EjE5resetEv.exit.thread.i22:       ; preds = %bb.s, %bb.t
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
  %.pre.i.i19 = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i.i20 = getelementptr inbounds i8, ptr %.pre.i.i19, i64 -4
  %.pre2.i.i21 = load i32, ptr %.phi.trans.insert.i.i20, align 4, !tbaa !26
  %i.br = zext i32 %.pre2.i.i21 to i64
  br label %_ZN4smt27scanner11read_symbolEv.exit23

_ZN4smt27scanner11read_symbolEv.exit23:           ; preds = %bb.t, %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i22
  %i.bs = phi i64 [ %i.br, %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i22 ], [ 0, %bb.t ]
  %i.bt = phi ptr [ %.pre.i.i19, %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i22 ], [ %i.bm, %bb.t ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 %i.k, ptr %i.bu, align 1, !tbaa !27
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !25
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !26
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !26
  tail call void @_ZN4smt27scanner4nextEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  %i.bz = tail call noundef range(i32 4, 10) i32 @_ZN4smt27scanner16read_symbol_coreEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  br label %.loopexit

bb.u:                                             ; preds = %bb.r
  tail call void @_ZN4smt27scanner4nextEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  %i.ca = load i8, ptr %i.a, align 8, !tbaa !31
  %i.cb = add i8 %i.ca, -48
  %or.cond.i = icmp ult i8 %i.cb, 10
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = tail call noundef i32 @_ZN4smt27scanner11read_numberEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66
  tail call void @_ZN11mpz_managerILb1EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.cd)
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25 ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i24, label %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store i32 0, ptr %i.ch, align 4, !tbaa !26
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !26
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25, label %_ZN6vectorIcLb0EjE9push_backEOc.exit.i

_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25:       ; preds = %bb.x, %bb.w
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %.pre.i.i26 = load ptr, ptr %i.cf, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i.i27 = getelementptr inbounds i8, ptr %.pre.i.i26, i64 -4
  %.pre2.i.i28 = load i32, ptr %.phi.trans.insert.i.i27, align 4, !tbaa !26
  %i.cl = zext i32 %.pre2.i.i28 to i64
  br label %_ZN6vectorIcLb0EjE9push_backEOc.exit.i

_ZN6vectorIcLb0EjE9push_backEOc.exit.i:           ; preds = %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25, %bb.x
  %i.cm = phi i64 [ %i.cl, %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25 ], [ 0, %bb.x ]
  %i.cn = phi ptr [ %.pre.i.i26, %_ZN6vectorIcLb0EjE5resetEv.exit.thread.i25 ], [ %i.cg, %bb.x ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 45, ptr %i.co, align 1, !tbaa !27
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !25
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !26
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !26
  %i.ct = tail call noundef i32 @_ZN4smt27scanner16read_symbol_coreEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  br label %.loopexit

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.cu = load i32, ptr %i.j, align 4, !tbaa !61
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !50
  %i.cy = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !54 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !53
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !27
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dg = phi i64 [ %i.dc, %bb.z ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV13cmd_exception, i64 16), ptr %1, align 8, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 %i.cu, ptr %i.di, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 %i.cv, ptr %i.dj, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  invoke void @_ZN4smt27scanner4nextEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = call ptr @__cxa_allocate_exception(i64 48) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dk, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 3 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !50
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cx
  br i1 %i.do, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load i64, ptr %i.dh, align 8, !tbaa !54 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 8 dereferenceable(1) %i.cx, i64 %i.dr, i1 false)
  br label %_ZN13cmd_exceptionC2EOS_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.aa
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !53
  %i.ds = load i64, ptr %i.cx, align 8, !tbaa !27
  store i64 %i.ds, ptr %i.dm, align 8, !tbaa !27
  %.pre73 = load i64, ptr %i.dh, align 8, !tbaa !54
  br label %_ZN13cmd_exceptionC2EOS_.exit

_ZN13cmd_exceptionC2EOS_.exit:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  %i.dt = phi i64 [ %i.dp, %bb.ab ], [ %.pre73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !54
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !53
  store i64 0, ptr %i.dh, align 8, !tbaa !54
  store i8 0, ptr %i.cx, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV13cmd_exception, i64 16), ptr %i.dk, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dw = load i64, ptr %i.di, align 8
  store i64 %i.dw, ptr %i.dv, align 8
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI13cmd_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN13cmd_exceptionC2EOS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.dx

_ZN4smt27scanner18read_signed_numberEv.exit:      ; preds = %bb.g, %bb.c, %bb.d, %bb.q, %bb.e, %bb.f
  %i.dy = load i8, ptr %i.a, align 8, !tbaa !31
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !48
  store i32 %i.dz, ptr %i.c, align 8, !tbaa !69
  %i.ea = load i8, ptr %i.d, align 1, !tbaa !28, !range !23, !noundef !24
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN4smt27scanner18read_signed_numberEv.exit, %bb.q, %bb.a, %_ZN4smt27scanner11read_symbolEv.exit, %bb.j, %bb.k, %bb.l, %_ZN4smt27scanner11read_symbolEv.exit17, %bb.o, %bb.p, %_ZN4smt27scanner11read_symbolEv.exit23, %bb.v, %_ZN6vectorIcLb0EjE9push_backEOc.exit.i
  %.1.ph = phi i32 [ %i.ct, %_ZN6vectorIcLb0EjE9push_backEOc.exit.i ], [ %i.cc, %bb.v ], [ %i.bz, %_ZN4smt27scanner11read_symbolEv.exit23 ], [ 3, %_ZN4smt27scanner11read_symbolEv.exit ], [ %i.be, %bb.p ], [ 5, %bb.o ], [ %i.bc, %_ZN4smt27scanner11read_symbolEv.exit17 ], [ 4, %bb.l ], [ 2, %bb.k ], [ 1, %bb.j ], [ 9, %bb.a ], [ 9, %_ZN4smt27scanner18read_signed_numberEv.exit ], [ %i.bf, %bb.q ]
  ret i32 %.1.ph

bb.ad:                                            ; preds = %_ZN13cmd_exceptionC2EOS_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4smt27scanner10cached_strEjj(ptr noundef nonnull align 8 dereferenceable(1408) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIcLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !26
  br label %_ZN6vectorIcLb0EjE5resetEv.exit

_ZN6vectorIcLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = icmp ult i32 %1, %2
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN6vectorIcLb0EjE5resetEv.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %i.e = zext i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !27
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge.loopexit.split.loop.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !79

.critedge.loopexit.split.loop.exit41:             ; preds = %bb.c
  %i.j = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit41, %_ZN6vectorIcLb0EjE5resetEv.exit
  %.016.lcssa = phi i32 [ %1, %_ZN6vectorIcLb0EjE5resetEv.exit ], [ %i.j, %.critedge.loopexit.split.loop.exit41 ], [ %2, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.l = zext i32 %.016.lcssa to i64              ; 2 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %.016.lcssa, i32 %2) ; 2 uses
  %i.m = icmp ugt i32 %2, %.016.lcssa
  br i1 %i.m, label %.lr.ph48, label %.critedge2

.lr.ph48:                                         ; preds = %.critedge
  %i.n = zext i32 %2 to i64
  %5 = load ptr, ptr %i.k, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.o = icmp ugt i64 %i.p, %i.l
  br i1 %i.o, label %bb.f, label %.critedge2, !llvm.loop !80

bb.f:                                             ; preds = %.lr.ph48, %bb.e
  %indvars.iv2747 = phi i64 [ %i.n, %.lr.ph48 ], [ %i.p, %bb.e ] ; 2 uses
  %i.p = add nsw i64 %indvars.iv2747, -1          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %i.s = sext i8 %i.r to i32
  %i.t = tail call i32 @isspace(i32 noundef %i.s) #23
  %.not17 = icmp eq i32 %i.t, 0
  br i1 %.not17, label %.critedge2.split.loop.exit43, label %bb.e, !llvm.loop !80

.critedge2.split.loop.exit43:                     ; preds = %bb.f
  %i.u = trunc nuw i64 %indvars.iv2747 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.e, %.critedge, %.critedge2.split.loop.exit43
  %.015.lcssa = phi i32 [ %i.u, %.critedge2.split.loop.exit43 ], [ %umin, %.critedge ], [ %umin, %bb.e ] ; 2 uses
  %i.v = icmp ult i32 %.016.lcssa, %.015.lcssa
  br i1 %i.v, label %.lr.ph25, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge2
  %i.w = icmp eq ptr %i.b, null
  br i1 %i.w, label %bb.g, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN6vectorIcLb0EjE9push_backERKc.exit, %._crit_edge
  %i.x = phi ptr [ %i.b, %._crit_edge ], [ %i.az, %_ZN6vectorIcLb0EjE9push_backERKc.exit ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN6vectorIcLb0EjE9push_backEOc.exit

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !26
  br label %_ZN6vectorIcLb0EjE9push_backEOc.exit

_ZN6vectorIcLb0EjE9push_backEOc.exit:             ; preds = %._crit_edge.thread, %bb.g
  %i.ad = phi i32 [ %.pre2.i, %bb.g ], [ %i.z, %._crit_edge.thread ]
  %i.ae = phi ptr [ %.pre.i, %bb.g ], [ %i.x, %._crit_edge.thread ]
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !27
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !26
  ret ptr %i.ah

.lr.ph25:                                         ; preds = %.critedge2, %_ZN6vectorIcLb0EjE9push_backERKc.exit
  %i.al = phi ptr [ %i.az, %_ZN6vectorIcLb0EjE9push_backERKc.exit ], [ %i.b, %.critedge2 ] ; 4 uses
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %_ZN6vectorIcLb0EjE9push_backERKc.exit ], [ %i.l, %.critedge2 ] ; 2 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv30
  %i.ao = icmp eq ptr %i.al, null
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph25
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %_ZN6vectorIcLb0EjE9push_backERKc.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph25
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i18 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert.i19 = getelementptr inbounds i8, ptr %.pre.i18, i64 -4
  %.pre2.i20 = load i32, ptr %.phi.trans.insert.i19, align 4, !tbaa !26
  br label %_ZN6vectorIcLb0EjE9push_backERKc.exit

_ZN6vectorIcLb0EjE9push_backERKc.exit:            ; preds = %bb.h, %bb.i
  %i.au = phi i32 [ %.pre2.i20, %bb.i ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %.pre.i18, %bb.i ], [ %i.al, %bb.h ]
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.an, align 1, !tbaa !27
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !27
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !26
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %lftr.wideiv33 = trunc i64 %indvars.iv.next31 to i32
  %exitcond34.not = icmp eq i32 %.015.lcssa, %lftr.wideiv33
  br i1 %exitcond34.not, label %._crit_edge.thread, label %.lr.ph25, !llvm.loop !81
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4smt27scanner11reset_inputERSib(ptr noundef nonnull align 8 dereferenceable(1408) initializes((8, 9), (17, 18), (1356, 1364), (1376, 1384)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store ptr %1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1356
  store i32 0, ptr %i.e, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i32 0, ptr %i.f, align 8, !tbaa !45
  tail call void @_ZN4smt27scanner4nextEv(ptr noundef nonnull align 8 dereferenceable(1408) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13cmd_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN17default_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZN17default_exceptionD2Ev.exit

_ZN17default_exceptionD2Ev.exit:                  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK17default_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #8

declare noundef i32 @_ZNK12z3_exception10error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11mpq_managerILb1EE7rat_mulERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 10 uses
  %5 = alloca %class.mpz, align 8                 ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %2, align 8
  %i.h = icmp eq i32 %i.g, 1
  %i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %i.i, label %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit, label %_ZN11mpq_managerILb1EE6is_oneERK3mpq.exit.thread
end_hunk_0
