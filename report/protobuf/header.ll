Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/header?download=true
inline.NumInlined: 577
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a

bb.d:                                             ; preds = %_ZN3upb9generator10reflection7Context4EmitESt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.011.083.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.fu, %_ZN3upb9generator10reflection7Context4EmitESt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationE.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.011.083.i.i.i.i.i, align 8, !tbaa !156 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.j, ptr %3, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.j, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false)
  store i64 15, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.l, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.bl = invoke ptr @upb_MessageDef_File(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i)
          to label %_ZNK3upb13MessageDefPtr4fileEv.exit.i.i.i.i.i.i unwind label %bb.r

_ZNK3upb13MessageDefPtr4fileEv.exit.i.i.i.i.i.i:  ; preds = %bb.d
  %i.bm = invoke noundef ptr @upb_FileDef_Name(ptr noundef %i.bl)
          to label %_ZNK3upb10FileDefPtr4nameEv.exit.i.i.i.i.i.i unwind label %bb.r ; 2 uses

_ZNK3upb10FileDefPtr4nameEv.exit.i.i.i.i.i.i:     ; preds = %_ZNK3upb13MessageDefPtr4fileEv.exit.i.i.i.i.i.i
  %i.bn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #15
  invoke void @_ZN3upb9generator20ReflectionFileSymbolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.bn, ptr nonnull %i.bm)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit.i.i.i.i.i.i
  store ptr %i.m, ptr %2, align 8, !tbaa !32
  %i.bo = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.j
  br i1 %i.bp, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !28  ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.bo, ptr %2, align 8, !tbaa !27
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !29
  store i64 %i.bt, ptr %i.m, align 8, !tbaa !29
  %.pre.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.f ]
  store i64 %i.bu, ptr %i.n, align 8, !tbaa !28
  store ptr %i.j, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %i.j, align 8, !tbaa !29
  %i.bv = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.o
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !28 ; 3 uses
  %i.by = add nuw nsw i64 %i.bx, 1
  %i.bz = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.by, i1 false)
  br label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !29
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !28
  store i64 %i.ca, ptr %i.p, align 8, !tbaa !29, !alias.scope !157
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i ]
  %i.cb = phi i64 [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i ]
  store ptr %i.o, ptr %4, align 8, !tbaa !27
  store i64 0, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !28
  store i8 0, ptr %i.o, align 8, !tbaa !29
  store ptr %.sink.i.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !32
  store i64 %i.cb, ptr %i.r, align 8, !tbaa !28, !alias.scope !157
  store i8 0, ptr %i.s, align 8, !tbaa !34, !alias.scope !157
  store ptr %i.u, ptr %i.t, align 8, !tbaa !32
  store i64 0, ptr %i.v, align 8, !tbaa !28
  store i8 0, ptr %i.u, align 8, !tbaa !29
  store i8 0, ptr %i.w, align 8, !tbaa !43
  store i8 0, ptr %i.x, align 8, !tbaa !45
  store ptr %i.z, ptr %5, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, ptr noundef nonnull align 1 dereferenceable(9) @.str.11, i64 9, i1 false)
  store i64 9, ptr %i.aa, align 8, !tbaa !28
  store i8 0, ptr %i.ab, align 1, !tbaa !29
  %i.cc = invoke noundef ptr @upb_MessageDef_FullName(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i)
          to label %_ZNK3upb13MessageDefPtr9full_nameEv.exit.i.i.i.i.i.i unwind label %bb.s ; 4 uses

_ZNK3upb13MessageDefPtr9full_nameEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !32
  %i.cd = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.z
  br i1 %i.ce, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNK3upb13MessageDefPtr9full_nameEv.exit.i.i.i.i.i.i
  %i.cf = load i64, ptr %i.aa, align 8, !tbaa !28 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add nuw nsw i64 %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i.i.i: ; preds = %_ZNK3upb13MessageDefPtr9full_nameEv.exit.i.i.i.i.i.i
  store ptr %i.cd, ptr %i.y, align 8, !tbaa !27
  %i.ci = load i64, ptr %i.z, align 8, !tbaa !29
  store i64 %i.ci, ptr %i.ac, align 8, !tbaa !29
  %.pre104.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i.i.i, %bb.h
  %i.cj = phi i64 [ %.pre104.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i.i.i ], [ %i.cf, %bb.h ]
  store i64 %i.cj, ptr %i.ad, align 8, !tbaa !28
  store ptr %i.z, ptr %5, align 8, !tbaa !27
  store i64 0, ptr %i.aa, align 8, !tbaa !28
  store i8 0, ptr %i.z, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.af, ptr %1, align 8, !tbaa !32
  %i.ck = icmp eq ptr %i.cc, null
  br i1 %i.ck, label %.noexc.i88.i.i.i.i.i.i, label %bb.i

.noexc.i88.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc89.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89.i.i.i.i.i.i:                             ; preds = %.noexc.i88.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i42.i.i.i.i.i.i
  %i.cl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !60
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc90.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc90.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.cn, ptr %1, align 8, !tbaa !27
  %i.co = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.co, ptr %i.af, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc90.i.i.i.i.i.i, %bb.i
  %i.cp = phi ptr [ %i.cn, %.noexc90.i.i.i.i.i.i ], [ %i.af, %bb.i ] ; 2 uses
  switch i64 %i.cl, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cq = load i8, ptr %i.cc, align 1, !tbaa !29
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !29
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 1 %i.cc, i64 %i.cl, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  store i64 %i.cr, ptr %i.ag, align 8, !tbaa !28
  %i.cs = load ptr, ptr %1, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !32, !alias.scope !158
  %i.cu = load ptr, ptr %1, align 8, !tbaa !27, !noalias !158 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.af
  br i1 %i.cv, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cw = load i64, ptr %i.ag, align 8, !tbaa !28, !noalias !158 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.cy, i1 false)
  br label %.noexc.i44.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %i.cu, ptr %i.ae, align 8, !tbaa !27, !alias.scope !158
  %i.cz = load i64, ptr %i.af, align 8, !tbaa !29, !noalias !158
  store i64 %i.cz, ptr %i.ah, align 8, !tbaa !29, !alias.scope !158
  %.pre.i.i87.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !28, !noalias !158
  br label %.noexc.i44.i.i.i.i.i.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.noexc.i88.i.i.i.i.i.i
  %lpad.loopexit.split-lp46 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %i.y, align 8, !tbaa !27  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ac
  br i1 %i.db, label %.body.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dc = load i64, ptr %i.ac, align 8, !tbaa !29
  %9 = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %9) #16
  br label %.body.i.i.i.i.i.i

.noexc.i44.i.i.i.i.i.i:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.dd = phi i64 [ %i.cw, %bb.m ], [ %.pre.i.i87.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.dd, ptr %i.ai, align 8, !tbaa !28, !alias.scope !158
  store i8 0, ptr %i.aj, align 8, !tbaa !34, !alias.scope !158
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !32
  store i64 0, ptr %i.am, align 8, !tbaa !28
  store i8 0, ptr %i.al, align 8, !tbaa !29
  store i8 0, ptr %i.an, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i8 0, ptr %i.ao, align 8, !tbaa !45
  store ptr %i.aq, ptr %6, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 18, ptr %i.b, align 8, !tbaa !60
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.n unwind label %bb.t       ; 2 uses

bb.n:                                             ; preds = %.noexc.i44.i.i.i.i.i.i
  store ptr %i.de, ptr %6, align 8, !tbaa !27
  %i.df = load i64, ptr %i.b, align 8, !tbaa !60  ; 3 uses
  store i64 %i.df, ptr %i.aq, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.de, ptr noundef nonnull align 1 dereferenceable(18) @.str.12, i64 18, i1 false)
  store i64 %i.df, ptr %i.ar, align 8, !tbaa !28
  %i.dg = load ptr, ptr %6, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 0, ptr %i.dh, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.di = invoke noundef ptr @upb_MessageDef_FullName(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i)
          to label %_ZNK3upb13MessageDefPtr9full_nameEv.exit48.i.i.i.i.i.i unwind label %bb.u ; 2 uses

_ZNK3upb13MessageDefPtr9full_nameEv.exit48.i.i.i.i.i.i: ; preds = %bb.n
  %i.dj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.di) #15
  invoke void @_ZN3upb9generator26ReflectionGetMessageSymbolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.dj, ptr nonnull %i.di)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %_ZNK3upb13MessageDefPtr9full_nameEv.exit48.i.i.i.i.i.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !32
  %i.dk = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aq
  br i1 %i.dl, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dm = load i64, ptr %i.ar, align 8, !tbaa !28 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i: ; preds = %bb.o
  store ptr %i.dk, ptr %i.ap, align 8, !tbaa !27
  %i.dp = load i64, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.dp, ptr %i.as, align 8, !tbaa !29
  %.pre105.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i, %bb.p
  %i.dq = phi i64 [ %.pre105.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i.i.i.i.i ], [ %i.dm, %bb.p ]
  store i64 %i.dq, ptr %i.at, align 8, !tbaa !28
  store ptr %i.aq, ptr %6, align 8, !tbaa !27
  store i64 0, ptr %i.ar, align 8, !tbaa !28
  store i8 0, ptr %i.aq, align 8, !tbaa !29
  %i.dr = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.au
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i
  %i.dt = load i64, ptr %.phi.trans.insert.i.i53.i.i.i.i.i.i, align 8, !tbaa !28 ; 3 uses
  %i.du = add nuw nsw i64 %i.dt, 1
  %i.dv = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.du, i1 false)
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i51.i.i.i.i.i.i
  %i.dw = load i64, ptr %i.au, align 8, !tbaa !29
  %.pre.i.i54.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i53.i.i.i.i.i.i, align 8, !tbaa !28
  store i64 %i.dw, ptr %i.av, align 8, !tbaa !29, !alias.scope !159
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i
  %.sink.i55.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i ]
  %i.dx = phi i64 [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i56.i.i.i.i.i.i ], [ %.pre.i.i54.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i52.i.i.i.i.i.i ]
  store ptr %i.au, ptr %7, align 8, !tbaa !27
  store i64 0, ptr %.phi.trans.insert.i.i53.i.i.i.i.i.i, align 8, !tbaa !28
  store i8 0, ptr %i.au, align 8, !tbaa !29
  store ptr %.sink.i55.i.i.i.i.i.i, ptr %i.aw, align 8, !tbaa !32
  store i64 %i.dx, ptr %i.ax, align 8, !tbaa !28, !alias.scope !159
  store i8 0, ptr %i.ay, align 8, !tbaa !34, !alias.scope !159
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !32
  store i64 0, ptr %i.bb, align 8, !tbaa !28
  store i8 0, ptr %i.ba, align 8, !tbaa !29
  store i8 0, ptr %i.bc, align 8, !tbaa !43
  store i8 0, ptr %i.bd, align 8, !tbaa !45
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.be, ptr nonnull %2, i64 3, i64 222, ptr nonnull @.str.13)
          to label %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i.i.i.i.i.i unwind label %bb.v

_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ap) #15
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.y) #15
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #15
  %i.dy = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.au
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i: ; preds = %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i.i.i.i.i.i
  %i.ea = load i64, ptr %i.au, align 8, !tbaa !29
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN3upb9generator10reflection7Context4EmitEN4absl12lts_202505124SpanIKN6google8protobuf2io7Printer3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS9_14SourceLocationE.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ec = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.aq
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ee = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i.i.i
  %i.eg = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.z
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i
  %i.ei = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i.i.i.i.i
  %i.ek = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.o
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i
  %i.em = load i64, ptr %i.o, align 8, !tbaa !29
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.eo = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.j
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i
  %i.eq = load i64, ptr %i.j, align 8, !tbaa !29
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNK3upb10FileDefPtr4nameEv.exit.i.i.i.i.i.i, %_ZNK3upb13MessageDefPtr4fileEv.exit.i.i.i.i.i.i, %bb.d
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.g
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.t:                                             ; preds = %.noexc.i44.i.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZNK3upb13MessageDefPtr9full_nameEv.exit48.i.i.i.i.i.i, %bb.n
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ap) #15
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.y) #15
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #15
  %i.ex = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.au
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i: ; preds = %bb.v
  %i.ez = load i64, ptr %i.au, align 8, !tbaa !29
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i, %bb.u
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ev, %bb.u ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i ], [ %i.ew, %bb.v ] ; 2 uses
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.u ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i.i.i.i.i.i ], [ true, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.fb = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.aq
  br i1 %i.fc, label %.body.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i
  %10 = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.fd = add i64 %10, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fd) #16
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a, %bb.t, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi ptr [ %i.y, %bb.s ], [ %i.ap, %bb.t ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ], [ %i.y, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.et, %bb.s ], [ %i.eu, %bb.t ], [ %lpad.loopexit.split-lp46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %.pn.pn.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ], [ %lpad.loopexit.split-lp46, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i.i.i = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i.i.i.i.i.a ], [ false, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.1.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i.i.i.i.i ] ; 2 uses
  %i.fe = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.z
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i
  %i.fg = load i64, ptr %i.z, align 8, !tbaa !29
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i.i.i.i.i.i
  %i.fi = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.o
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i
  %i.fk = load i64, ptr %i.o, align 8, !tbaa !29
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i, %bb.r
  %.324.i.i.i.i.i.i = phi ptr [ %2, %bb.r ], [ %.021.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.es, %bb.r ], [ %.pn.pn.pn.pn.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.pn.pn.pn.pn.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ]
  %.6.i.i.i.i.i.i = phi i1 [ false, %bb.r ], [ %.3.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i.i.i.i.i.i ], [ %.3.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.fm = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.j
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i
  %i.fo = load i64, ptr %i.j, align 8, !tbaa !29
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i.i.i.i.i.i
  %i.fq = icmp eq ptr %2, %.324.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %.6.i.i.i.i.i.i, i1 true, i1 %i.fq
  br i1 %or.cond.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.fr = phi ptr [ %i.fs, %.preheader.i.i.i.i.i.i ], [ %.324.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i ]
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.fs) #15
  %i.ft = icmp eq ptr %i.fs, %2
  br i1 %i.ft, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.be, ptr null, i64 0, i64 1, ptr nonnull @.str.10)
          to label %_ZN3upb9generator10reflection7Context4EmitESt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationE.exit.i.i.i.i.i unwind label %bb.w

_ZN3upb9generator10reflection7Context4EmitESt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationE.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.011.083.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, %i.i
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %bb.d

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.i.i.i.i.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.w, %.loopexit.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fv, %bb.w ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %i.fw = load ptr, ptr %8, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i8.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i8.i.i.i.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit9.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.body.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !154
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #16
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit9.i.i.i.i.i

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit9.i.i.i.i.i: ; preds = %bb.x, %.body.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS_10FileDefPtrERNS1_7ContextEENK3$_0clEv.exit.i.i.i": ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  store i8 0, ptr %i.c, align 8, !tbaa !146
  br label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS7_10FileDefPtrERNS9_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISQ_T0_DpT1_EESQ_E4typeEOSW_DpOSX_.exit"

"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS7_10FileDefPtrERNS9_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISQ_T0_DpT1_EESQ_E4typeEOSW_DpOSX_.exit": ; preds = %bb.a, %"_ZZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS_10FileDefPtrERNS1_7ContextEENK3$_0clEv.exit.i.i.i"
  %.0.i.i.i = xor i1 %i.e, true
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 !guid !160 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS6_10FileDefPtrERNS8_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS4_5Rank2EEUlvE_", ptr %0, align 8, !tbaa !162
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !73
  store ptr %.val, ptr %0, align 8, !tbaa !73
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !163
  store ptr %i.a, ptr %0, align 8, !tbaa !73
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !73 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #16
  br label %"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZN3upb9generator10reflection12_GLOBAL__N_114WriteDefHeaderENS8_10FileDefPtrERNSA_7ContextEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS6_5Rank2EEUlvE_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @_ZN3upb9generator14SortedMessagesENS_10FileDefPtrE(ptr dead_on_unwind writable sret(%"class.std::vector.53") align 8, ptr) local_unnamed_addr #1

declare void @_ZN3upb9generator26ReflectionGetMessageSymbolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #1

declare ptr @upb_MessageDef_File(ptr noundef) local_unnamed_addr #1

declare ptr @upb_MessageDef_FullName(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf2io7PrinterD2Ev(ptr noundef nonnull align 16 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !guid !168 {
bb.a:
  %1 = alloca %class.anon.73, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !164

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 16, !tbaa !169
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !172
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !173
  %i.s = icmp eq i64 %i.r, 0
end_hunk_0
