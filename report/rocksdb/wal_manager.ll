Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wal_manager?download=true
inline.NumInlined: 1462
inline.NumDeleted: 630
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb10WalManager17GetSortedWalFilesERSt6vectorISt10unique_ptrINS_7WalFileESt14default_deleteIS3_EESaIS6_EEbb:bb.a
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #23, !inline_history !221
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !98
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !74, !nonnull !75, !align !76
  invoke void @_ZN7rocksdb17ArchivalDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ac = load i8, ptr %8, align 8, !tbaa !91     ; 2 uses
  switch i8 %i.ac, label %bb.l [
    i8 0, label %bb.f
    i8 1, label %bb.n
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN7rocksdb10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt10unique_ptrINS_7WalFileESt14default_deleteISB_EESaISE_EENS_11WalFileTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i1 noundef zeroext %3)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %9, align 8, !tbaa !93     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ag = load <4 x i8>, ptr %i.ae, align 1, !tbaa !27 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !27
  store i8 0, ptr %i.af, align 4, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27  ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !92
  %.not.i.i.i.i.i37 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i37, label %_ZN7rocksdb6StatusaSEOS0_.exit39.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit39

_ZN7rocksdb6StatusaSEOS0_.exit39:                 ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  %.pr = load ptr, ptr %i.aj, align 8, !tbaa !92  ; 2 uses
  %.not.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i40, label %_ZN7rocksdb6StatusaSEOS0_.exit39.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i41

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i41: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit39
  call void @_ZdaPv(ptr noundef nonnull %.pr) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit39.thread

_ZN7rocksdb6StatusaSEOS0_.exit39.thread:          ; preds = %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i41, %_ZN7rocksdb6StatusaSEOS0_.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.al = icmp eq i8 %i.ad, 0
  br i1 %i.al, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit39.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ad, ptr %0, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.ag, ptr %i.an, align 1, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ai, ptr %i.ao, align 1, !tbaa !94
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !92
  br label %_ZN7rocksdb6StatusC2EOS0_.exit46

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73

bb.j:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit71

bb.k:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ag

bb.l:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i47 = icmp eq ptr %0, %8
  br i1 %.not.i.i47, label %_ZN7rocksdb6StatusC2EOS0_.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.ac, ptr %0, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aw = load <4 x i8>, ptr %i.at, align 1, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !27
  store <4 x i8> %i.aw, ptr %i.au, align 1, !tbaa !27
  store i8 0, ptr %i.av, align 4, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !94
  store i8 0, ptr %i.ax, align 1, !tbaa !94
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92
  store ptr null, ptr %i.ba, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !92
  br label %_ZN7rocksdb6StatusC2EOS0_.exit46

bb.n:                                             ; preds = %bb.e, %_ZN7rocksdb6StatusaSEOS0_.exit39.thread
  %.sroa.4087.0 = phi ptr [ %i.ak, %_ZN7rocksdb6StatusaSEOS0_.exit39.thread ], [ %i.i, %bb.e ] ; 4 uses
  %.sroa.34.0 = phi i8 [ %i.ai, %_ZN7rocksdb6StatusaSEOS0_.exit39.thread ], [ %i.g, %bb.e ]
  %i.bc = phi <4 x i8> [ %i.ag, %_ZN7rocksdb6StatusaSEOS0_.exit39.thread ], [ %i.e, %bb.e ]
  %i.bd = load ptr, ptr %2, align 8, !tbaa !104   ; 3 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !104 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef i64 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %1, align 8, !tbaa !105, !nonnull !75, !align !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull @.str.40, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 32), i64 noundef %i.bl)
          to label %._crit_edge90 unwind label %bb.q

._crit_edge90:                                    ; preds = %bb.p
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !98
  %.pre91 = load ptr, ptr %2, align 8, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, %bb.s, %bb.p, %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %._crit_edge90, %bb.n
  %i.bp = phi ptr [ %i.bd, %bb.n ], [ %.pre91, %._crit_edge90 ]
  %i.bq = phi ptr [ %i.bd, %bb.n ], [ %.pre, %._crit_edge90 ]
  %.0 = phi i64 [ 0, %bb.n ], [ %i.bl, %._crit_edge90 ]
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !98 ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !97    ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = add nsw i64 %i.cb, %i.bu                ; 4 uses
  %i.cd = icmp ugt i64 %i.cc, 1152921504606846975
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #24
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !106
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  %i.ci = ashr exact i64 %i.ch, 3
  %i.cj = icmp ult i64 %i.ci, %i.cc
  br i1 %i.cj, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.ck = shl nuw nsw i64 %i.cc, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #26
          to label %.noexc53 unwind label %bb.q   ; 11 uses

.noexc53:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.cm = load ptr, ptr %2, align 8, !tbaa !97    ; 13 uses
  %11 = ptrtoaddr ptr %i.cm to i64                ; 2 uses
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !98  ; 3 uses
  %12 = ptrtoaddr ptr %i.cn to i64                ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %iter.check

iter.check:                                       ; preds = %.noexc53
  %i.co = add i64 %12, -8
  %i.cp = sub i64 %i.co, %11                      ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cp, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i51.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %12, -8
  %i.ct = sub i64 %i.cs, %11
  %i.cu = and i64 %i.ct, -8
  %i.cv = add i64 %i.cu, 8                        ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cm, i64 %i.cv
  %bound0 = icmp ult ptr %i.cl, %i.cx
  %bound1 = icmp ult ptr %i.cm, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i51.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.cp, 120
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i64 %i.cr, 12
  %n.vec = and i64 %i.cr, 4611686018427387888     ; 4 uses
  %i.cz = shl i64 %n.vec, 3                       ; 2 uses
  %i.da = getelementptr i8, ptr %i.cl, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.cm, i64 %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.dc ; 4 uses
  %next.gep131 = getelementptr i8, ptr %i.cm, i64 %i.dc ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.dd = getelementptr i8, ptr %next.gep131, i64 32
  %i.de = getelementptr i8, ptr %next.gep131, i64 64
  %i.df = getelementptr i8, ptr %next.gep131, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep131, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %wide.load132 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %wide.load133 = load <4 x i64>, ptr %i.de, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %wide.load134 = load <4 x i64>, ptr %i.df, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %i.dg = getelementptr i8, ptr %next.gep, i64 32
  %i.dh = getelementptr i8, ptr %next.gep, i64 64
  %i.di = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !100, !alias.scope !235, !noalias !234
  store <4 x i64> %wide.load132, ptr %i.dg, align 8, !tbaa !100, !alias.scope !235, !noalias !234
  store <4 x i64> %wide.load133, ptr %i.dh, align 8, !tbaa !100, !alias.scope !235, !noalias !234
  store <4 x i64> %wide.load134, ptr %i.di, align 8, !tbaa !100, !alias.scope !235, !noalias !234
  %i.dj = getelementptr i8, ptr %next.gep131, i64 32
  %i.dk = getelementptr i8, ptr %next.gep131, i64 64
  %i.dl = getelementptr i8, ptr %next.gep131, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep131, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  store <4 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  store <4 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  store <4 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i51.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.dn = shl i64 %n.vec136, 3                    ; 2 uses
  %i.do = getelementptr i8, ptr %i.cl, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.cm, i64 %i.dn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %i.dq = shl i64 %index137, 3                    ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.cl, i64 %i.dq
  %next.gep139 = getelementptr i8, ptr %i.cm, i64 %i.dq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %wide.load140 = load <4 x i64>, ptr %next.gep139, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  store <4 x i64> %wide.load140, ptr %next.gep138, align 8, !tbaa !100, !alias.scope !235, !noalias !234
  store <4 x ptr> splat (ptr null), ptr %next.gep139, align 8, !tbaa !100, !alias.scope !234, !noalias !232
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !229

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.cr, %n.vec136
  br i1 %cmp.n142, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i51.preheader

.lr.ph.i.i.i.i51.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cl, %iter.check ], [ %i.cl, %vector.memcheck ], [ %i.da, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cm, %iter.check ], [ %i.cm, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %.lr.ph.i.i.i.i51.preheader, %.lr.ph.i.i.i.i51
  %.012.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i51 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i51.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i51 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i51.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.ds = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !233, !noalias !232
  store i64 %i.ds, ptr %.012.i.i.i.i, align 8, !tbaa !100, !alias.scope !232, !noalias !233
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !233, !noalias !232
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i52 = icmp eq ptr %i.dt, %i.cn
  br i1 %.not.i.i.i.i52, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i51, !llvm.loop !230

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i51, %middle.block, %vec.epilog.middle.block, %.noexc53
  %.not.i8.i = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.dv = load ptr, ptr %i.ce, align 8, !tbaa !106
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.cm to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dy) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.cl, ptr %2, align 8, !tbaa !97
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.bt
  store ptr %i.dz, ptr %i.p, align 8, !tbaa !98
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cc
  store ptr %i.ea, ptr %i.ce, align 8, !tbaa !106
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.t
  %i.eb = icmp eq ptr %i.bx, %i.bw
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  br label %bb.v

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %0, i8 0, i64 6, i1 false)
  store <4 x i8> %i.bc, ptr %i.ee, align 1, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %.sroa.34.0, ptr %i.ef, align 1, !tbaa !94
  store ptr %.sroa.4087.0, ptr %i.ed, align 8, !tbaa !92
  br label %_ZN7rocksdb6StatusC2EOS0_.exit46

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %.sroa.082.086 = phi ptr [ %i.bx, %.lr.ph ], [ %i.fi, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 6 uses
  %i.eg = load ptr, ptr %.sroa.082.086, align 8, !tbaa !100 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i64 %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.el = icmp ugt i64 %i.ek, %.0
  br i1 %i.el, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !98  ; 4 uses
  %i.en = load ptr, ptr %i.ce, align 8, !tbaa !106
  %.not.i.i58 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i58, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eo = load i64, ptr %.sroa.082.086, align 8, !tbaa !100
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !100
  store ptr null, ptr %.sroa.082.086, align 8, !tbaa !100
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ep, ptr %i.p, align 8, !tbaa !98
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.em, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.082.086)
          to label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %bb.w
  %i.er = load ptr, ptr %1, align 8, !tbaa !105, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.es = load ptr, ptr %.sroa.082.086, align 8, !tbaa !100 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !80
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.ex = load ptr, ptr %10, align 8, !tbaa !26
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.42, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 32), ptr noundef %i.ex)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ec
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN7rocksdb10WalManager17GetSortedWalFilesERSt6vectorISt10unique_ptrINS_7WalFileESt14default_deleteIS3_EESaIS6_EEbb:bb.a
  %i.gb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i.i75, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !80
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) #23, !inline_history !231
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, %i.ga
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZN7rocksdb6StatusC2EOS0_.exit
  %.not.i.i1.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !106
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.fy to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gk) #22
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i76 = icmp eq ptr %.sroa.4087.5, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.4087.5) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit78

_ZN7rocksdb6StatusD2Ev.exit78:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73: ; preds = %_ZN7rocksdb6StatusD2Ev.exit71, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %.sroa.4087.4 = phi ptr [ %i.i, %bb.i ], [ %.sroa.4087.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.sroa.4087.3, %_ZN7rocksdb6StatusD2Ev.exit71 ] ; 2 uses
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %.pn28.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn28.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit71 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i.i79 = icmp eq ptr %.sroa.4087.4, null
  br i1 %.not.i.i79, label %_ZN7rocksdb6StatusD2Ev.exit81, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73
  call void @_ZdaPv(ptr noundef nonnull %.sroa.4087.4) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit81

_ZN7rocksdb6StatusD2Ev.exit81:                    ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80
  %.pn28.pn.pn.pn.pn.pn128 = phi { ptr, i32 } [ %i.n, %.thread ], [ %.pn28.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i73 ], [ %.pn28.pn.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80 ]
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn.pn128
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt10unique_ptrINS_7WalFileESt14default_deleteISB_EESaISE_EENS_11WalFileTypeEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::vector.119", align 8   ; 13 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 14 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %8)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %9, align 8, !tbaa !91      ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.j, ptr %0, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.n = load <4 x i8>, ptr %i.m, align 1, !tbaa !27
  store <4 x i8> %i.n, ptr %i.l, align 1, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !94
  store i8 %i.q, ptr %i.o, align 1, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.r, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store ptr null, ptr %i.r, align 8, !tbaa !92
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %i.t)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !92
  %.pre16.i = load ptr, ptr %i.r, align 8, !tbaa !92 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !92
  store ptr %.pre.i, ptr %i.r, align 8, !tbaa !92
  %.not.i.i.i.i.i = icmp eq ptr %.pre16.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i) #22
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !92   ; 2 uses
  %.not.i11.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i11.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #22
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !92   ; 2 uses
  %.not.i12.i = icmp eq ptr %i.v, null
  br i1 %.not.i12.i, label %.body, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.v) #22
  br label %.body

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %.thread.i, %bb.e, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit165

bb.g:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit148

bb.h:                                             ; preds = %bb.bh, %bb.bd, %bb.bc, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !111  ; 2 uses
  %i.aa = load ptr, ptr %8, align 8, !tbaa !112   ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 5                 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !106
  %i.ai = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = icmp ult i64 %i.am, %i.ae
  br i1 %i.an, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak
  %i.as = ashr exact i64 %i.ad, 2
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26
          to label %.noexc73 unwind label %bb.h   ; 12 uses

.noexc73:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.au = load ptr, ptr %3, align 8, !tbaa !97    ; 13 uses
  %15 = ptrtoaddr ptr %i.au to i64                ; 2 uses
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 3 uses
  %16 = ptrtoaddr ptr %i.av to i64                ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %iter.check

iter.check:                                       ; preds = %.noexc73
  %i.aw = add i64 %16, -8
  %i.ax = sub i64 %i.aw, %15                      ; 3 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %16, -8
  %i.bb = sub i64 %i.ba, %15
  %i.bc = and i64 %i.bb, -8
  %i.bd = add i64 %i.bc, 8                        ; 2 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.au, i64 %i.bd
  %bound0 = icmp ult ptr %i.at, %i.bf
  %bound1 = icmp ult ptr %i.au, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check234 = icmp ult i64 %i.ax, 120
  br i1 %min.iters.check234, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.az, 12
  %n.vec = and i64 %i.az, 4611686018427387888     ; 4 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.at, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.au, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bk ; 4 uses
  %next.gep235 = getelementptr i8, ptr %i.au, i64 %i.bk ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.bl = getelementptr i8, ptr %next.gep235, i64 32
  %i.bm = getelementptr i8, ptr %next.gep235, i64 64
  %i.bn = getelementptr i8, ptr %next.gep235, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep235, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %wide.load236 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %wide.load237 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %wide.load238 = load <4 x i64>, ptr %i.bn, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %i.bo = getelementptr i8, ptr %next.gep, i64 32
  %i.bp = getelementptr i8, ptr %next.gep, i64 64
  %i.bq = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !100, !alias.scope !260, !noalias !259
  store <4 x i64> %wide.load236, ptr %i.bo, align 8, !tbaa !100, !alias.scope !260, !noalias !259
  store <4 x i64> %wide.load237, ptr %i.bp, align 8, !tbaa !100, !alias.scope !260, !noalias !259
  store <4 x i64> %wide.load238, ptr %i.bq, align 8, !tbaa !100, !alias.scope !260, !noalias !259
  %i.br = getelementptr i8, ptr %next.gep235, i64 32
  %i.bs = getelementptr i8, ptr %next.gep235, i64 64
  %i.bt = getelementptr i8, ptr %next.gep235, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep235, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  store <4 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec240 = and i64 %i.az, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec240, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.at, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.au, i64 %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %i.by = shl i64 %index241, 3                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.at, i64 %i.by
  %next.gep243 = getelementptr i8, ptr %i.au, i64 %i.by ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %wide.load244 = load <4 x i64>, ptr %next.gep243, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  store <4 x i64> %wide.load244, ptr %next.gep242, align 8, !tbaa !100, !alias.scope !260, !noalias !259
  store <4 x ptr> splat (ptr null), ptr %next.gep243, align 8, !tbaa !100, !alias.scope !259, !noalias !257
  %index.next245 = add nuw i64 %index241, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !243

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n246 = icmp eq i64 %i.az, %n.vec240
  br i1 %cmp.n246, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.at, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ca = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !258, !noalias !257
  store i64 %i.ca, ptr %.012.i.i.i.i, align 8, !tbaa !100, !alias.scope !257, !noalias !258
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !100, !alias.scope !258, !noalias !257
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.av
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !244

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc73
  %.not.i8.i = icmp eq ptr %i.au, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.cd = load ptr, ptr %i.ag, align 8, !tbaa !106
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.au to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cg) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.at, ptr %3, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store ptr %i.ch, ptr %i.ao, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ae
  store ptr %i.ci, ptr %i.ag, align 8, !tbaa !106
  %.pre = load ptr, ptr %8, align 8, !tbaa !113
  %.pre174 = load ptr, ptr %i.y, align 8, !tbaa !113
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.k
  %i.cj = phi ptr [ %i.at, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.ai, %bb.k ]
  %i.ck = phi ptr [ %.pre174, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.z, %bb.k ] ; 2 uses
  %i.cl = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.aa, %bb.k ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ck
  br i1 %i.cm, label %.thread161, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.cp = icmp ne i32 %4, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.not.i = icmp eq ptr %0, %13
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.ba
  %.sroa.0150.0169 = phi ptr [ %i.cl, %.lr.ph ], [ %i.hz, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cz = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0150.0169, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.da = load i32, ptr %i.b, align 4
  %i.db = icmp eq i32 %i.da, 0
  %or.cond = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.o, label %.thread159

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  br i1 %5, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !28
  invoke void @_ZN7rocksdb10WalManager15ReadFirstRecordENS_11WalFileTypeEmPm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, i32 noundef %4, i64 noundef %i.dc, ptr noundef nonnull %i.c)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dd = load i8, ptr %0, align 8, !tbaa !91
  %i.de = icmp eq i8 %i.dd, 0                     ; 3 uses
  %i.df = load i64, ptr %i.c, align 8             ; 2 uses
  %i.dg = icmp ne i64 %i.df, 0                    ; 2 uses
  %.72 = select i1 %i.dg, i32 0, i32 3
  %cond4 = select i1 %i.de, i1 %i.dg, i1 false
  %.050 = select i1 %i.de, i32 %.72, i32 1
  br i1 %i.de, label %bb.t, label %_ZN7rocksdb6StatusD2Ev.exit78

bb.r:                                             ; preds = %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.s:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.t:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !92 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit78
end_hunk_1
