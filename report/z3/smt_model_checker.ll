Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_model_checker?download=true
inline.NumInlined: 1873
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3smt13model_checker14assert_neg_q_mEP10quantifierR10ref_vectorI4expr11ast_managerE:bb.a
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !68
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !68
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ad, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dr, ptr noundef nonnull %i.du)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.eg = load ptr, ptr %7, align 8, !tbaa !137   ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i57, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit58, label %bb.af

bb.af:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !141, !nonnull !65, !align !66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !68
  %i.el = add i32 %i.ek, -1                       ; 2 uses
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !68
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ag, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit58

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ei, ptr noundef nonnull %i.eg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit58 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit58:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ep = load ptr, ptr %5, align 8, !tbaa !96    ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.ep, %i.i
  %i.eq = icmp eq ptr %i.ep, null
  %or.cond.i.i.i = or i1 %.not.i.i.i59, %i.eq
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit58
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ep)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit58, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.aq

bb.ak:                                            ; preds = %._crit_edge
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.y
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.z, %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.am ], [ %i.eu, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN12rewriter_tplI16beta_reducer_cfgED2Ev(ptr noundef nonnull align 8 dead_on_return(537) dereferenceable(545) %6) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.et, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.v, %bb.ao, %bb.l
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.l ], [ %.pn.pn, %bb.ao ], [ %i.dl, %bb.v ], [ %i.dm, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.au

bb.aq:                                            ; preds = %bb.b, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %i.ew = load ptr, ptr %4, align 8, !tbaa !137   ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i60, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit61, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !141, !nonnull !65, !align !66
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !68
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !68
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.as, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit61

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ex, ptr noundef nonnull %i.ew)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit61 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit61:       ; preds = %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i1 %i.g

bb.au:                                            ; preds = %bb.ap, %bb.c
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.ap ], [ %i.h, %bb.c ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn36.pn.pn.pn
}

declare noundef zeroext i1 @_ZN11proto_model4evalEP4exprR7obj_refIS0_11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(177), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11proto_model9is_finiteEP4sort(ptr noundef nonnull align 8 dereferenceable(177), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZNK11proto_model18get_known_universeEP4sort(ptr noundef nonnull align 8 dereferenceable(177), ptr noundef) local_unnamed_addr #1

declare void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(545), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !68
  br label %bb.b

bb.b:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !137    ; 3 uses
  %.not.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i4, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !141, !nonnull !65, !align !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !68
  %i.i = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !68
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull %i.d)
  br label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !137
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt13model_checker12add_instanceEP10quantifierP5modelR10ref_vectorI4expr11ast_managerEb(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.array_util, align 8          ; 6 uses
  %6 = alloca %class.ref_vector, align 8          ; 9 uses
  %7 = alloca %class.obj_ref, align 8             ; 7 uses
  %8 = alloca %class.obj_ref, align 8             ; 16 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %9 = alloca %class.obj_ref, align 8             ; 11 uses
  %10 = alloca %class.obj_ref, align 8            ; 15 uses
  %11 = alloca %class.ptr_vector.331, align 8     ; 9 uses
  %12 = alloca %class.svector.11, align 8         ; 11 uses
  %13 = alloca %class.obj_ref, align 8            ; 5 uses
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.i = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66
  call void @_ZN10array_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(952) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !149  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.l = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %6, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store ptr null, ptr %i.n, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !20
  %.not.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.not.i.i, label %.critedge95, label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %.noexc98
  %i.p = phi ptr [ %.pr.pre.i.i, %.noexc98 ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !62
  %i.t = icmp ugt i32 %i.k, %i.s
  br i1 %i.t, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i, %.preheader
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc98 unwind label %bb.c

.noexc98:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %.preheader

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %i.k, ptr %i.u, align 4, !tbaa !62
  %i.v = zext i32 %i.k to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.w, i1 false), !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %wide.trip.count = zext i32 %i.k to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit225
  %indvars.iv451 = phi i64 [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit ], [ %indvars.iv.next452, %_ZN7obj_refI4expr11ast_managerED2Ev.exit225 ] ; 2 uses
  %.0263387 = phi i32 [ 0, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6resizeEj.exit ], [ %.1, %_ZN7obj_refI4expr11ast_managerED2Ev.exit225 ] ; 7 uses
  %i.am = trunc nuw i64 %indvars.iv451 to i32     ; 2 uses
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.k, %i.an
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.aq = zext i32 %i.ao to i64                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !99 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !78 ; 3 uses
  %i.ax = load i32, ptr %i.y, align 8, !tbaa !155 ; 3 uses
  %i.ay = add i32 %i.ax, -1
  %i.az = and i32 %i.ay, %i.aw                    ; 3 uses
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !156 ; 3 uses
  %i.bb = zext i32 %i.az to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.bb, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.bd = zext i32 %i.ax to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bd
  %.not34.i.i.i.i.i = icmp eq i32 %i.az, %i.ax
  br i1 %.not34.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.g, %bb.d
  %.not2736.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not2736.i.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i, label %.lr.ph38.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.035.i.i.i.i.i = phi ptr [ %i.bm, %bb.g ], [ %i.bc, %bb.d ] ; 3 uses
  %i.bf = load ptr, ptr %.035.i.i.i.i.i, align 8, !tbaa !160 ; 4 uses
  %i.bg = icmp ult ptr %i.bf, inttoptr (i64 2 to ptr)
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !78
  %i.bj = icmp eq i32 %i.bi, %i.aw
  %i.bk = icmp eq ptr %i.bf, %i.au
  %or.cond.i.i.i.i.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.i, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = icmp eq ptr %i.bf, null
  br i1 %i.bl, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.bm, %i.be
  br i1 %.not.i.i.i.i.i99, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph38.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.lr.ph38.i.i.i.i.i.backedge
  %.137.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i.be, %.lr.ph38.i.i.i.i.i.backedge ], [ %i.ba, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.bn = load ptr, ptr %.137.i.i.i.i.i, align 8, !tbaa !160 ; 4 uses
  %i.bo = icmp ult ptr %i.bn, inttoptr (i64 2 to ptr)
  br i1 %i.bo, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph38.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !78
  %i.br = icmp eq i32 %i.bq, %i.aw
  %i.bs = icmp eq ptr %i.bn, %i.au
  %or.cond31.i.i.i.i.i = and i1 %i.bs, %i.br
  br i1 %or.cond31.i.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph38.i.i.i.i.i
  %i.bt = icmp eq ptr %i.bn, null
  %i.bu = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i.i.i = icmp eq ptr %i.bu, %i.bc
  %or.cond43.i.i.i.i.i = select i1 %i.bt, i1 true, i1 %.not27.i.i.i.i.i
  br i1 %or.cond43.i.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i, label %.lr.ph38.i.i.i.i.i.backedge

bb.j:                                             ; preds = %bb.h
  %.old.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i, i64 24 ; 2 uses
  %.not27.old.i.i.i.i.i = icmp eq ptr %.old.i.i.i.i.i, %i.bc
  br i1 %.not27.old.i.i.i.i.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i, label %.lr.ph38.i.i.i.i.i.backedge

.lr.ph38.i.i.i.i.i.backedge:                      ; preds = %bb.j, %bb.i
  %.137.i.i.i.i.i.be = phi ptr [ %i.bu, %bb.i ], [ %.old.i.i.i.i.i, %bb.j ]
  br label %.lr.ph38.i.i.i.i.i, !llvm.loop !5

_ZNK10model_core16get_const_interpEP9func_decl.exit.i: ; preds = %bb.e, %bb.h
  %.026.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i, %bb.h ], [ %.035.i.i.i.i.i, %bb.e ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !161 ; 3 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i, label %_ZN10model_core21get_some_const_interpEP9func_decl.exit.thread

_ZN10model_core21get_some_const_interpEP9func_decl.exit.thread: ; preds = %_ZNK10model_core16get_const_interpEP9func_decl.exit.i
  %i.bx = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66 ; 2 uses
  store ptr %i.bw, ptr %8, align 8, !tbaa !137
  store ptr %i.bx, ptr %i.z, align 8, !tbaa !20
  br label %bb.m

_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i: ; preds = %bb.f, %bb.j, %bb.i, %_ZNK10model_core16get_const_interpEP9func_decl.exit.i, %.preheader.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !165
  %i.ca = load ptr, ptr %2, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %i.bz)
          to label %_ZN10model_core21get_some_const_interpEP9func_decl.exit unwind label %bb.k, !inline_history !6 ; 3 uses

_ZN10model_core21get_some_const_interpEP9func_decl.exit: ; preds = %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i
  %i.ce = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66 ; 2 uses
  store ptr %i.cd, ptr %8, align 8, !tbaa !137
  store ptr %i.ce, ptr %i.z, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %.sink.split, label %bb.m

bb.k:                                             ; preds = %_ZNK10model_core16get_const_interpEP9func_decl.exit.thread.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.l:                                             ; preds = %bb.am, %bb.ah, %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_ZN10model_core21get_some_const_interpEP9func_decl.exit.thread, %_ZN10model_core21get_some_const_interpEP9func_decl.exit
  %i.ch = phi ptr [ %i.bx, %_ZN10model_core21get_some_const_interpEP9func_decl.exit.thread ], [ %i.ce, %_ZN10model_core21get_some_const_interpEP9func_decl.exit ] ; 3 uses
  %.pr282 = phi ptr [ %i.bw, %_ZN10model_core21get_some_const_interpEP9func_decl.exit.thread ], [ %i.cd, %_ZN10model_core21get_some_const_interpEP9func_decl.exit ] ; 13 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.pr282, i64 8 ; 8 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !68
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !68
  br i1 %4, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !75, !nonnull !65, !align !66
  %i.cm = invoke noundef ptr @_ZN3smt12model_finder7get_invEP10quantifierjP4exprR5modelRj(ptr noundef nonnull align 8 dereferenceable(128) %i.cl, ptr noundef nonnull %1, i32 noundef %i.am, ptr noundef nonnull %.pr282, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.o unwind label %bb.r       ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.not73.not = icmp eq ptr %i.cm, null
  br i1 %.not73.not, label %bb.dj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !62
  %.sroa.speculated257 = call i32 @llvm.umax.i32(i32 %i.cn, i32 %.0263387)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !68
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !68
  %i.cr = load i32, ptr %i.ci, align 4, !tbaa !68
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !68
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ch, ptr noundef nonnull %.pr282)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body

bb.s:                                             ; preds = %bb.p, %bb.q
  store ptr %i.cm, ptr %8, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread

bb.t:                                             ; preds = %bb.m
  invoke void @_ZN3smt13model_checker15init_value2exprEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.noexc104 unwind label %bb.ac

.noexc104:                                        ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.pr282, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !78 ; 3 uses
  %i.cx = load i32, ptr %i.ab, align 8, !tbaa !54 ; 3 uses
  %i.cy = add i32 %i.cx, -1
  %i.cz = and i32 %i.cy, %i.cw                    ; 3 uses
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 3 uses
  %i.db = zext i32 %i.cz to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.db, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i ; 3 uses
  %i.dd = zext i32 %i.cx to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dd
  %.not34.i.i.i.i = icmp eq i32 %i.cz, %i.cx
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.w, %.noexc104
  %.not2736.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not2736.i.i.i.i, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc104, %bb.w
  %.035.i.i.i.i = phi ptr [ %i.dm, %bb.w ], [ %i.dc, %.noexc104 ] ; 3 uses
  %i.df = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !80 ; 4 uses
  %i.dg = icmp ult ptr %i.df, inttoptr (i64 2 to ptr)
  br i1 %i.dg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !78
  %i.dj = icmp eq i32 %i.di, %i.cw
  %i.dk = icmp eq ptr %i.df, %.pr282
  %or.cond.i.i.i.i = and i1 %i.dk, %i.dj
  br i1 %or.cond.i.i.i.i, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dl = icmp eq ptr %i.df, null
  br i1 %i.dl, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dm, %i.de
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph38.i.i.i.i.backedge
  %.137.i.i.i.i = phi ptr [ %.137.i.i.i.i.be, %.lr.ph38.i.i.i.i.backedge ], [ %i.da, %.preheader.i.i.i.i ] ; 4 uses
  %i.dn = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !80 ; 4 uses
  %i.do = icmp ult ptr %i.dn, inttoptr (i64 2 to ptr)
  br i1 %i.do, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !78
  %i.dr = icmp eq i32 %i.dq, %i.cw
  %i.ds = icmp eq ptr %i.dn, %.pr282
  %or.cond31.i.i.i.i = and i1 %i.ds, %i.dr
  br i1 %or.cond31.i.i.i.i, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit, label %bb.z

bb.y:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.dt = icmp eq ptr %i.dn, null
  %i.du = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.du, %i.dc
  %or.cond43.i.i.i.i = select i1 %i.dt, i1 true, i1 %.not27.i.i.i.i
  br i1 %or.cond43.i.i.i.i, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread, label %.lr.ph38.i.i.i.i.backedge

bb.z:                                             ; preds = %bb.x
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i = icmp eq ptr %.old.i.i.i.i, %i.dc
  br i1 %.not27.old.i.i.i.i, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread, label %.lr.ph38.i.i.i.i.backedge

.lr.ph38.i.i.i.i.backedge:                        ; preds = %bb.z, %bb.y
  %.137.i.i.i.i.be = phi ptr [ %i.du, %bb.y ], [ %.old.i.i.i.i, %bb.z ]
  br label %.lr.ph38.i.i.i.i, !llvm.loop !3

_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit: ; preds = %bb.u, %bb.x
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.x ], [ %.035.i.i.i.i, %bb.u ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !81 ; 4 uses
  %.not = icmp eq ptr %i.dw, null
  br i1 %.not, label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !68
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !68
  %i.ea = load i32, ptr %i.ci, align 4, !tbaa !68
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.ci, align 4, !tbaa !68
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ab, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ch, ptr noundef nonnull %.pr282)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109 unwind label %bb.ac

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109:   ; preds = %bb.ab, %bb.aa
  store ptr %i.dw, ptr %8, align 8, !tbaa !137
  br label %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.t
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread: ; preds = %bb.v, %bb.z, %bb.y, %.preheader.i.i.i.i, %bb.s, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109, %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit
  %i.ee = phi ptr [ %i.cm, %bb.s ], [ %.pr282, %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit ], [ %i.dw, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109 ], [ %.pr282, %.preheader.i.i.i.i ], [ %.pr282, %bb.z ], [ %.pr282, %bb.y ], [ %.pr282, %bb.v ] ; 6 uses
  %.1 = phi i32 [ %.sroa.speculated257, %bb.s ], [ %.0263387, %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit ], [ %.0263387, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit109 ], [ %.0263387, %.preheader.i.i.i.i ], [ %.0263387, %bb.z ], [ %.0263387, %bb.y ], [ %.0263387, %bb.v ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, 65535
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !99
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !166 ; 3 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i111, label %.thread9.i, label %_ZNK11ast_manager14is_model_valueEPK4expr.exit.i

_ZNK11ast_manager14is_model_valueEPK4expr.exit.i: ; preds = %bb.ad
  %i.en = load i32, ptr %i.em, align 8, !tbaa !170
  %i.eo = icmp eq i32 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = icmp eq i32 %i.eq, 0
  %i.es = select i1 %i.eo, i1 %i.er, i1 false
  br i1 %i.es, label %bb.ai, label %.thread9.i

.thread9.i:                                       ; preds = %_ZNK11ast_manager14is_model_valueEPK4expr.exit.i, %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !94
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i119, label %bb.ae

bb.ae:                                            ; preds = %.thread9.i, %_ZN3smt13model_checker17get_term_from_ctxEP4expr.exit.thread
  %i.ew = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = load i32, ptr %i.af, align 4, !tbaa !171
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ew, i8 0, i64 %i.ez, i1 false)
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i: ; preds = %bb.af, %bb.ae
  store i32 0, ptr %i.ag, align 8, !tbaa !172
  invoke void @_Z18for_each_expr_coreIN3smt13model_checkerE8obj_markI4expr10bit_vector14default_t2uintIS3_EELb1ELb0EEvRT_RT0_PS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull %i.ee)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i._ZN3smt13model_checker20contains_model_valueEP4expr.exitthread-pre-split_crit_edge unwind label %bb.ag

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i._ZN3smt13model_checker20contains_model_valueEP4expr.exitthread-pre-split_crit_edge: ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i
  %.pr.pre = load ptr, ptr %8, align 8, !tbaa !137
  br label %_ZN3smt13model_checker20contains_model_valueEP4expr.exit

bb.ag:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3smt13model_checker14is_model_valueE ; 3 uses
  %i.fb = extractvalue { ptr, i32 } %i.fa, 1
  %i.fc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3smt13model_checker14is_model_valueE) #20
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ah, label %.body

bb.ah:                                            ; preds = %bb.ag
  %i.fe = extractvalue { ptr, i32 } %i.fa, 0
  %i.ff = call ptr @__cxa_begin_catch(ptr %i.fe) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %._crit_edge455 unwind label %bb.l

._crit_edge455:                                   ; preds = %bb.ah
  %.pre = load ptr, ptr %8, align 8, !tbaa !137
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge455, %_ZNK11ast_manager14is_model_valueEPK4expr.exit.i
  %i.fg = phi ptr [ %.pre, %._crit_edge455 ], [ %i.ee, %_ZNK11ast_manager14is_model_valueEPK4expr.exit.i ]
  %i.fh = invoke noundef ptr @_ZN3smt13model_checker24get_type_compatible_termEP4expr(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.fg)
          to label %bb.aj unwind label %bb.l      ; 4 uses

bb.aj:                                            ; preds = %bb.ai
  %.not.i113 = icmp eq ptr %i.fh, null
  br i1 %.not.i113, label %bb.ak, label %_ZN11ast_manager7inc_refEP3ast.exit.i114

_ZN11ast_manager7inc_refEP3ast.exit.i114:         ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !68
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !68
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i114, %bb.aj
  %i.fl = load ptr, ptr %8, align 8, !tbaa !137   ; 3 uses
  %.not.i4.i115 = icmp eq ptr %i.fl, null
  br i1 %.not.i4.i115, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.z, align 8, !tbaa !141, !nonnull !65, !align !66
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !68
  %i.fp = add i32 %i.fo, -1                       ; 2 uses
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !68
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.am, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fm, ptr noundef nonnull %i.fl)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117 unwind label %bb.l

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117:   ; preds = %bb.am, %bb.ak, %bb.al
  store ptr %i.fh, ptr %8, align 8, !tbaa !137
  br label %_ZN3smt13model_checker20contains_model_valueEP4expr.exit

_ZN3smt13model_checker20contains_model_valueEP4expr.exit: ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i._ZN3smt13model_checker20contains_model_valueEP4expr.exitthread-pre-split_crit_edge, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117
  %i.fr = phi ptr [ %i.fh, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit117 ], [ %.pr.pre, %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE5resetEv.exit.i._ZN3smt13model_checker20contains_model_valueEP4expr.exitthread-pre-split_crit_edge ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fr) ]
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i.i119

_ZN11ast_manager7inc_refEP3ast.exit.i.i119:       ; preds = %.thread9.i, %_ZN3smt13model_checker20contains_model_valueEP4expr.exit
  %i.fs = phi ptr [ %i.fr, %_ZN3smt13model_checker20contains_model_valueEP4expr.exit ], [ %i.ee, %.thread9.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %storemerge = load ptr, ptr %0, align 8, !tbaa !89, !nonnull !65, !align !66
  store ptr %i.fs, ptr %9, align 8, !tbaa !137
  store ptr %storemerge, ptr %i.ah, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !68
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !68
  %i.fw = load i32, ptr %5, align 8, !tbaa !744
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = and i32 %i.fy, 65535
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.an, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread

bb.an:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i119
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !99
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !166 ; 3 uses
  %.not.i.i.i.i.i121 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i121, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %_ZNK17array_recognizers11is_as_arrayEP4expr.exit.i

_ZNK17array_recognizers11is_as_arrayEP4expr.exit.i: ; preds = %bb.an
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !170
  %i.gg = icmp eq i32 %i.gf, %i.fw
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = icmp eq i32 %i.gi, 11
  %i.gk = select i1 %i.gg, i1 %i.gj, i1 false
  br i1 %i.gk, label %bb.ao, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread

bb.ao:                                            ; preds = %_ZNK17array_recognizers11is_as_arrayEP4expr.exit.i
  %i.gl = invoke noundef ptr @_ZNK17array_recognizers22get_as_array_func_declEP4expr(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull %i.fs)
          to label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit unwind label %bb.bo ; 9 uses

_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit: ; preds = %bb.ao
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !78 ; 5 uses
  %i.go = load i32, ptr %i.aj, align 8, !tbaa !745 ; 3 uses
  %i.gp = add i32 %i.go, -1
  %i.gq = and i32 %i.gp, %i.gn                    ; 3 uses
  %i.gr = load ptr, ptr %i.ai, align 8, !tbaa !746 ; 4 uses
  %i.gs = zext i32 %i.gq to i64
  %.idx.i.i.i.i123 = shl nuw nsw i64 %i.gs, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.idx.i.i.i.i123 ; 4 uses
  %i.gu = zext i32 %i.go to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gu ; 2 uses
  %.not34.i.i.i.i124 = icmp eq i32 %i.gq, %i.go   ; 2 uses
  br i1 %.not34.i.i.i.i124, label %.preheader.i.i.i.i129, label %.lr.ph.i.i.i.i125

.preheader.i.i.i.i129:                            ; preds = %bb.ar, %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit
  %.not2736.i.i.i.i130 = icmp eq i32 %i.gq, 0
  br i1 %.not2736.i.i.i.i130, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %.lr.ph38.i.i.i.i131

.lr.ph.i.i.i.i125:                                ; preds = %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit, %bb.ar
  %.035.i.i.i.i126 = phi ptr [ %i.hd, %bb.ar ], [ %i.gt, %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit ] ; 3 uses
  %i.gw = load ptr, ptr %.035.i.i.i.i126, align 8, !tbaa !750 ; 4 uses
  %i.gx = icmp ult ptr %i.gw, inttoptr (i64 2 to ptr)
  br i1 %i.gx, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i125
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !78
  %i.ha = icmp eq i32 %i.gz, %i.gn
  %i.hb = icmp eq ptr %i.gw, %i.gl
  %or.cond.i.i.i.i127 = and i1 %i.hb, %i.ha
  br i1 %or.cond.i.i.i.i127, label %_ZNK10model_core15get_func_interpEP9func_decl.exit, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i125
  %i.hc = icmp eq ptr %i.gw, null
  br i1 %i.hc, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i126, i64 16 ; 2 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.hd, %i.gv
  br i1 %.not.i.i.i.i128, label %.preheader.i.i.i.i129, label %.lr.ph.i.i.i.i125, !llvm.loop !739

.lr.ph38.i.i.i.i131:                              ; preds = %.preheader.i.i.i.i129, %.lr.ph38.i.i.i.i131.backedge
  %.137.i.i.i.i132 = phi ptr [ %.137.i.i.i.i132.be, %.lr.ph38.i.i.i.i131.backedge ], [ %i.gr, %.preheader.i.i.i.i129 ] ; 4 uses
  %i.he = load ptr, ptr %.137.i.i.i.i132, align 8, !tbaa !750 ; 4 uses
  %i.hf = icmp ult ptr %i.he, inttoptr (i64 2 to ptr)
  br i1 %i.hf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph38.i.i.i.i131
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !78
  %i.hi = icmp eq i32 %i.hh, %i.gn
  %i.hj = icmp eq ptr %i.he, %i.gl
  %or.cond31.i.i.i.i133 = and i1 %i.hj, %i.hi
  br i1 %or.cond31.i.i.i.i133, label %_ZNK10model_core15get_func_interpEP9func_decl.exit, label %bb.au

bb.at:                                            ; preds = %.lr.ph38.i.i.i.i131
  %i.hk = icmp eq ptr %i.he, null
  %i.hl = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i132, i64 16 ; 2 uses
  %.not27.i.i.i.i139 = icmp eq ptr %i.hl, %i.gt
  %or.cond43.i.i.i.i140 = select i1 %i.hk, i1 true, i1 %.not27.i.i.i.i139
  br i1 %or.cond43.i.i.i.i140, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %.lr.ph38.i.i.i.i131.backedge

bb.au:                                            ; preds = %bb.as
  %.old.i.i.i.i134 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i132, i64 16 ; 2 uses
  %.not27.old.i.i.i.i135 = icmp eq ptr %.old.i.i.i.i134, %i.gt
  br i1 %.not27.old.i.i.i.i135, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %.lr.ph38.i.i.i.i131.backedge

.lr.ph38.i.i.i.i131.backedge:                     ; preds = %bb.au, %bb.at
  %.137.i.i.i.i132.be = phi ptr [ %i.hl, %bb.at ], [ %.old.i.i.i.i134, %bb.au ]
  br label %.lr.ph38.i.i.i.i131, !llvm.loop !740

_ZNK10model_core15get_func_interpEP9func_decl.exit: ; preds = %bb.ap, %bb.as
  %.026.i.i.i.i138 = phi ptr [ %.137.i.i.i.i132, %bb.as ], [ %.035.i.i.i.i126, %bb.ap ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i138, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !751
  %.not74 = icmp eq ptr %i.hn, null
  br i1 %.not74, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK10model_core15get_func_interpEP9func_decl.exit
  br i1 %.not34.i.i.i.i124, label %.lr.ph38.i.i.i.i149.preheader, label %.lr.ph.i.i.i.i143

.lr.ph.i.i.i.i143:                                ; preds = %bb.av, %bb.ay
  %.035.i.i.i.i144 = phi ptr [ %i.hu, %bb.ay ], [ %i.gt, %bb.av ] ; 3 uses
  %i.ho = load ptr, ptr %.035.i.i.i.i144, align 8, !tbaa !750 ; 4 uses
  %i.hp = icmp ult ptr %i.ho, inttoptr (i64 2 to ptr)
  br i1 %i.hp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i143
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !78
  %i.hs = icmp eq i32 %i.hr, %i.gn
  %i.ht = icmp eq ptr %i.ho, %i.gl
  %or.cond.i.i.i.i145 = and i1 %i.ht, %i.hs
  br i1 %or.cond.i.i.i.i145, label %.loopexit.i156, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i144, i64 16 ; 2 uses
  %.not.i.i.i.i146 = icmp eq ptr %i.hu, %i.gv
  br i1 %.not.i.i.i.i146, label %.lr.ph38.i.i.i.i149.preheader, label %.lr.ph.i.i.i.i143, !llvm.loop !739

.lr.ph38.i.i.i.i149.preheader:                    ; preds = %bb.ay, %bb.av
  br label %.lr.ph38.i.i.i.i149

.lr.ph38.i.i.i.i149:                              ; preds = %.lr.ph38.i.i.i.i149.preheader, %.lr.ph38.backedge.i.i.i.i154
  %.137.i.i.i.i150 = phi ptr [ %.137.be.i.i.i.i155, %.lr.ph38.backedge.i.i.i.i154 ], [ %i.gr, %.lr.ph38.i.i.i.i149.preheader ] ; 3 uses
  %i.hv = load ptr, ptr %.137.i.i.i.i150, align 8, !tbaa !750 ; 4 uses
  %i.hw = icmp ult ptr %i.hv, inttoptr (i64 2 to ptr)
  br i1 %i.hw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph38.i.i.i.i149
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !78
  %i.hz = icmp eq i32 %i.hy, %i.gn
  %i.ia = icmp eq ptr %i.hv, %i.gl
  %or.cond31.i.i.i.i151 = and i1 %i.ia, %i.hz
  br i1 %or.cond31.i.i.i.i151, label %.loopexit.i156, label %.lr.ph38.backedge.i.i.i.i154

bb.ba:                                            ; preds = %.lr.ph38.i.i.i.i149
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hv) ]
  br label %.lr.ph38.backedge.i.i.i.i154

.lr.ph38.backedge.i.i.i.i154:                     ; preds = %bb.az, %bb.ba
  %.137.be.i.i.i.i155 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i150, i64 16
  br label %.lr.ph38.i.i.i.i149, !llvm.loop !740

.loopexit.i156:                                   ; preds = %bb.aw, %bb.az
  %.026.i.i.i.i157 = phi ptr [ %.137.i.i.i.i150, %bb.az ], [ %.035.i.i.i.i144, %bb.aw ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i157, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !751
  %i.id = invoke noundef ptr @_ZNK11func_interp10get_interpEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ic)
          to label %bb.bb unwind label %bb.bo

bb.bb:                                            ; preds = %.loopexit.i156
  %.not75 = icmp eq ptr %i.id, null
  br i1 %.not75, label %_ZNK17array_recognizers11is_as_arrayEP4exprRP9func_decl.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ie = load i32, ptr %i.gm, align 4, !tbaa !78 ; 3 uses
  %i.if = load i32, ptr %i.aj, align 8, !tbaa !745 ; 3 uses
  %i.ig = add i32 %i.if, -1
  %i.ih = and i32 %i.ig, %i.ie                    ; 2 uses
  %i.ii = load ptr, ptr %i.ai, align 8, !tbaa !746 ; 3 uses
  %i.ij = zext i32 %i.if to i64
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.ij
  %.not34.i.i.i.i162 = icmp eq i32 %i.ih, %i.if
  br i1 %.not34.i.i.i.i162, label %.lr.ph38.i.i.i.i169.preheader, label %.lr.ph.i.i.i.i163.preheader

.lr.ph.i.i.i.i163.preheader:                      ; preds = %bb.bc
  %i.il = zext i32 %i.ih to i64
  %.idx.i.i.i.i161 = shl nuw nsw i64 %i.il, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx.i.i.i.i161
  br label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %.lr.ph.i.i.i.i163.preheader, %bb.bf
  %.035.i.i.i.i164 = phi ptr [ %i.it, %bb.bf ], [ %i.im, %.lr.ph.i.i.i.i163.preheader ] ; 3 uses
  %i.in = load ptr, ptr %.035.i.i.i.i164, align 8, !tbaa !750 ; 4 uses
  %i.io = icmp ult ptr %i.in, inttoptr (i64 2 to ptr)
  br i1 %i.io, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !78
end_hunk_0
