Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_qe_project?download=true
inline.NumInlined: 2576
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9spacer_qe20array_select_reducer5resetEv:bb.a
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !231
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.q, label %_ZN3refI5modelEaSEPS0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !135
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ck) #19, !inline_history !6
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.ck)
  br label %_ZN3refI5modelEaSEPS0_.exit

_ZN3refI5modelEaSEPS0_.exit:                      ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit13, %bb.p, %bb.q
  store ptr null, ptr %i.cj, align 8, !tbaa !232
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN8ast_mark5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN8ast_mark5resetEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.ct, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9spacer_qe20array_select_reducer6reduceER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.92", align 1 ; 4 uses
  %4 = alloca %"struct.obj_map<expr, expr *>::key_data", align 8 ; 5 uses
  %5 = alloca %class.ptr_vector.30, align 8       ; 13 uses
  %6 = alloca %class.ref_vector, align 8          ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !25     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.bu

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !279  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !236  ; 3 uses
  %i.k = add i32 %i.j, -1
  %i.l = and i32 %i.k, %i.h                       ; 3 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !241  ; 3 uses
  %i.n = zext i32 %i.l to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i ; 3 uses
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.p
  %.not34.i.i.i = icmp eq i32 %i.l, %i.j
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.b
  %.not2736.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2736.i.i.i, label %.loopexit132, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.e
  %.035.i.i.i = phi ptr [ %i.y, %bb.e ], [ %i.o, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %.035.i.i.i, align 8, !tbaa !278 ; 4 uses
  %i.s = icmp ult ptr %i.r, inttoptr (i64 2 to ptr)
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !279
  %i.v = icmp eq i32 %i.u, %i.h
  %i.w = icmp eq ptr %i.r, %i.a
  %or.cond.i.i.i = and i1 %i.w, %i.v
  br i1 %or.cond.i.i.i, label %.loopexit131, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %i.r, null
  br i1 %i.x, label %.loopexit132, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !424

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.m, %.preheader.i.i.i ] ; 4 uses
  %i.z = load ptr, ptr %.137.i.i.i, align 8, !tbaa !278 ; 4 uses
  %i.aa = icmp ult ptr %i.z, inttoptr (i64 2 to ptr)
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !279
  %i.ad = icmp eq i32 %i.ac, %i.h
  %i.ae = icmp eq ptr %i.z, %i.a
  %or.cond31.i.i.i = and i1 %i.ae, %i.ad
  br i1 %or.cond31.i.i.i, label %.loopexit131, label %bb.h

bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.af = icmp eq ptr %i.z, null
  %i.ag = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ag, %i.o
  %or.cond43.i.i.i = select i1 %i.af, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %.loopexit132, label %.lr.ph38.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.o
  br i1 %.not27.old.i.i.i, label %.loopexit132, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.h, %bb.g
  %.137.i.i.i.be = phi ptr [ %i.ag, %bb.g ], [ %.old.i.i.i, %bb.h ]
  br label %.lr.ph38.i.i.i, !llvm.loop !425

.loopexit131:                                     ; preds = %bb.c, %bb.f
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.f ], [ %.035.i.i.i, %bb.c ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !428 ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %.loopexit131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %.loopexit131
  %.not.i4.i = icmp eq ptr %i.a, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60, !nonnull !56, !align !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !27
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !27
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.an, ptr noundef nonnull %i.a)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.i, %bb.j, %bb.k
  store ptr %i.ai, ptr %1, align 8, !tbaa !25
  br label %bb.bu

.loopexit132:                                     ; preds = %bb.d, %bb.h, %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !145
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph unwind label %bb.l

_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph:       ; preds = %.loopexit132
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !145 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !53 ; 2 uses
  %i.as = zext i32 %.pre2.i to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.as
  store ptr %i.a, ptr %i.at, align 8, !tbaa !146
  %i.au = add i32 %.pre2.i, 1
  store i32 %i.au, ptr %.phi.trans.insert.i, align 4, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit

_ZNK6vectorIP3appLb0EjE5emptyEv.exit:             ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.bc = phi ptr [ %.pre.i, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %i.ka, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 4 uses
  %.0120158 = phi ptr [ null, %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.lr.ph ], [ %.3, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !53 ; 3 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZNK6vectorIP3appLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %_ZNK6vectorIP3appLb0EjE5emptyEv.exit
  %i.bg = add i32 %i.be, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !146 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bk = load ptr, ptr %0, align 8, !tbaa !280, !nonnull !56, !align !57
  %i.bl = ptrtoint ptr %i.bk to i64
  store i64 %i.bl, ptr %6, align 8, !tbaa !21
  store ptr null, ptr %i.av, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !32
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  br label %bb.m

._crit_edge:                                      ; preds = %bb.aq
  %.pre = load ptr, ptr %5, align 8, !tbaa !145   ; 3 uses
  %7 = trunc nuw i8 %.128 to i1                   ; 2 uses
  %i.bp = trunc nuw i8 %.1 to i1                  ; 3 uses
  %i.bq = icmp eq ptr %.pre, null
  br i1 %i.bq, label %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44

._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge: ; preds = %._crit_edge
  %.pre172 = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !53
  %i.br = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.bs = add i32 %.pre172, -1
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !53
  br i1 %7, label %bb.ar, label %bb.ay

_ZNK6vectorIP3appLb0EjE4sizeEv.exit44:            ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit, %._crit_edge
  %.026.lcssa223 = phi i1 [ %i.bp, %._crit_edge ], [ false, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit ] ; 2 uses
  %.027.lcssa221 = phi i1 [ %7, %._crit_edge ], [ false, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit ]
  %i.bt = phi ptr [ %.pre, %._crit_edge ], [ %i.bc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !53 ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, %i.be
  br i1 %i.bw, label %bb.bh, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread, !llvm.loop !426

bb.l:                                             ; preds = %.loopexit132
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.m:                                             ; preds = %.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 2 uses
  %.026155 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.aq ] ; 3 uses
  %.027153 = phi i8 [ 0, %.lr.ph ], [ %.128, %bb.aq ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, 65535
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !27
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !27
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !47 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !53 ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !53
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.p, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.co = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc107 unwind label %bb.y  ; 3 uses

.noexc107:                                        ; preds = %bb.o
  store i32 2, ptr %i.co, align 4, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.av, align 8, !tbaa !47
  br label %.noexc45

bb.p:                                             ; preds = %bb.n
  %i.cr = mul i32 %i.ck, 3
  %i.cs = add i32 %i.cr, 1
  %i.ct = lshr i32 %i.cs, 1                       ; 3 uses
  %i.cu = shl i32 %i.ct, 3
  %i.cv = add i32 %i.cu, 8                        ; 2 uses
  %.not.i104 = icmp ugt i32 %i.ct, %i.ck
  br i1 %.not.i104, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = shl i32 %i.ck, 3
  %i.cx = add i32 %i.cw, 8
  %.not27.i = icmp ugt i32 %i.cv, %i.cx
  br i1 %.not27.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cy = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cy, align 8, !tbaa !135
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 3 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !271
  %i.db = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !149 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !150
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !151
  store i64 %i.di, ptr %i.da, align 8, !tbaa !151
  %.phi.trans.insert.i105 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i106 = load i64, ptr %.phi.trans.insert.i105, align 8, !tbaa !149
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.t
  %i.dj = phi i64 [ %i.df, %bb.t ], [ %.pre.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !149
  store ptr %i.dc, ptr %2, align 8, !tbaa !150
  store i64 0, ptr %i.dk, align 8, !tbaa !149
  store i8 0, ptr %i.dc, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dc
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.u
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !151
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @__cxa_free_exception(ptr %i.cy) #19
  br label %.body

bb.w:                                             ; preds = %bb.q
  %i.ds = zext i32 %i.cv to i64
  %i.dt = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ds)
          to label %.noexc108 unwind label %bb.y  ; 2 uses

.noexc108:                                        ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.du, ptr %i.av, align 8, !tbaa !47
  store i32 %i.ct, ptr %i.dt, align 4, !tbaa !53
  br label %.noexc45

bb.x:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc45:                                         ; preds = %.noexc108, %.noexc107
  %.pre.i.i = phi ptr [ %i.du, %.noexc108 ], [ %i.cq, %.noexc107 ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.n, %.noexc45
  %i.dv = phi i32 [ %.pre2.i.i, %.noexc45 ], [ %i.ck, %bb.n ] ; 2 uses
  %i.dw = phi ptr [ %.pre.i.i, %.noexc45 ], [ %i.ch, %bb.n ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dy
  store ptr %i.bz, ptr %i.dz, align 8, !tbaa !23
  %i.ea = add i32 %i.dv, 1
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !53
  br label %bb.aq

bb.y:                                             ; preds = %bb.w, %bb.o, %bb.al, %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !279 ; 3 uses
  %i.ee = load i32, ptr %i.i, align 8, !tbaa !236 ; 3 uses
  %i.ef = add i32 %i.ee, -1
  %i.eg = and i32 %i.ef, %i.ed                    ; 3 uses
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !241 ; 3 uses
  %i.ei = zext i32 %i.eg to i64
  %.idx.i.i.i46 = shl nuw nsw i64 %i.ei, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i.i46 ; 3 uses
  %i.ek = zext i32 %i.ee to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.ek
  %.not34.i.i.i47 = icmp eq i32 %i.eg, %i.ee
  br i1 %.not34.i.i.i47, label %.preheader.i.i.i52, label %.lr.ph.i.i.i48

.preheader.i.i.i52:                               ; preds = %bb.ac, %bb.z
  %.not2736.i.i.i53 = icmp eq i32 %i.eg, 0
  br i1 %.not2736.i.i.i53, label %.loopexit128, label %.lr.ph38.i.i.i54

.lr.ph.i.i.i48:                                   ; preds = %bb.z, %bb.ac
  %.035.i.i.i49 = phi ptr [ %i.et, %bb.ac ], [ %i.ej, %bb.z ] ; 3 uses
  %i.em = load ptr, ptr %.035.i.i.i49, align 8, !tbaa !278 ; 4 uses
  %i.en = icmp ult ptr %i.em, inttoptr (i64 2 to ptr)
  br i1 %i.en, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !279
  %i.eq = icmp eq i32 %i.ep, %i.ed
  %i.er = icmp eq ptr %i.em, %i.bz
  %or.cond.i.i.i50 = and i1 %i.er, %i.eq
  br i1 %or.cond.i.i.i50, label %.loopexit, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i.i48
  %i.es = icmp eq ptr %i.em, null
  br i1 %i.es, label %.loopexit128, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.035.i.i.i49, i64 16 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.et, %i.el
  br i1 %.not.i.i.i51, label %.preheader.i.i.i52, label %.lr.ph.i.i.i48, !llvm.loop !424

.lr.ph38.i.i.i54:                                 ; preds = %.preheader.i.i.i52, %.lr.ph38.i.i.i54.backedge
  %.137.i.i.i55 = phi ptr [ %.137.i.i.i55.be, %.lr.ph38.i.i.i54.backedge ], [ %i.eh, %.preheader.i.i.i52 ] ; 4 uses
  %i.eu = load ptr, ptr %.137.i.i.i55, align 8, !tbaa !278 ; 4 uses
  %i.ev = icmp ult ptr %i.eu, inttoptr (i64 2 to ptr)
  br i1 %i.ev, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph38.i.i.i54
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !279
  %i.ey = icmp eq i32 %i.ex, %i.ed
  %i.ez = icmp eq ptr %i.eu, %i.bz
  %or.cond31.i.i.i56 = and i1 %i.ez, %i.ey
  br i1 %or.cond31.i.i.i56, label %.loopexit, label %bb.af

bb.ae:                                            ; preds = %.lr.ph38.i.i.i54
  %i.fa = icmp eq ptr %i.eu, null
  %i.fb = getelementptr inbounds nuw i8, ptr %.137.i.i.i55, i64 16 ; 2 uses
  %.not27.i.i.i63 = icmp eq ptr %i.fb, %i.ej
  %or.cond43.i.i.i64 = select i1 %i.fa, i1 true, i1 %.not27.i.i.i63
  br i1 %or.cond43.i.i.i64, label %.loopexit128, label %.lr.ph38.i.i.i54.backedge

bb.af:                                            ; preds = %bb.ad
  %.old.i.i.i57 = getelementptr inbounds nuw i8, ptr %.137.i.i.i55, i64 16 ; 2 uses
  %.not27.old.i.i.i58 = icmp eq ptr %.old.i.i.i57, %i.ej
  br i1 %.not27.old.i.i.i58, label %.loopexit128, label %.lr.ph38.i.i.i54.backedge

.lr.ph38.i.i.i54.backedge:                        ; preds = %bb.af, %bb.ae
  %.137.i.i.i55.be = phi ptr [ %i.fb, %bb.ae ], [ %.old.i.i.i57, %bb.af ]
  br label %.lr.ph38.i.i.i54, !llvm.loop !425

.loopexit:                                        ; preds = %bb.aa, %bb.ad
  %.026.i.i.i62 = phi ptr [ %.137.i.i.i55, %bb.ad ], [ %.035.i.i.i49, %bb.aa ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.026.i.i.i62, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !428 ; 5 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i66, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !27
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !27
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67: ; preds = %bb.ag, %.loopexit
  %i.fh = load ptr, ptr %i.av, align 8, !tbaa !47 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67
  %i.fj = getelementptr inbounds i8, ptr %i.fh, i64 -4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !53 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 -8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !53
  %i.fn = icmp eq i32 %i.fk, %i.fm
  br i1 %i.fn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i67
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %.noexc71 unwind label %bb.y

.noexc71:                                         ; preds = %bb.ai
  %.pre.i.i68 = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert.i.i69 = getelementptr inbounds i8, ptr %.pre.i.i68, i64 -4
  %.pre2.i.i70 = load i32, ptr %.phi.trans.insert.i.i69, align 4, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc71, %bb.ah
  %i.fo = phi i32 [ %.pre2.i.i70, %.noexc71 ], [ %i.fk, %bb.ah ] ; 2 uses
  %i.fp = phi ptr [ %.pre.i.i68, %.noexc71 ], [ %i.fh, %bb.ah ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  %i.fr = zext i32 %i.fo to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fr
  store ptr %i.fd, ptr %i.fs, align 8, !tbaa !23
  %i.ft = add i32 %i.fo, 1
  store i32 %i.ft, ptr %i.fq, align 4, !tbaa !53
  %i.fu = icmp ne ptr %i.bz, %i.fd
  %8 = zext i1 %i.fu to i8
  %9 = or i8 %.027153, %8
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8                         ; 3 uses
  %i.fv = trunc nuw i8 %.026155 to i1
  br i1 %i.fv, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = load i8, ptr %i.aw, align 8, !tbaa !244, !range !265, !noundef !56
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef %i.fd)
          to label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit unwind label %bb.y

_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit: ; preds = %bb.al
  br i1 %i.fy, label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread, label %bb.aq

_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread: ; preds = %bb.ak, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit
  br label %bb.aq

.loopexit128:                                     ; preds = %bb.ab, %bb.ae, %bb.af, %.preheader.i.i.i52
  %i.fz = load ptr, ptr %5, align 8, !tbaa !145   ; 4 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.loopexit128
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !53 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !53
  %i.gf = icmp eq i32 %i.gc, %i.ge
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.loopexit128
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc78 unwind label %bb.ap

.noexc78:                                         ; preds = %bb.an
  %.pre.i75 = load ptr, ptr %5, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i76 = getelementptr inbounds i8, ptr %.pre.i75, i64 -4
  %.pre2.i77 = load i32, ptr %.phi.trans.insert.i76, align 4, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc78, %bb.am
  %i.gg = phi i32 [ %.pre2.i77, %.noexc78 ], [ %i.gc, %bb.am ] ; 2 uses
  %i.gh = phi ptr [ %.pre.i75, %.noexc78 ], [ %i.fz, %bb.am ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4
  %i.gj = zext i32 %i.gg to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gj
  store ptr %i.bz, ptr %i.gk, align 8, !tbaa !146
  %i.gl = add i32 %i.gg, 1
  store i32 %i.gl, ptr %i.gi, align 4, !tbaa !53
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.ao, %bb.aj
  %.128 = phi i8 [ %11, %bb.aj ], [ %.027153, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.027153, %bb.ao ], [ %11, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit ], [ %11, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.aj ], [ %.026155, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %.026155, %bb.ao ], [ 0, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit ], [ 1, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gn = load i32, ptr %i.bm, align 8, !tbaa !32
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp samesign ult i64 %indvars.iv.next, %i.go
  br i1 %i.gp, label %bb.m, label %._crit_edge, !llvm.loop !427

_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread:     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44
  %i.gq = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.gr = add i32 %i.bv, -1
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !53
  br i1 %.027.lcssa221, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread
  %.026.lcssa222226 = phi i1 [ %i.bp, %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge ], [ %.026.lcssa223, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread ]
  %i.gs = load ptr, ptr %0, align 8, !tbaa !280, !nonnull !56, !align !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !48
  %i.gv = load ptr, ptr %i.av, align 8, !tbaa !47 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !53
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.ar, %bb.as
  %.0.i.i80 = phi i32 [ %i.gy, %bb.as ], [ 0, %bb.ar ]
  %i.gz = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gs, ptr noundef %i.gu, i32 noundef %.0.i.i80, ptr noundef %i.gv)
          to label %bb.at unwind label %bb.ax     ; 4 uses

bb.at:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not.i.i.i.i81 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i81, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i82, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !27
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !27
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i82

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i82: ; preds = %bb.au, %bb.at
  %i.hd = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 4 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i82
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !53 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !53
  %i.hj = icmp eq i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.aw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87

bb.aw:                                            ; preds = %bb.av, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i82
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %.noexc86 unwind label %bb.ax

.noexc86:                                         ; preds = %bb.aw
  %.pre.i.i83 = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert.i.i84 = getelementptr inbounds i8, ptr %.pre.i.i83, i64 -4
  %.pre2.i.i85 = load i32, ptr %.phi.trans.insert.i.i84, align 4, !tbaa !53
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87: ; preds = %bb.av, %.noexc86
  %i.hk = phi i32 [ %.pre2.i.i85, %.noexc86 ], [ %i.hg, %bb.av ] ; 2 uses
  %i.hl = phi ptr [ %.pre.i.i83, %.noexc86 ], [ %i.hd, %bb.av ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -4
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hn
  store ptr %i.gz, ptr %i.ho, align 8, !tbaa !23
  %i.hp = add i32 %i.hk, 1
  store i32 %i.hp, ptr %i.hm, align 4, !tbaa !53
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit, %bb.bg, %bb.bf, %bb.bb, %bb.aw, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87
  %.026.lcssa222225 = phi i1 [ %.026.lcssa222226, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87 ], [ %.026.lcssa223, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread ], [ %i.bp, %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge ]
  %.1121 = phi ptr [ %i.gz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit87 ], [ %i.bj, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread ], [ %i.bj, %._crit_edge._ZNK6vectorIP3appLb0EjE4sizeEv.exit44.thread_crit_edge ] ; 13 uses
  %i.hr = load i32, ptr %i.az, align 8, !tbaa !142
  %i.hs = getelementptr inbounds nuw i8, ptr %.1121, i64 4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, 65535
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.az, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %.1121, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i88, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread, label %_ZNK17array_recognizers9is_selectEP4expr.exit

_ZNK17array_recognizers9is_selectEP4expr.exit:    ; preds = %bb.az
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !189
  %i.ib = icmp eq i32 %i.ia, %i.hr
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = icmp eq i32 %i.id, 1
  %i.if = select i1 %i.ib, i1 %i.ie, i1 false
  br i1 %i.if, label %bb.ba, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

bb.ba:                                            ; preds = %_ZNK17array_recognizers9is_selectEP4expr.exit
  %i.ig = load i8, ptr %i.aw, align 8, !tbaa !244, !range !265, !noundef !56
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ii = getelementptr inbounds nuw i8, ptr %.1121, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ik = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef %i.ij)
          to label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91 unwind label %bb.ax

_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91: ; preds = %bb.bb
  br i1 %i.ik, label %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread, label %_ZNK17array_recognizers9is_selectEP4expr.exit.thread

_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread: ; preds = %bb.ba, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91
  %i.il = invoke noundef ptr @_ZN9spacer_qe20array_select_reducer11reduce_coreEP3app(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull %.1121)
          to label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit unwind label %bb.ax

_ZNK17array_recognizers9is_selectEP4expr.exit.thread: ; preds = %bb.az, %bb.ay, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91, %_ZNK17array_recognizers9is_selectEP4expr.exit
  %i.im = load i8, ptr %i.aw, align 8, !tbaa !244, !range !265, !noundef !56
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK17array_recognizers9is_selectEP4expr.exit.thread
  br i1 %.026.lcssa222225, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.io = load i32, ptr %i.az, align 8, !tbaa !142
  %i.ip = load i32, ptr %i.hs, align 4
  %i.iq = and i32 %i.ip, 65535
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %bb.be, label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit

bb.be:                                            ; preds = %bb.bd
  %i.is = getelementptr inbounds nuw i8, ptr %.1121, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !48
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i.i, label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit, label %_ZNK17array_recognizers8is_storeEP4expr.exit.i

_ZNK17array_recognizers8is_storeEP4expr.exit.i:   ; preds = %bb.be
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !189
  %i.ix = icmp eq i32 %i.iw, %i.io
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = icmp eq i32 %i.iz, 0
  %i.jb = select i1 %i.ix, i1 %i.ja, i1 false
  br i1 %i.jb, label %bb.bf, label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit

bb.bf:                                            ; preds = %_ZNK17array_recognizers8is_storeEP4expr.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.1121, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !23
  %i.je = invoke noundef zeroext i1 @_ZNK8ast_mark9is_markedEP3ast(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef %i.jd)
          to label %.noexc92 unwind label %bb.ax

.noexc92:                                         ; preds = %bb.bf
  br i1 %i.je, label %bb.bg, label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit

bb.bg:                                            ; preds = %.noexc92, %bb.bc
  invoke void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull %.1121, i1 noundef zeroext true)
          to label %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit unwind label %bb.ax

_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit: ; preds = %.noexc92, %_ZNK17array_recognizers8is_storeEP4expr.exit.i, %bb.be, %bb.bd, %_ZNK17array_recognizers9is_selectEP4expr.exit.thread, %bb.bg, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread
  %.2 = phi ptr [ %i.il, %_ZN9spacer_qe20array_select_reducer10has_storesEP4expr.exit91.thread ], [ %.1121, %bb.bg ], [ %.1121, %_ZNK17array_recognizers9is_selectEP4expr.exit.thread ], [ %.1121, %bb.bd ], [ %.1121, %bb.be ], [ %.1121, %_ZNK17array_recognizers8is_storeEP4expr.exit.i ], [ %.1121, %.noexc92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.bj, ptr %4, align 8, !tbaa !240
  store ptr %.2, ptr %i.bb, align 8, !tbaa !428
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit unwind label %bb.ax

_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit:      ; preds = %_ZN9spacer_qe20array_select_reducer11mark_storesEP3appb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44
  %.3 = phi ptr [ %.0120158, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit44 ], [ %.2, %_ZN7obj_mapI4exprPS0_E6insertES1_RKS1_.exit ] ; 2 uses
  %i.jf = load ptr, ptr %i.av, align 8, !tbaa !47 ; 5 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.bh
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 -4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !53 ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jk
  %.not.i95 = icmp eq i32 %i.ji, 0
  br i1 %.not.i95, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
end_hunk_0
