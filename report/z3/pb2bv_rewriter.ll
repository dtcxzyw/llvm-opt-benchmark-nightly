Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb2bv_rewriter?download=true
inline.NumInlined: 3208
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN14pb2bv_rewriter3imp16card2bv_rewriter16bounded_additionEjPKP4exprj:bb.a
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.thread, label %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit

_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit, %_ZN6vectorI7svectorIjjELb1EjE6shrinkEj.exit, %bb.a, %.critedge.preheader
  %.lcssa = phi ptr [ null, %.critedge.preheader ], [ null, %bb.a ], [ %i.dg, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit ], [ null, %_ZN6vectorI7svectorIjjELb1EjE6shrinkEj.exit ]
  %i.ij = load ptr, ptr %6, align 8, !tbaa !371
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !104 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZN6vectorIjLb0EjE4backEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.thread
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !103
  %i.io = add i32 %i.in, -1
  %i.ip = zext i32 %i.io to i64
  br label %_ZN6vectorIjLb0EjE4backEv.exit

_ZN6vectorIjLb0EjE4backEv.exit:                   ; preds = %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.thread, %bb.ay
  %.0.i.i70 = phi i64 [ %i.ip, %bb.ay ], [ 4294967295, %_ZNK6vectorI10ref_vectorI4expr11ast_managerELb1EjE4sizeEv.exit.thread ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0.i.i70
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !103
  %i.is = icmp eq i32 %i.ir, %4
  br i1 %i.is, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %_ZN6vectorIjLb0EjE4backEv.exit
  %i.it = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !103
  %i.iy = add i32 %i.ix, -1
  %i.iz = zext i32 %i.iy to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.0.i.i.i = phi i64 [ %i.iz, %bb.ba ], [ 4294967295, %bb.az ]
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.0.i.i.i
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !114 ; 5 uses
  %.not.i71 = icmp eq ptr %i.jb, null
  br i1 %.not.i71, label %bb.bc, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.bb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !108
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !108
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.bb
  %i.jf = load ptr, ptr %0, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.jf, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !123, !nonnull !99, !align !100
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !108
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !108
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.be, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jg, ptr noundef nonnull %i.jf)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp

bb.bf:                                            ; preds = %_ZN6vectorIjLb0EjE4backEv.exit
  %i.jl = load ptr, ptr %i.a, align 8, !tbaa !222, !nonnull !99, !align !100
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 840
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !228 ; 5 uses
  %.not.i73 = icmp eq ptr %i.jn, null
  br i1 %.not.i73, label %bb.bg, label %_ZN11ast_manager7inc_refEP3ast.exit.i74

_ZN11ast_manager7inc_refEP3ast.exit.i74:          ; preds = %bb.bf
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !108
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !108
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i74, %bb.bf
  %i.jr = load ptr, ptr %0, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.jr, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.js = load ptr, ptr %i.c, align 8, !tbaa !123, !nonnull !99, !align !100
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !108
  %i.jv = add i32 %i.ju, -1                       ; 2 uses
  store i32 %i.jv, ptr %i.jt, align 4, !tbaa !108
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.bi, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.js, ptr noundef nonnull %i.jr)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.bh, %bb.bg, %bb.bi, %bb.bd, %bb.bc, %bb.be
  %storemerge = phi ptr [ %i.jb, %bb.bd ], [ %i.jb, %bb.be ], [ %i.jb, %bb.bc ], [ %i.jn, %bb.bi ], [ %i.jn, %bb.bg ], [ %i.jn, %bb.bh ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !122
  %i.jx = load ptr, ptr %6, align 8, !tbaa !371   ; 4 uses
  %.not.i.i78 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i78, label %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !103 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi i32 [ %i.kf, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i ], [ %i.jz, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ]
  %.047.i.i.i.i.i.i = phi ptr [ %i.ke, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i ], [ %i.jx, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  %i.ka = load ptr, ptr %.047.i.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kb)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #23
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.bj, %.lr.ph.i.i.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i.i, i64 8
  %i.kf = add i32 %.08.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !377

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i.i
  %.pre.i.i79 = load ptr, ptr %6, align 8, !tbaa !371
  br label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i
  %i.kg = phi ptr [ %.pre.i.i79, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.jx, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i.i ]
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kh)
          to label %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit unwind label %bb.bl

bb.bl:                                            ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #23
  unreachable

_ZN6vectorI7svectorIjjELb1EjED2Ev.exit:           ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.kk = load ptr, ptr %5, align 8, !tbaa !368
  %.not.i.i80 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i80, label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit
  invoke void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i unwind label %bb.bn

.noexc.i:                                         ; preds = %bb.bm
  %i.kl = load ptr, ptr %5, align 8, !tbaa !368
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.km)
          to label %_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit unwind label %bb.bn

bb.bn:                                            ; preds = %.noexc.i, %bb.bm
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #23
  unreachable

_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev.exit: ; preds = %_ZN6vectorI7svectorIjjELb1EjED2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.bo:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ao, %bb.w
  %.pn24.pn = phi { ptr, i32 } [ %i.df, %bb.w ], [ %i.gk, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6vectorI7svectorIjjELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN6vectorI10ref_vectorI4expr11ast_managerELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14pb2bv_rewriter3imp16card2bv_rewriter9tot_adderERK10ref_vectorI4expr11ast_managerERK7svectorIjjES7_SB_jRS5_RS9_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %struct._key_data, align 4         ; 5 uses
  %14 = alloca %"class.uint_set::iterator", align 8 ; 6 uses
  %15 = alloca %"class.uint_set::iterator", align 8 ; 7 uses
  %16 = alloca %class.uint_set, align 8           ; 13 uses
  %17 = alloca %class.vector.65, align 8          ; 13 uses
  %18 = alloca %class.u_map, align 8              ; 12 uses
  %19 = alloca %"class.uint_set::iterator", align 8 ; 6 uses
  %20 = alloca %class.ref_vector, align 8         ; 6 uses
  %21 = alloca %class.ref_vector, align 8         ; 6 uses
  %22 = alloca %class.obj_ref, align 8            ; 6 uses
  %23 = alloca %class.obj_ref, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr null, ptr %16, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr null, ptr %17, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.a = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 8, ptr %i.a, align 8, !tbaa !378
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !379
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !380
  %i.d = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %_ZN5u_mapIjEC2Ev.exit unwind label %bb.f ; 17 uses

_ZN5u_mapIjEC2Ev.exit:                            ; preds = %bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !381
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !385
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !381
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !385
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.h, align 4, !tbaa !381
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 0, ptr %i.i, align 4, !tbaa !385
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 0, ptr %i.j, align 4, !tbaa !381
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 0, ptr %i.k, align 4, !tbaa !385
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %i.l, align 4, !tbaa !381
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 0, ptr %i.m, align 4, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 0, ptr %i.n, align 4, !tbaa !381
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %i.o, align 4, !tbaa !385
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i32 0, ptr %i.p, align 4, !tbaa !381
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i32 0, ptr %i.q, align 4, !tbaa !385
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.r, align 4, !tbaa !381
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.s, align 4, !tbaa !385
  store ptr %i.d, ptr %18, align 8, !tbaa !386
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN5u_mapIjEC2Ev.exit, %bb.j
  %.058 = phi i32 [ %i.ao, %bb.j ], [ 0, %_ZN5u_mapIjEC2Ev.exit ] ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !103
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  %.not = icmp ugt i32 %.058, %.0.i.i
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %16, ptr %15, align 8, !tbaa !387
  %.pr.pre.i.i = load ptr, ptr %16, align 8, !tbaa !104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 0, ptr %i.z, align 8, !tbaa !390
  %i.aa = icmp eq ptr %.pr.pre.i.i, null
  br i1 %i.aa, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %.pr.pre.i.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !103
  %i.ad = shl i32 %i.ac, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i

_ZN8uint_set8iteratorC2ERKS_b.exit.i:             ; preds = %bb.e, %bb.d
  %.0.i.i4.i.i = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.0.i.i4.i.i, ptr %i.ae, align 4, !tbaa !391
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.y unwind label %bb.ab

bb.f:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ag = icmp eq i32 %.058, 0                    ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add i32 %.058, -1
  %i.aj = zext i32 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.w, %bb.g
  %.057 = phi i32 [ %i.ah, %bb.g ], [ %i.da, %bb.w ] ; 4 uses
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !14  ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !103
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90: ; preds = %bb.h, %bb.i
  %.0.i.i89 = phi i32 [ %i.an, %bb.i ], [ 0, %bb.h ]
  %.not85 = icmp ugt i32 %.057, %.0.i.i89
  br i1 %.not85, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90
  %i.ao = add i32 %.058, 1
  br label %bb.b, !llvm.loop !392

bb.k:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit90
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %2, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aj
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.as = phi i32 [ %i.ar, %bb.l ], [ 0, %bb.k ]
  %i.at = icmp eq i32 %.057, 0
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add i32 %.057, -1
  %i.av = load ptr, ptr %4, align 8, !tbaa !104
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.az = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.m ]
  %i.ba = add i32 %i.az, %i.as
  %.sroa.speculated237 = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %5) ; 2 uses
  %i.bb = lshr i32 %.sroa.speculated237, 5        ; 4 uses
  %i.bc = load ptr, ptr %16, align 8, !tbaa !104  ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %thread-pre-split.i.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !103 ; 2 uses
  %.not.i = icmp ult i32 %i.bb, %i.bf
  br i1 %.not.i, label %bb.w, label %thread-pre-split.i.i.preheader

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %bb.o
  %.ph = phi ptr [ null, %bb.o ], [ %i.bc, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ 0, %bb.o ], [ %i.bf, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  %.ph352 = add nuw nsw i32 %i.bb, 1              ; 3 uses
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.backedge, %thread-pre-split.i.i.preheader
  %i.bg = phi ptr [ %.ph, %thread-pre-split.i.i.preheader ], [ %.be, %thread-pre-split.i.i.backedge ] ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.p, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !103
  %.not355 = icmp ult i32 %i.bb, %i.bj
  br i1 %.not355, label %bb.v, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i

bb.p:                                             ; preds = %thread-pre-split.i.i
  %i.bk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc180 unwind label %bb.x  ; 3 uses

.noexc180:                                        ; preds = %bb.p
  store i32 2, ptr %i.bk, align 4, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %i.bl, align 4, !tbaa !103
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bm, ptr %16, align 8, !tbaa !104
  br label %thread-pre-split.i.i.backedge

thread-pre-split.i.i.backedge:                    ; preds = %.noexc180, %.noexc181
  %.be = phi ptr [ %i.cm, %.noexc181 ], [ %i.bm, %.noexc180 ]
  br label %thread-pre-split.i.i, !llvm.loop !113

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !103 ; 3 uses
  %i.bp = mul i32 %i.bo, 3
  %i.bq = add i32 %i.bp, 1
  %i.br = lshr i32 %i.bq, 1                       ; 3 uses
  %i.bs = shl i32 %i.br, 2
  %i.bt = add i32 %i.bs, 8                        ; 2 uses
  %.not.i177 = icmp ugt i32 %i.br, %i.bo
  br i1 %.not.i177, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.q:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.bu = shl i32 %i.bo, 2
  %i.bv = add i32 %i.bu, 8
  %.not27.i = icmp ugt i32 %i.bt, %i.bv
  br i1 %.not27.i, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.q, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.bx, ptr %12, align 8, !tbaa !229
  %i.by = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #28
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.s ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.bx, align 8, !tbaa !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.by, ptr noundef nonnull align 1 dereferenceable(42) @.str.24, i64 42, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 42
  store i8 0, ptr %i.ca, align 1, !tbaa !234
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bw, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !231
  store i64 42, ptr %i.cc, align 8, !tbaa !234
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 42, ptr %i.cd, align 8, !tbaa !233
  store ptr %i.bx, ptr %12, align 8, !tbaa !231
  store i64 0, ptr %i.bz, align 8, !tbaa !233
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %12, align 8, !tbaa !231  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bx
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.r
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !234
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @__cxa_free_exception(ptr %i.bw) #22
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.ck = zext i32 %i.bt to i64
  %i.cl = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bn, i64 noundef %i.ck)
          to label %.noexc181 unwind label %bb.x  ; 2 uses

.noexc181:                                        ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store ptr %i.cm, ptr %16, align 8, !tbaa !104
  store i32 %i.br, ptr %i.cl, align 4, !tbaa !103
  br label %thread-pre-split.i.i.backedge

bb.u:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.v:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.bg, i64 -4
  store i32 %.ph352, ptr %i.cn, align 4, !tbaa !103
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph352
  br i1 %.not1218.i.i, label %bb.w, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.v
  %i.co = zext nneg i32 %.ph352 to i64
  %i.cp = zext nneg i32 %.0.i16.i.i.ph to i64     ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.bg, i64 %i.cp
  %i.cr = sub nsw i64 %i.co, %i.cp
  %i.cs = shl nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cq, i8 0, i64 %i.cs, i1 false), !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.preheader.i.i, %bb.v, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.ct = phi ptr [ %i.bg, %.lr.ph.preheader.i.i ], [ %i.bg, %bb.v ], [ %i.bc, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %i.cu = and i32 %.sroa.speculated237, 31
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = zext nneg i32 %i.bb to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !103
  %i.cz = or i32 %i.cy, %i.cv
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !103
  %i.da = add i32 %.057, 1
  br label %bb.h, !llvm.loop !393

bb.x:                                             ; preds = %bb.t, %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i
  %.fca.0.load.i = load ptr, ptr %15, align 8
  %.fca.1.load.i = load i64, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  store ptr %.fca.0.load.i, ptr %19, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 %.fca.1.load.i, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %16, ptr %14, align 8, !tbaa !387
  %.pr.pre.i.i92 = load ptr, ptr %16, align 8, !tbaa !104 ; 2 uses
  %i.dd = icmp eq ptr %.pr.pre.i.i92, null
  br i1 %i.dd, label %_ZN8uint_set8iteratorC2ERKS_b.exit.i93, label %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i

_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i:   ; preds = %bb.y
  %i.de = getelementptr inbounds i8, ptr %.pr.pre.i.i92, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !103
  %i.dg = shl i32 %i.df, 5
  br label %_ZN8uint_set8iteratorC2ERKS_b.exit.i93

_ZN8uint_set8iteratorC2ERKS_b.exit.i93:           ; preds = %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i, %bb.y
  %.sink.i = phi i32 [ %i.dg, %_ZNK8uint_set12get_max_elemEv.exit.thread6.i.i ], [ 0, %bb.y ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 %.sink.i, ptr %i.dh, align 8, !tbaa !390
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sink.i, ptr %i.di, align 4, !tbaa !391
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i93
  %.fca.1.load.i96 = load i64, ptr %i.dh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.sroa.4.8.extract.trunc = trunc i64 %.fca.1.load.i96 to i32
  br label %_ZN8uint_set8iteratorppEv.exit

_ZN8uint_set8iteratorppEv.exit:                   ; preds = %bb.af, %bb.z
  %i.dj = load i32, ptr %i.dc, align 8, !tbaa !390 ; 2 uses
  %.not249 = icmp eq i32 %i.dj, %.sroa.4.8.extract.trunc
  br i1 %.not249, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.dk = load ptr, ptr %7, align 8, !tbaa !104   ; 6 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge.preheader, label %bb.ai

bb.ab:                                            ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit254:                                     ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %_ZN8uint_set8iteratorC2ERKS_b.exit.i93
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %_ZN8uint_set8iteratorppEv.exit
  %i.dn = load ptr, ptr %7, align 8, !tbaa !104   ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !103 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !103
  %i.dt = icmp eq i32 %i.dq, %i.ds
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc101 unwind label %bb.ag

.noexc101:                                        ; preds = %bb.ae
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !103
  br label %bb.af

bb.af:                                            ; preds = %.noexc101, %bb.ad
  %i.du = phi i32 [ %.pre2.i, %.noexc101 ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.dv = phi ptr [ %.pre.i, %.noexc101 ], [ %i.dn, %bb.ad ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dx = zext i32 %i.du to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dx
  store i32 %i.dj, ptr %i.dy, align 4, !tbaa !103
  %i.dz = add i32 %i.du, 1
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !103
  %i.ea = load i32, ptr %i.dc, align 8, !tbaa !390
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dc, align 8, !tbaa !390
  invoke void @_ZN8uint_set8iterator4scanEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZN8uint_set8iteratorppEv.exit unwind label %.loopexit254

bb.ag:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit254, %.loopexit.split-lp, %bb.ag, %bb.ab
  %.pn82.pn = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %i.ec, %bb.ag ], [ %lpad.loopexit, %.loopexit254 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.body

bb.ai:                                            ; preds = %bb.aa
  %i.ed = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !103 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eg ; 2 uses
  %.not.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.ej = shl nuw nsw i64 %i.ei, 1
  %i.ek = xor i64 %i.ej, 126
  invoke void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.eh, i64 noundef %i.ek)
          to label %.noexc103 unwind label %bb.ak

.noexc103:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.eh)
          to label %_ZSt4sortIPjEvT_S1_.exit unwind label %bb.ak

_ZSt4sortIPjEvT_S1_.exit:                         ; preds = %.noexc103
  %.pre = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.el = icmp eq ptr %.pre, null
  br i1 %i.el, label %.critedge.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %bb.ai, %_ZSt4sortIPjEvT_S1_.exit
  %i.em = phi ptr [ %.pre, %_ZSt4sortIPjEvT_S1_.exit ], [ %i.dk, %bb.ai ]
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 8
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

.critedge.preheader:                              ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit, %bb.aa, %_ZSt4sortIPjEvT_S1_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %.critedge

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 4 uses
  %i.et = phi ptr [ %i.em, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %i.ft, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !103
  %i.ew = zext i32 %i.ev to i64
end_hunk_0
