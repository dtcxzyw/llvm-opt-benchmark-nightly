inline.NumInlined: 986
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12slice_solver17consume_used_funsEv:bb.a
          to label %bb.u unwind label %bb.q

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %1, align 8, !tbaa !170   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cc
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.q
  %i.cp = load i64, ptr %i.cc, align 8, !tbaa !173
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.by) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cr, %bb.r ]
  resume { ptr, i32 } %.pn32.i

bb.t:                                             ; preds = %bb.m
  %i.cs = zext i32 %i.bv to i64
  %i.ct = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cs) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !61
  store i32 %i.bt, ptr %i.ct, align 4, !tbaa !77
  br label %_ZN6vectorIjLb0EjE13expand_vectorEv.exit

bb.u:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIjLb0EjE13expand_vectorEv.exit:         ; preds = %bb.k, %bb.t
  %.pre.i = phi ptr [ %i.bq, %bb.k ], [ %i.cu, %bb.t ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !77
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.j, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit
  %i.cv = phi i32 [ %.pre2.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit ], [ %i.bk, %bb.j ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i, %_ZN6vectorIjLb0EjE13expand_vectorEv.exit ], [ %i.bh, %bb.j ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cy
  store i32 %i.ay, ptr %i.cz, align 4, !tbaa !77
  %i.da = add i32 %i.cv, 1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !77
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.ba
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i8 1, ptr %i.dd, align 8, !tbaa !114
  br label %_ZN12slice_solver15should_activateEj.exit.thread

_ZN12slice_solver15should_activateEj.exit.thread: ; preds = %.lr.ph, %_ZN12slice_solver15should_activateEj.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.025, i64 4 ; 2 uses
  %.not11 = icmp eq ptr %i.de, %i.ax
  br i1 %.not11, label %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread.loopexit, label %.lr.ph

_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread.loopexit: ; preds = %_ZN12slice_solver15should_activateEj.exit.thread
  %.pre33 = load i32, ptr %i.a, align 8, !tbaa !137
  %.pre34 = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread

_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread: ; preds = %bb.d, %bb.g, %bb.h, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread.loopexit, %_ZN6vectorIjLb0EjE3endEv.exit, %.preheader.i.i
  %i.df = phi ptr [ %i.i, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit ], [ %i.i, %bb.g ], [ %.pre34, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread.loopexit ], [ %i.i, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %i.i, %.preheader.i.i ], [ %i.i, %bb.h ], [ %i.i, %bb.d ] ; 2 uses
  %i.dg = phi i32 [ %i.j, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit ], [ %i.j, %bb.g ], [ %.pre33, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread.loopexit ], [ %i.j, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %i.j, %.preheader.i.i ], [ %i.j, %bb.h ], [ %i.j, %bb.d ]
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %i.a, align 8, !tbaa !137
  %i.di = icmp eq ptr %i.df, null
  br i1 %i.di, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, !llvm.loop !237

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, %_ZNK7obj_mapI9func_decl7svectorIjjEE9find_coreEPS0_.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12slice_solver16activate_indicesEv(ptr noundef nonnull align 8 dereferenceable(300) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIjLb0EjE5emptyEv.exit

_ZNK6vectorIjLb0EjE5emptyEv.exit:                 ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit
  %i.g = load i32, ptr %i.b, align 4, !tbaa !77   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 13 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(112) %i.o)
  %i.t = icmp ult i32 %i.m, %i.s
  br i1 %i.t, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(112) %i.u)
  %i.z = load i32, ptr %i.l, align 4, !tbaa !78
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(112) %i.u, i32 noundef %i.aa)
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !61  ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !77 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.not3954 = icmp eq i32 %i.ah, 0
  br i1 %.not3954, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !77 ; 2 uses
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(112) %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !78
  %.not4081 = icmp eq i32 %i.at, %i.av
  br i1 %.not4081, label %.lr.ph83, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit

.lr.ph57:                                         ; preds = %bb.f
  %i.aw = load i32, ptr %i.bn, align 4, !tbaa !77 ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(112) %i.ba)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !78
  %.not40 = icmp eq i32 %i.be, %i.bg
  br i1 %.not40, label %.lr.ph83, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit

.lr.ph83:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %i.bh = phi ptr [ %i.az, %.lr.ph57 ], [ %i.ao, %.lr.ph57.preheader ] ; 2 uses
  %i.bi = phi i32 [ %i.aw, %.lr.ph57 ], [ %i.al, %.lr.ph57.preheader ] ; 2 uses
  %.0375682 = phi ptr [ %i.bn, %.lr.ph57 ], [ %i.ae, %.lr.ph57.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph83
  tail call void @_ZN6solver11assert_exprEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.bl, ptr noundef %i.bm, ptr noundef nonnull %i.bk)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph83
  tail call void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.bl, ptr noundef %i.bm)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %.0375682, i64 4 ; 3 uses
  %.not39 = icmp eq ptr %i.bn, %i.ak
  br i1 %.not39, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit, label %.lr.ph57

_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit: ; preds = %.lr.ph57, %bb.f, %.lr.ph57.preheader, %bb.c, %_ZN6vectorIjLb0EjE3endEv.exit
  %.038.lcssa = phi i32 [ %i.g, %_ZN6vectorIjLb0EjE3endEv.exit ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph57.preheader ], [ %i.bi, %bb.f ], [ %i.bi, %.lr.ph57 ]
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !69  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIN12slice_solver5fml_tELb1EjE4sizeEv.exit

_ZNK6vectorIN12slice_solver5fml_tELb1EjE4sizeEv.exit: ; preds = %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42
  %i.bq = phi ptr [ %i.cw, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42 ], [ %i.bo, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit ] ; 2 uses
  %.03563.in = phi i32 [ %.03563, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42 ], [ %.038.lcssa, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit ]
  %.03563 = add i32 %.03563.in, 1                 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !77
  %1 = icmp ult i32 %.03563, %i.bs
  br i1 %1, label %bb.g, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread

bb.g:                                             ; preds = %_ZNK6vectorIN12slice_solver5fml_tELb1EjE4sizeEv.exit
  %2 = zext i32 %.03563 to i64
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %2 ; 4 uses
  %i.bu = load i32, ptr %i.l, align 4, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 36 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !78 ; 2 uses
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 208
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef i32 %i.cb(ptr noundef nonnull align 8 dereferenceable(112) %i.by)
  %i.cd = icmp ugt i32 %i.bw, %i.cc
  br i1 %i.cd, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 192
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(112) %i.ce)
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !78
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 208
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef i32 %i.cm(ptr noundef nonnull align 8 dereferenceable(112) %i.cj)
  %i.co = icmp ugt i32 %i.ci, %i.cn
  br i1 %i.co, label %.lr.ph60, label %._crit_edge61, !llvm.loop !238

._crit_edge61:                                    ; preds = %.lr.ph60, %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !114, !range !139, !noundef !17
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.h, label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42

bb.h:                                             ; preds = %._crit_edge61
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !84 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ct, null
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.cv = load ptr, ptr %i.bt, align 8, !tbaa !84 ; 2 uses
  br i1 %.not.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6solver11assert_exprEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.cu, ptr noundef %i.cv, ptr noundef nonnull %i.ct)
  br label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.cu, ptr noundef %i.cv)
  br label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42

_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42: ; preds = %bb.j, %bb.i, %._crit_edge61, %bb.g
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !69  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIN12slice_solver5fml_tELb1EjE4sizeEv.exit, !llvm.loop !239

bb.k:                                             ; preds = %bb.b
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !61  ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %_ZN6vectorIjLb0EjE3endEv.exit44

_ZN6vectorIjLb0EjE3endEv.exit44:                  ; preds = %bb.k
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !77 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.dd
  %.not51 = icmp eq i32 %i.db, 0
  br i1 %.not51, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZN6vectorIjLb0EjE3endEv.exit44, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46
  %.052 = phi ptr [ %i.eg, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46 ], [ %i.cy, %_ZN6vectorIjLb0EjE3endEv.exit44 ] ; 2 uses
  %i.df = load i32, ptr %.052, align 4, !tbaa !77
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 36 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !78
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(112) %i.dl)
  %i.dq = icmp ugt i32 %i.dk, %i.dp
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph53, %.lr.ph
  %i.dr = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 192
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(112) %i.dr)
  %i.dv = load i32, ptr %i.dj, align 4, !tbaa !78
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef i32 %i.dz(ptr noundef nonnull align 8 dereferenceable(112) %i.dw)
  %i.eb = icmp ugt i32 %i.dv, %i.ea
  br i1 %i.eb, label %.lr.ph, label %._crit_edge, !llvm.loop !240

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph53
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !84 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ed, null
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ef = load ptr, ptr %i.di, align 8, !tbaa !84 ; 2 uses
  br i1 %.not.i45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZN6solver11assert_exprEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.ee, ptr noundef %i.ef, ptr noundef nonnull %i.ed)
  br label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46

bb.m:                                             ; preds = %._crit_edge
  tail call void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ee, ptr noundef %i.ef)
  br label %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46

_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46: ; preds = %bb.l, %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %.052, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.de
  br i1 %.not, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread, label %.lr.ph53

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread:          ; preds = %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit46, %_ZNK6vectorIN12slice_solver5fml_tELb1EjE4sizeEv.exit, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit42, %bb.k, %_ZN6vectorIjLb0EjE3endEv.exit44, %_ZN12slice_solver11assert_exprERKNS_5fml_tE.exit, %bb.a, %_ZNK6vectorIjLb0EjE5emptyEv.exit
  ret void
}

declare noundef i32 @_Z19get_verbosity_levelv() local_unnamed_addr #2

declare noundef zeroext i1 @_Z11is_threadedv() local_unnamed_addr #2

declare void @_Z12verbose_lockv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() local_unnamed_addr #2

declare void @_Z14verbose_unlockv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZZN12slice_solver8activateEjP4exprEN5visitclEP9func_decl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !241, !nonnull !17, !align !18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !130  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = add i32 %i.g, -1
  %i.i = and i32 %i.h, %i.e                       ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.k = zext i32 %i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i ; 3 uses
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %.not34.i.i = icmp eq i32 %i.i, %i.g
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.a
  %.not2736.i.i = icmp eq i32 %i.i, 0
  br i1 %.not2736.i.i, label %.loopexit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.035.i.i = phi ptr [ %i.u, %bb.d ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = load ptr, ptr %.035.i.i, align 8, !tbaa !57 ; 4 uses
  %.not.i = icmp ult ptr %i.o, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !130
  %i.r = icmp eq i32 %i.q, %i.e
  %i.s = icmp eq ptr %i.o, %1
  %or.cond.i.i = and i1 %i.s, %i.r
  br i1 %or.cond.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = icmp eq ptr %i.o, null
  br i1 %i.t, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !243

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.j, %.preheader.i.i ] ; 3 uses
  %i.v = load ptr, ptr %.137.i.i, align 8, !tbaa !57 ; 4 uses
  %i.w = icmp ult ptr %i.v, inttoptr (i64 2 to ptr)
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !130
  %i.z = icmp eq i32 %i.y, %i.e
  %i.aa = icmp eq ptr %i.v, %1
  %or.cond31.i.i = and i1 %i.aa, %i.z
  br i1 %or.cond31.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.g

bb.f:                                             ; preds = %.lr.ph38.i.i
end_hunk_0
