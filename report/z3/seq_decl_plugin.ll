Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_decl_plugin?download=true
inline.NumInlined: 2960
inline.NumDeleted: 901
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK8seq_util3str10max_lengthEP4expr:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str9is_concatEPK4expr.exit.thread, label %_ZNK8seq_util3str9is_concatEPK4expr.exit

_ZNK8seq_util3str9is_concatEPK4expr.exit:         ; preds = %bb.d
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !78
  %i.aq = icmp eq i32 %i.ap, %i.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp eq i32 %i.as, 2
  %i.au = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %i.au, label %bb.e, label %_ZNK8seq_util3str9is_concatEPK4expr.exit.thread

bb.e:                                             ; preds = %_ZNK8seq_util3str9is_concatEPK4expr.exit
  %i.av = invoke noundef i32 @_ZNK8seq_util3str10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.ae)
          to label %bb.g unwind label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_ZNK8seq_util3str9is_concatEPK4expr.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %lpad.phi

_ZNK8seq_util3str9is_concatEPK4expr.exit.thread:  ; preds = %bb.d, %bb.c, %_ZNK8seq_util3str9is_concatEPK4expr.exit
  %i.aw = invoke fastcc noundef i32 @"_ZZNK8seq_util3str10max_lengthEP4exprENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.ae)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %_ZNK8seq_util3str9is_concatEPK4expr.exit.thread, %bb.e
  %.sink = phi i32 [ %i.av, %bb.e ], [ %i.aw, %_ZNK8seq_util3str9is_concatEPK4expr.exit.thread ]
  %.0.i10 = call noundef i32 @llvm.uadd.sat.i32(i32 %.sink, i32 %.0821) ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !202 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 65535
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !432

._crit_edge:                                      ; preds = %.lr.ph, %bb.g, %_ZNK8seq_util3str9is_concatEPK4expr.exit.i, %bb.b, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %.0821, %bb.b ], [ %.0821, %_ZNK8seq_util3str9is_concatEPK4expr.exit.i ], [ %.0.i10, %bb.g ], [ %.0821, %.lr.ph ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.022, %bb.b ], [ %.022, %_ZNK8seq_util3str9is_concatEPK4expr.exit.i ], [ %i.ax, %bb.g ], [ %.022, %.lr.ph ]
  %i.bc = invoke fastcc noundef i32 @"_ZZNK8seq_util3str10max_lengthEP4exprENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %.0.lcssa)
          to label %bb.h unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bd = load ptr, ptr %2, align 8, !tbaa !185   ; 3 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.bd, %i.d
  %i.be = icmp eq ptr %i.bd, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i12, %i.be
  br i1 %or.cond.i.i.i.i, label %_ZN7zstringD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bd)
          to label %_ZN7zstringD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #28
  unreachable

_ZN7zstringD2Ev.exit:                             ; preds = %bb.h, %bb.i
  %.0.i11 = call noundef i32 @llvm.uadd.sat.i32(i32 %i.bc, i32 %.08.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0.i11
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i32 @"_ZZNK8seq_util3str10max_lengthEP4exprENK3$_0clES2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %class.arith_util, align 8          ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZNK8seq_util3str8is_emptyEPK4expr(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef %1)
  br i1 %i.b, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !225  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit, label %_ZNK8seq_util3str7is_unitEPK4expr.exit

_ZNK8seq_util3str7is_unitEPK4expr.exit:           ; preds = %bb.c
  %i.m = load i32, ptr %i.l, align 8, !tbaa !78
  %i.n = icmp eq i32 %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  br i1 %i.r, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread, label %_ZNK8seq_util3str5is_atEPK4expr.exit

_ZNK8seq_util3str5is_atEPK4expr.exit:             ; preds = %_ZNK8seq_util3str7is_unitEPK4expr.exit
  %i.s = load i32, ptr %i.l, align 8, !tbaa !78
  %i.t = icmp eq i32 %i.s, %i.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 8
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread, label %_ZNK8seq_util3str10is_extractEPK4expr.exit.i

_ZNK8seq_util3str10is_extractEPK4expr.exit.i:     ; preds = %_ZNK8seq_util3str5is_atEPK4expr.exit
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %.in, align 8, !tbaa !435, !nonnull !99, !align !100
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !436, !nonnull !99, !align !100
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !78
  %i.ac = icmp eq i32 %i.ab, %i.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 6
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.d, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit

bb.d:                                             ; preds = %_ZNK8seq_util3str10is_extractEPK4expr.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !213
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.e, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !202
  store ptr %i.al, ptr %i.y, align 8, !tbaa !202
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !202
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !241, !nonnull !99, !align !100
  call void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(952) %i.ap)
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !436, !nonnull !99, !align !100
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !437, !nonnull !99, !align !251
  %i.au = call noundef zeroext i1 @_ZNK10arith_util11is_unsignedEPK4exprRj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.at)
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !437, !nonnull !99, !align !251
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ax = phi i32 [ %i.aw, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread

_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit: ; preds = %bb.c, %bb.d, %_ZNK8seq_util3str10is_extractEPK4expr.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !438, !nonnull !99, !align !100
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !212
  %i.bc = tail call noundef zeroext i1 @_ZNK8seq_util3str9is_stringEPK9func_declR7zstring(ptr noundef nonnull readonly align 8 dereferenceable(20) %i.a, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(80) %i.az)
  br i1 %i.bc, label %bb.h, label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread

bb.h:                                             ; preds = %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !438, !nonnull !99, !align !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !186
  br label %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread

_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit.thread: ; preds = %bb.b, %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit, %_ZNK8seq_util3str5is_atEPK4expr.exit, %_ZNK8seq_util3str7is_unitEPK4expr.exit, %bb.a, %bb.h, %bb.g
  %.0 = phi i32 [ 1, %_ZNK8seq_util3str5is_atEPK4expr.exit ], [ 0, %bb.a ], [ 1, %_ZNK8seq_util3str7is_unitEPK4expr.exit ], [ %i.ax, %bb.g ], [ %i.bf, %bb.h ], [ -1, %_ZNK8seq_util3str9is_stringEPK4exprR7zstring.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK8seq_util3rex10min_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5.i = alloca <{ i8, [3 x i8], i32, i32, i8, [3 x i8] }>, align 4 ; 5 uses
  %2 = alloca %"struct.seq_util::rex::info", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.a = load i32, ptr %1, align 4, !tbaa !252, !noalias !443 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207, !noalias !443 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i, label %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61, !noalias !443
  %i.g = icmp ult i32 %i.a, %i.f
  br i1 %i.g, label %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i.i, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i

_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i.i: ; preds = %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i.i
  %i.h = zext i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noalias !444
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread.i

_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread.i: ; preds = %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i.i
  %.sroa.5.0..sink.i.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sink.i.sroa_idx7.i, i64 16, i1 false), !noalias !444
  br label %bb.b

_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i: ; preds = %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i.i, %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload4.pr.i = load i32, ptr %i.k, align 8, !noalias !444
  %.sroa.5.0..sink.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sink.i.sroa_idx.i, i64 16, i1 false), !noalias !444
  %.not.i = icmp eq i32 %.sroa.0.0.copyload4.pr.i, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i, %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !tbaa.struct !254
  br label %_ZNK8seq_util3rex8get_infoEP4expr.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64, !noalias !444
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !64, !noalias !444
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200, !noalias !444 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61, !noalias !444 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61, !noalias !444
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !noalias !444
  %.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !200, !noalias !444 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !61, !noalias !444
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %bb.d, %bb.c
  %i.w = phi i32 [ %.pre2.i.i.i, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  store ptr %1, ptr %i.aa, align 8, !tbaa !202, !noalias !444
  %i.ab = add i32 %i.w, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !61, !noalias !444
  call void @_ZNK8seq_util3rex12get_info_recEP4expr(ptr dead_on_unwind nonnull writable sret(%"struct.seq_util::rex::info") align 4 %2, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1)
  br label %_ZNK8seq_util3rex8get_infoEP4expr.exit

_ZNK8seq_util3rex8get_infoEP4expr.exit:           ; preds = %bb.b, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i32 %i.ad
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8seq_util3rex8get_infoEP4expr(ptr dead_on_unwind noalias nofree writable sret(%"struct.seq_util::rex::info") align 4 captures(address) initializes((0, 20)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5 = alloca <{ i8, [3 x i8], i32, i32, i8, [3 x i8] }>, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.a = load i32, ptr %2, align 4, !tbaa !252, !noalias !447 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207, !noalias !447 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit, label %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i

_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61, !noalias !447
  %i.g = icmp ult i32 %i.a, %i.f
  br i1 %i.g, label %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit

_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i:  ; preds = %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i
  %i.h = zext i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit, label %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread

_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread: ; preds = %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i
  %.sroa.5.0..sink.i.sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sink.i.sroa_idx7, i64 16, i1 false)
  br label %bb.b

_ZNK8seq_util3rex15get_cached_infoEP4expr.exit:   ; preds = %bb.a, %_ZNK6vectorIN8seq_util3rex4infoELb1EjE4sizeEv.exit.i.i, %_ZNK8seq_util3rex14has_valid_infoEP4expr.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload4.pr = load i32, ptr %i.k, align 8 ; 2 uses
  %.sroa.5.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sink.i.sroa_idx, i64 16, i1 false)
  %.not = icmp eq i32 %.sroa.0.0.copyload4.pr, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread, %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit
  %.sroa.0.0.copyload48 = phi i32 [ %i.j, %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit.thread ], [ %.sroa.0.0.copyload4.pr, %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit ]
  store i32 %.sroa.0.0.copyload48, ptr %0, align 4, !tbaa !253
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5, i64 16, i1 false), !tbaa.struct !254
  br label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %_ZNK8seq_util3rex15get_cached_infoEP4expr.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !200 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !61
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  store ptr %2, ptr %i.aa, align 8, !tbaa !202
  %i.ab = add i32 %i.w, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !61
  tail call void @_ZNK8seq_util3rex12get_info_recEP4expr(ptr dead_on_unwind writable sret(%"struct.seq_util::rex::info") align 4 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !226  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 65535
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 13 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit

_ZNK8seq_util3rex8is_emptyEPK4expr.exit:          ; preds = %bb.b
  %i.o = load i32, ptr %i.n, align 8, !tbaa !78
  %i.p = icmp eq i32 %i.o, %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 36
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNK8seq_util3rex12is_full_charEPK4expr.exit.thread, label %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i

_ZNK8seq_util3rex9is_concatEPK4expr.exit.i:       ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit
  %i.u = load i32, ptr %i.n, align 8, !tbaa !78
  %i.v = icmp eq i32 %i.u, %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 28
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %bb.c, label %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i

bb.c:                                             ; preds = %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !213
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.d, label %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !202
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !202
  %i.ah = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ae)
  %i.ai = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ag)
  %.0.i14 = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.ah, i32 %i.ai)
  br label %_ZNK8seq_util3rex12is_full_charEPK4expr.exit.thread

_ZNK8seq_util3rex8is_unionEPK4expr.exit.i:        ; preds = %bb.c, %_ZNK8seq_util3rex9is_concatEPK4expr.exit.i
  %i.aj = load i32, ptr %i.n, align 8, !tbaa !78
  %i.ak = icmp eq i32 %i.aj, %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 29
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.e, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

bb.e:                                             ; preds = %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !213
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %_ZNK8seq_util3rex8is_unionEPK4exprRPS1_S5_.exit, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.e, %_ZNK8seq_util3rex8is_unionEPK4expr.exit.i
  %i.as = load i32, ptr %i.n, align 8, !tbaa !78
  %i.at = icmp eq i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, 4
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %_ZNK8seq_util3rex8is_unionEPK4exprRPS1_S5_.exit, label %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i

_ZNK8seq_util3rex8is_unionEPK4exprRPS1_S5_.exit:  ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %bb.e
  %.sink71 = phi i64 [ 32, %bb.e ], [ 40, %_ZNK11ast_manager6is_iteEPK4expr.exit.i ]
  %.sink = phi i64 [ 40, %bb.e ], [ 48, %_ZNK11ast_manager6is_iteEPK4expr.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %.sink71
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !202
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.036 = load ptr, ptr %i.ba, align 8, !tbaa !202
  %i.bb = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.az)
  %i.bc = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %.036)
  %.sroa.speculated29 = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 %i.bc)
  br label %_ZNK8seq_util3rex12is_full_charEPK4expr.exit.thread

_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i: ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.bd = load i32, ptr %i.n, align 8, !tbaa !78
  %i.be = icmp eq i32 %i.bd, %i.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 31
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.f, label %_ZNK8seq_util3rex7is_diffEPK4expr.exit.i

bb.f:                                             ; preds = %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !213
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.g, label %_ZNK8seq_util3rex7is_diffEPK4expr.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !202
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !202
  %i.bq = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bn)
  %i.br = tail call noundef i32 @_ZNK8seq_util3rex10max_lengthEP4expr(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bp)
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bq)
  br label %_ZNK8seq_util3rex12is_full_charEPK4expr.exit.thread

_ZNK8seq_util3rex7is_diffEPK4expr.exit.i:         ; preds = %bb.f, %_ZNK8seq_util3rex15is_intersectionEPK4expr.exit.i
  %i.bs = load i32, ptr %i.n, align 8, !tbaa !78
  %i.bt = icmp eq i32 %i.bs, %i.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp eq i32 %i.bv, 30
  %i.bx = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK8seq_util3rex7is_diffEPK4expr.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !213
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %_ZNK8seq_util3rex7is_diffEPK4exprRPS1_S5_.exit, label %bb.i

_ZNK8seq_util3rex7is_diffEPK4exprRPS1_S5_.exit:   ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !202
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !202
  br label %bb.k

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h, %_ZNK8seq_util3rex7is_diffEPK4expr.exit.i
  %i.cd = call noundef zeroext i1 @_ZNK8seq_util3rex10is_reverseEPK4exprRPS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.cd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = call noundef zeroext i1 @_ZNK8seq_util3rex6is_optEPK4exprRPS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK8seq_util3rex7is_diffEPK4exprRPS1_S5_.exit, %bb.j, %bb.i
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !202
end_hunk_0
