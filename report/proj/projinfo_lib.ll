Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx:bb.a
  %.not.i.i.i324 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i324, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.as, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !101
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !1
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !1
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.j ], [ %i.bf, %bb.k ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.l, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !103

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %._crit_edge.thread
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.bi = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.k
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.m
  %i.bk = load i64, ptr %i.k, align 8, !tbaa !64
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  br label %bb.o

.lr.ph703.peel.next:                              ; preds = %.lr.ph703.preheader._crit_edge, %.lr.ph703.peel.next
  %.sroa.0575.0700 = phi ptr [ %i.bq, %.lr.ph703.peel.next ], [ %i.al, %.lr.ph703.preheader._crit_edge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0575.0700, i64 32
  %putchar305 = call i32 @putchar(i32 32)         ; 0 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef %i.bo) ; 0 uses
  %i.bq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0575.0700) #33 ; 2 uses
  %.not612 = icmp eq ptr %i.bq, %i.ai
  br i1 %.not612, label %._crit_edge704, label %.lr.ph703.peel.next, !llvm.loop !282

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %.pn300 = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ] ; 3 uses
  %.0188 = extractvalue { ptr, i32 } %.pn300, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.br = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.bs = icmp eq i32 %.0188, %i.br
  br i1 %i.bs, label %bb.p, label %bb.gk

bb.p:                                             ; preds = %bb.o
  %.0174 = extractvalue { ptr, i32 } %.pn300, 0
  %i.bt = call ptr @__cxa_begin_catch(ptr %.0174) #31 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

._crit_edge:                                      ; preds = %bb.b
  %i.bu = ptrtoint ptr %i.f to i64
  %i.bv = ptrtoint ptr %i.d to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp eq i64 %i.bw, 32
  br i1 %i.bx, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %.not = icmp eq i8 %i.bz, 45
  br i1 %.not, label %bb.ak, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 noundef signext 58, i64 noundef 0) #31
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cc, ptr %7, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cd, align 8, !tbaa !67
  store i8 0, ptr %i.cc, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj2io15DatabaseContext6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EEP6pj_ctx(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %1)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %8, align 8, !tbaa !60    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i328 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i328, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336, label %.lr.ph.i.i.i329

.lr.ph.i.i.i329:                                  ; preds = %bb.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332
  %.05.i.i.i330 = phi ptr [ %i.cm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332 ], [ %i.ce, %bb.t ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i330, align 8, !tbaa !63 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i330, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331: ; preds = %.lr.ph.i.i.i329
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !64
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332: ; preds = %.lr.ph.i.i.i329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i331
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i330, i64 32 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.cm, %i.cg
  br i1 %.not.i.i.i333, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334, label %.lr.ph.i.i.i329, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i332
  %.pr.i335 = load ptr, ptr %8, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334, %bb.t
  %i.cn = phi ptr [ %.pr.i335, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i334 ], [ %i.ce, %bb.t ] ; 3 uses
  %.not.i.i1.i337 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i337, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !61
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i336, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ct = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cc
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339
  %i.cv = load i64, ptr %i.cc, align 8, !tbaa !64
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.cx = load ptr, ptr %6, align 8, !tbaa !106
  invoke void @_ZNK5osgeo4proj2io15DatabaseContext14getAuthoritiesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::set.153") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !112 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not605649 = icmp eq ptr %i.cz, %i.da
  br i1 %.not605649, label %._crit_edge654, label %.lr.ph653

._crit_edge654:                                   ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, %bb.v
  %.1169.lcssa = phi i8 [ 1, %bb.v ], [ %.2170, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread ]
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.dc)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit343 unwind label %bb.w

bb.w:                                             ; preds = %._crit_edge654
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #32
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit343: ; preds = %._crit_edge654
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i344 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i344, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348, label %bb.x

bb.x:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit343
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.di = load atomic i64, ptr %i.dh acquire, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 4294967297
  %i.dk = trunc i64 %i.di to i32                  ; 2 uses
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dh, align 8, !tbaa !100
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 0, ptr %i.dl, align 4, !tbaa !101
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #31, !inline_history !1
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #31, !inline_history !1
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348

bb.z:                                             ; preds = %bb.x
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i345 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i345, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = add nsw i32 %i.dk, -1
  store i32 %i.dt, ptr %i.dh, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i346

bb.ab:                                            ; preds = %bb.z
  %i.du = atomicrmw volatile add ptr %i.dh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i346

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i346: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i347 = phi i32 [ %i.dk, %bb.aa ], [ %i.du, %bb.ab ]
  %i.dv = icmp eq i32 %.0.i.i.i.i.i347, 1
  br i1 %i.dv, label %bb.ac, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348, !prof !103

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i346
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #31
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit343, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i346, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ak

bb.ad:                                            ; preds = %bb.s
  %i.dw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.dx = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cc
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %bb.ad
  %i.dz = load i64, ptr %i.cc, align 8, !tbaa !64
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ai

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.eb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  br label %bb.ai

.lr.ph653:                                        ; preds = %bb.v, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread
  %.1169651 = phi i8 [ %.2170, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread ], [ 1, %bb.v ] ; 3 uses
  %.sroa.0571.0650 = phi ptr [ %i.eo, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread ], [ %i.cz, %bb.v ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0571.0650, i64 32 ; 2 uses
  %54 = load ptr, ptr %0, align 8, !tbaa !60      ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0571.0650, i64 40
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !67 ; 2 uses
  %i.eh = icmp ult i64 %i.ee, %i.eg
  br i1 %i.eh, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %.lr.ph653
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !63 ; 2 uses
  %i.ej = load ptr, ptr %54, align 8, !tbaa !63
  %bcmp.i = call i32 @bcmp(ptr %i.ei, ptr %i.ej, i64 %i.eg)
  %i.ek = icmp eq i32 %bcmp.i, 0
  br i1 %i.ek, label %bb.af, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread

bb.af:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.el = trunc nuw i8 %.1169651 to i1
  br i1 %i.el, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %putchar299 = call i32 @putchar(i32 32)         ; 0 uses
  %.pre.a = load ptr, ptr %i.ec, align 8, !tbaa !63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.em = phi ptr [ %.pre.a, %bb.ag ], [ %i.ei, %bb.af ]
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef %i.em) ; 0 uses
  br label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.thread: ; preds = %.lr.ph653, %bb.ah, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %.2170 = phi i8 [ 0, %bb.ah ], [ %.1169651, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit ], [ %.1169651, %.lr.ph653 ] ; 2 uses
  %i.eo = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0571.0650) #33 ; 2 uses
  %.not605 = icmp eq ptr %i.eo, %i.da
  br i1 %.not605, label %._crit_edge654, label %.lr.ph653

bb.ai:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ae ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ] ; 3 uses
  %.1189 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ep = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.eq = icmp eq i32 %.1189, %i.ep
  br i1 %i.eq, label %bb.aj, label %bb.gk

bb.aj:                                            ; preds = %bb.ai
  %.1175 = extractvalue { ptr, i32 } %.pn, 0
  %i.er = call ptr @__cxa_begin_catch(ptr %.1175) #31 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.q, %bb.r, %bb.aj, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348
  %.3171 = phi i8 [ %.1169.lcssa, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit348 ], [ 1, %bb.aj ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %._crit_edge ] ; 3 uses
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !77  ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -32 ; 8 uses
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !67 ; 8 uses
  %i.ew = icmp eq i64 %i.ev, 2                    ; 2 uses
  br i1 %i.ew, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.ey = load i16, ptr %i.ex, align 1
  %i.ez = icmp ne i16 %i.ey, 27437
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.ak
  %i.fc = load ptr, ptr %0, align 8, !tbaa !60    ; 5 uses
  %i.fd = ptrtoint ptr %i.es to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 5 uses
  %i.fg = icmp ugt i64 %i.ff, 32                  ; 4 uses
  br i1 %i.fg, label %bb.al, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585"

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i
  %i.fh = getelementptr i8, ptr %i.fc, i64 %i.ff  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -56
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !67
  %i.fk = icmp eq i64 %i.fj, 2
  br i1 %i.fk, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit": ; preds = %bb.al
  %i.fl = getelementptr i8, ptr %i.fh, i64 -64
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !63
  %i.fn = load i16, ptr %i.fm, align 1
  %i.fo = icmp ne i16 %i.fn, 27437
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit"
  %puts298 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i, %bb.al, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit"
  br i1 %i.ew, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i354, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i352

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i354: ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585"
  %i.fr = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.fs = load i16, ptr %i.fr, align 1
  %i.ft = icmp ne i16 %i.fs, 28461
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i352

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i352: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i354, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit.thread585"
  br i1 %i.fg, label %bb.am, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587"

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i352
  %i.fw = getelementptr i8, ptr %i.fc, i64 %i.ff  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 -56
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !67
  %i.fz = icmp eq i64 %i.fy, 2
  br i1 %i.fz, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356": ; preds = %bb.am
  %i.ga = getelementptr i8, ptr %i.fw, i64 -64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !63
  %i.gc = load i16, ptr %i.gb, align 1
  %i.gd = icmp ne i16 %i.gc, 28461
  %i.ge = zext i1 %i.gd to i32
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread": ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356"
  %i.gg = icmp ult i64 %i.ev, 5
  br i1 %i.gg, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread"
  %i.gh = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 1
  %i.gj = xor i32 %i.gi, 827607895
  %i.gk = getelementptr i8, ptr %i.gh, i64 4
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = xor i32 %i.gm, 58
  %i.go = or i32 %i.gj, %i.gn
  %i.gp = icmp ne i32 %i.go, 0
  %i.gq = zext i1 %i.gp to i32
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.an, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361

bb.an:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %puts297 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361: ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.gs = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = xor i32 %i.gt, 844385111
  %i.gv = getelementptr i8, ptr %i.gs, i64 4
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32
  %i.gy = xor i32 %i.gx, 58
  %i.gz = or i32 %i.gu, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.ao, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361.thread

bb.ao:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361
  %puts296 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361.thread: ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread", %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i354, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit361
  %puts295 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i352, %bb.am, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356"
  %i.hd = icmp eq i64 %i.ev, 14
  br i1 %i.hd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i364, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i362

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i364: ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587"
  %i.he = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 1
  %i.hg = xor i64 %i.hf, 7019269456080874797
  %i.hh = getelementptr i8, ptr %i.he, i64 6
  %i.hi = load i64, ptr %i.hh, align 1
  %i.hj = xor i64 %i.hi, 8391162080374055273
  %i.hk = or i64 %i.hg, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i362

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i362: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i364, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit356.thread587"
  br i1 %i.fg, label %bb.ap, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591"

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i362
  %i.ho = getelementptr i8, ptr %i.fc, i64 %i.ff  ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -56
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !67
  %i.hr = icmp eq i64 %i.hq, 14
  br i1 %i.hr, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366": ; preds = %bb.ap
  %i.hs = getelementptr i8, ptr %i.ho, i64 -64
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !63 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 1
  %i.hv = xor i64 %i.hu, 7019269456080874797
  %i.hw = getelementptr i8, ptr %i.ht, i64 6
  %i.hx = load i64, ptr %i.hw, align 1
  %i.hy = xor i64 %i.hx, 8391162080374055273
  %i.hz = or i64 %i.hv, %i.hy
  %i.ia = icmp ne i64 %i.hz, 0
  %i.ib = zext i1 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread", label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591"

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i364, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366"
  %puts294 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i362, %bb.ap, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366"
  %i.id = icmp eq i64 %i.ev, 16
  br i1 %i.id, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i369, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i367

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i369: ; preds = %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591"
  %i.ie = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.if = load i128, ptr %i.ie, align 1
  %i.ig = icmp ne i128 %i.if, 134851518356232670814846423500882914605
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit371.thread", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i367

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i367: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i369, %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit366.thread591"
  br i1 %i.fg, label %bb.aq, label %"_ZZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctxENK3$_0clEPKc.exit371.thread593"

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i367
  %i.ij = getelementptr i8, ptr %i.fc, i64 %i.ff  ; 2 uses
end_hunk_0
