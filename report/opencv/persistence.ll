Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence?download=true
inline.NumInlined: 2260
inline.NumDeleted: 815
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv11FileStorage4Impl19convertToCollectionEiRNS_8FileNodeE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.av

bb.g:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode4typeEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !198
  %i.r = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.m, i64 noundef %i.o, i64 noundef %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNK2cv8FileNode4typeEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !31
  %i.t = and i8 %i.s, 7
  %i.u = zext nneg i8 %i.t to i32
  br label %_ZNK2cv8FileNode4typeEv.exit

_ZNK2cv8FileNode4typeEv.exit:                     ; preds = %bb.g, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.h
  %.0.i = phi i32 [ %i.u, %bb.h ], [ 0, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ 0, %bb.g ] ; 6 uses
  %i.v = icmp eq i32 %.0.i, %1
  br i1 %i.v, label %bb.at, label %bb.i

bb.i:                                             ; preds = %_ZNK2cv8FileNode4typeEv.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !196    ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.w, null
  br i1 %.not.i.i54, label %_ZN2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit.i55

_ZNK2cv8FileNode3ptrEv.exit.i55:                  ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !197
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !198
  %i.ab = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.w, i64 noundef %i.y, i64 noundef %i.aa) ; 2 uses
  %.not.i56 = icmp eq ptr %i.ab, null
  br i1 %.not.i56, label %_ZNK2cv8FileNode7isNamedEv.exit.thread, label %_ZNK2cv8FileNode7isNamedEv.exit

_ZNK2cv8FileNode7isNamedEv.exit:                  ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i55
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31
  %.fr91 = freeze i8 %i.ac
  %i.ad = and i8 %.fr91, 32
  %.not = icmp eq i8 %i.ad, 0                     ; 2 uses
  %.pr = load ptr, ptr %2, align 8, !tbaa !196    ; 2 uses
  %.not.i58 = icmp eq ptr %.pr, null
  br i1 %.not.i58, label %_ZN2cv8FileNode3ptrEv.exit, label %.split

_ZNK2cv8FileNode7isNamedEv.exit.thread:           ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i55
  %.pr121 = load ptr, ptr %2, align 8, !tbaa !196 ; 2 uses
  %.not.i58122 = icmp eq ptr %.pr121, null
  br i1 %.not.i58122, label %_ZN2cv8FileNode3ptrEv.exit.thread, label %.split.thread

.split.thread:                                    ; preds = %_ZNK2cv8FileNode7isNamedEv.exit.thread
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !197
  %i.af = load i64, ptr %i.z, align 8, !tbaa !198
  %i.ag = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %.pr121, i64 noundef %i.ae, i64 noundef %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  br label %_ZN2cv8FileNode3ptrEv.exit.thread

.split:                                           ; preds = %_ZNK2cv8FileNode7isNamedEv.exit
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !197
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !198
  %i.ak = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %.pr, i64 noundef %i.ai, i64 noundef %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  br i1 %.not, label %_ZN2cv8FileNode3ptrEv.exit.thread, label %bb.j

_ZN2cv8FileNode3ptrEv.exit:                       ; preds = %_ZNK2cv8FileNode7isNamedEv.exit
  br i1 %.not, label %_ZN2cv8FileNode3ptrEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %.split, %_ZN2cv8FileNode3ptrEv.exit
  %i.am = phi ptr [ %i.al, %.split ], [ inttoptr (i64 1 to ptr), %_ZN2cv8FileNode3ptrEv.exit ]
  br label %_ZN2cv8FileNode3ptrEv.exit.thread

_ZN2cv8FileNode3ptrEv.exit.thread:                ; preds = %.split.thread, %_ZNK2cv8FileNode7isNamedEv.exit.thread, %bb.i, %.split, %_ZN2cv8FileNode3ptrEv.exit, %bb.j
  %i.an = phi ptr [ %i.am, %bb.j ], [ inttoptr (i64 1 to ptr), %_ZN2cv8FileNode3ptrEv.exit ], [ %i.al, %.split ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %_ZNK2cv8FileNode7isNamedEv.exit.thread ], [ %i.ah, %.split.thread ]
  %.0.i578588 = phi i1 [ true, %bb.j ], [ false, %_ZN2cv8FileNode3ptrEv.exit ], [ false, %.split ], [ false, %bb.i ], [ false, %_ZNK2cv8FileNode7isNamedEv.exit.thread ], [ false, %.split.thread ] ; 2 uses
  %i.ao = phi i32 [ 4, %bb.j ], [ 0, %_ZN2cv8FileNode3ptrEv.exit ], [ 0, %.split ], [ 0, %bb.i ], [ 0, %_ZNK2cv8FileNode7isNamedEv.exit.thread ], [ 0, %.split.thread ] ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 0, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !42
  store i8 0, ptr %i.ar, align 8, !tbaa !31
  %.not.not = icmp eq i32 %.0.i, 0                ; 2 uses
  br i1 %.not.not, label %bb.al, label %bb.k

bb.k:                                             ; preds = %_ZN2cv8FileNode3ptrEv.exit.thread
  br i1 %i.d, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl19convertToCollectionEiRNS_8FileNodeE, ptr noundef nonnull @.str.11, i32 noundef 1507) #39
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.p:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.p
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.o
  %.pn45 = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.au, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.au

bb.q:                                             ; preds = %bb.k
  switch i32 %.0.i, label %bb.ag [
    i32 1, label %bb.r
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %.val = load i64, ptr %i.aq, align 1
  store i64 %.val, ptr %i.b, align 8, !tbaa !41
  br label %bb.al

bb.s:                                             ; preds = %bb.al
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.t:                                             ; preds = %bb.q
  %.val53 = load double, ptr %i.aq, align 1
  store double %.val53, ptr %i.c, align 8, !tbaa !218
  br label %bb.al

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.bb = load ptr, ptr %2, align 8, !tbaa !196, !noalias !363 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i, label %_ZNK2cv8FileNode3ptrEv.exit.i.i

_ZNK2cv8FileNode3ptrEv.exit.i.i:                  ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !197, !noalias !363
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !198, !noalias !363
  %i.bg = invoke noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.bb, i64 noundef %i.bd, i64 noundef %i.bf)
          to label %.noexc unwind label %bb.af    ; 3 uses

.noexc:                                           ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %.not.i.i62 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i62, label %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31, !noalias !363
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = and i32 %i.bi, 7
  %.not9.i.i = icmp eq i32 %i.bj, 3
  br i1 %.not9.i.i, label %bb.w, label %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i

_ZNK2cv8FileNode3ptrEv.exit.thread.i.i:           ; preds = %bb.v, %.noexc, %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.bk, ptr %8, align 8, !tbaa !40, !alias.scope !363
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !42, !alias.scope !363
  store i8 0, ptr %i.bk, align 8, !tbaa !31, !alias.scope !363
  br label %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.w:                                             ; preds = %bb.v
  %i.bm = and i32 %i.bi, 32
  %.not10.i.i = icmp eq i32 %i.bm, 0
  %12 = select i1 %.not10.i.i, i64 1, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %12 ; 2 uses
  %.val.i.i = load i32, ptr %i.bn, align 1, !noalias !363
  %i.bo = zext i32 %.val.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bq = add nsw i64 %i.bo, -1                   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.br, ptr %8, align 8, !tbaa !40, !alias.scope !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !363
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !41, !noalias !363
  %i.bs = icmp ugt i64 %i.bq, 15
  br i1 %i.bs, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.w
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc63 unwind label %bb.af  ; 2 uses

.noexc63:                                         ; preds = %.noexc.i.i.i
  store ptr %i.bt, ptr %8, align 8, !tbaa !37, !alias.scope !363
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !363
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !31, !alias.scope !363
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc63, %bb.w
  %i.bv = phi ptr [ %i.bt, %.noexc63 ], [ %i.br, %bb.w ] ; 2 uses
  switch i64 %i.bq, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !31
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !31
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.bp, i64 %i.bq, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !363 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !42, !alias.scope !363
  %i.bz = load ptr, ptr %8, align 8, !tbaa !37, !alias.scope !363
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !363
  br label %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.z, %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i
  %i.cb = load ptr, ptr %5, align 8, !tbaa !37    ; 6 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  %i.cd = load ptr, ptr %8, align 8, !tbaa !37    ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce                ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.cf, label %bb.aa, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.cf, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !42 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  switch i64 %i.ch, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !31
  store i8 %i.cj, ptr %i.cb, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  store i64 %i.ck, ptr %i.as, align 8, !tbaa !42
  %i.cl = load ptr, ptr %5, align 8, !tbaa !37
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cd, ptr %5, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.co = load <2 x i64>, ptr %i.cn, align 8, !tbaa !31
  store <2 x i64> %i.co, ptr %i.as, align 8, !tbaa !31
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cp = load i64, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.cd, ptr %5, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cr = load <2 x i64>, ptr %i.cq, align 8, !tbaa !31
  store <2 x i64> %i.cr, ptr %i.as, align 8, !tbaa !31
  %.not.i64 = icmp eq ptr %i.cb, null
  br i1 %.not.i64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cb, ptr %8, align 8, !tbaa !37
  store i64 %i.cp, ptr %i.ce, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ce, ptr %8, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ad, %bb.ae
  %i.cs = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cb, %bb.ad ], [ %i.ce, %bb.ae ]
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !42
  store i8 0, ptr %i.cs, align 1, !tbaa !31
  %i.cu = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.al

bb.af:                                            ; preds = %.noexc.i.i.i, %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.au

bb.ag:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.86, i32 noundef %.0.i)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv11FileStorage4Impl19convertToCollectionEiRNS_8FileNodeE, ptr noundef nonnull @.str.11, i32 noundef 1518) #39
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.ak:                                            ; preds = %bb.ah
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ak
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.aj
  %.pn47 = phi { ptr, i32 } [ %i.da, %bb.aj ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.db, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.au

bb.al:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.t, %_ZN2cv8FileNode3ptrEv.exit.thread
  %i.dh = or disjoint i32 %i.ao, 9
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = invoke noundef ptr @_ZN2cv11FileStorage4Impl16reserveNodeSpaceERNS_8FileNodeEm(ptr noundef nonnull align 8 dereferenceable(700) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.di)
          to label %bb.am unwind label %bb.s      ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.dk = select i1 %.0.i578588, i32 32, i32 0
  %i.dl = or disjoint i32 %i.dk, %1
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !31
  %spec.select.v = select i1 %.0.i578588, i64 5, i64 1
  %spec.select = getelementptr inbounds nuw i8, ptr %i.dj, i64 %spec.select.v ; 2 uses
  store i32 4, ptr %spec.select, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  store i32 0, ptr %i.dn, align 1
  br i1 %.not.not, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.do, ptr %10, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !42
  store i8 0, ptr %i.do, align 8, !tbaa !31
  switch i32 %.0.i, label %default.unreachable [
    i32 1, label %bb.ap
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm:bb.a
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.al, ptr %i.b, align 8, !tbaa !185
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !42
  store i8 0, ptr %i.g, align 8, !tbaa !31
  br label %bb.c

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.j = load i32, ptr %i.i, align 1
  %i.k = sext i32 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !196
  tail call void @_ZNK2cv11FileStorage4Impl7getNameB5cxx11Em(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(700) %i.l, i64 noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv8FileNode3ptrEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK2cv8FileNode3ptrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN2cv8FileNode17isEmptyCollectionEi(i32 noundef %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = and i32 %0, 16
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv8FileNode6isNoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode4typeEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK2cv8FileNode4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 0
  br label %_ZNK2cv8FileNode4typeEv.exit

_ZNK2cv8FileNode4typeEv.exit:                     ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ true, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv8FileNode5isIntEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode4typeEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK2cv8FileNode4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 1
  br label %_ZNK2cv8FileNode4typeEv.exit

_ZNK2cv8FileNode4typeEv.exit:                     ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ false, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv8FileNode6isRealEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode4typeEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK2cv8FileNode4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 2
  br label %_ZNK2cv8FileNode4typeEv.exit

_ZNK2cv8FileNode4typeEv.exit:                     ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ false, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv8FileNode8isStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode4typeEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK2cv8FileNode4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = and i8 %i.g, 7
  %i.i = icmp eq i8 %i.h, 3
  br label %_ZNK2cv8FileNode4typeEv.exit

_ZNK2cv8FileNode4typeEv.exit:                     ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b
  %.0.i = phi i1 [ %i.i, %bb.b ], [ false, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK2cv8FileNodecviEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12 = icmp eq i32 %i.j, 0
  %1 = select i1 %.not12, i64 1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.k, align 1
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val13 = load double, ptr %i.k, align 1
  %i.l = insertelement <2 x double> poison, double %.val13, i64 0
  %i.m = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.l)
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %.1 = phi i32 [ 0, %_ZNK2cv8FileNode3ptrEv.exit ], [ %.val, %bb.c ], [ %i.m, %bb.d ], [ 2147483647, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2cv8FileNodecvlEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12 = icmp eq i32 %i.j, 0
  %1 = select i1 %.not12, i64 1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.k, align 1
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val13 = load double, ptr %i.k, align 1
  %i.l = insertelement <2 x double> poison, double %.val13, i64 0
  %i.m = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.l)
  %i.n = sext i32 %i.m to i64
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %.1 = phi i64 [ 0, %_ZNK2cv8FileNode3ptrEv.exit ], [ %.val, %bb.c ], [ %i.n, %bb.d ], [ 2147483647, %bb.b ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK2cv8FileNodecvfEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12 = icmp eq i32 %i.j, 0
  %1 = select i1 %.not12, i64 1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.k, align 1
  %i.l = sitofp i64 %.val to float
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val13 = load double, ptr %i.k, align 1
  %i.m = fptrunc double %.val13 to float
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %.1 = phi float [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit ], [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ f0x7F7FFFFF, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK2cv8FileNodecvdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12 = icmp eq i32 %i.j, 0
  %1 = select i1 %.not12, i64 1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.k, align 1
  %i.l = sitofp i64 %.val to double
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

bb.d:                                             ; preds = %bb.b
  %.val13 = load double, ptr %i.k, align 1
  br label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %.1 = phi double [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit ], [ %i.l, %bb.c ], [ %.val13, %bb.d ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK2cv8FileNode4realEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNodecvdEv.exit, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !198
  %i.f = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK2cv8FileNodecvdEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !31
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 7
  %i.j = and i32 %i.h, 32
  %.not12.i = icmp eq i32 %i.j, 0
  %1 = select i1 %.not12.i, i64 1, i64 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  switch i32 %i.i, label %_ZNK2cv8FileNodecvdEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.k, align 1
  %i.l = sitofp i64 %.val.i to double
  br label %_ZNK2cv8FileNodecvdEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.k, align 1
  br label %_ZNK2cv8FileNodecvdEv.exit

_ZNK2cv8FileNodecvdEv.exit:                       ; preds = %bb.a, %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi double [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %i.l, %bb.c ], [ %.val13.i, %bb.d ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.1.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode6stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit

_ZNK2cv8FileNode3ptrEv.exit:                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.b, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNK2cv8FileNode3ptrEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %.not9 = icmp eq i32 %i.j, 3
  br i1 %.not9, label %bb.c, label %_ZNK2cv8FileNode3ptrEv.exit.thread

_ZNK2cv8FileNode3ptrEv.exit.thread:               ; preds = %bb.a, %bb.b, %_ZNK2cv8FileNode3ptrEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !42
  store i8 0, ptr %i.k, align 8, !tbaa !31
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.i, 32
  %.not10 = icmp eq i32 %i.m, 0
  %2 = select i1 %.not10, i64 1, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %2 ; 2 uses
  %.val = load i32, ptr %i.n, align 1
  %i.o = zext i32 %.val to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.q = add nsw i64 %i.o, -1                     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 %i.q, ptr %i.a, align 8, !tbaa !41
  %i.s = icmp ugt i64 %i.q, 15
  br i1 %i.s, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !37
  %i.u = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.u, ptr %i.r, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.r, %bb.c ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !31
  store i8 %i.w, ptr %i.v, align 1, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = load ptr, ptr %0, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2cv8FileNode3ptrEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode3matEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #38
  invoke void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #38
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

declare void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8FileNode7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %4 = alloca %"class.cv::FileNodeIterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZN2cv16FileNodeIteratorC1ERKNS_8FileNodeEb(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false)
  %i.a = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::FileNode", align 8     ; 6 uses
  %i.a = alloca [256 x i32], align 16             ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.cv::FileNode", align 8     ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !205
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.cv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !201
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.cv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.h = load ptr, ptr %1, align 8, !tbaa !37
  %i.i = call noundef i32 @_ZN2cv2fs12decodeFormatEPKcPii(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 128) ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !37
  %i.k = call noundef i32 @_ZN2cv2fs14calcStructSizeEPKci(ptr noundef %i.j, i32 noundef 0)
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = urem i64 %3, %i.l
  %i.n = udiv i64 %3, %i.l
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.118, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm, ptr noundef nonnull @.str.11, i32 noundef 2708) #39
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %17, align 8, !tbaa !37    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !31
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.cu

bb.i:                                             ; preds = %bb.c
  %.not98247 = icmp ult i64 %3, %i.l
  br i1 %.not98247, label %._crit_edge250.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.w = icmp sgt i32 %i.i, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge250.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge246
  %.095249 = phi ptr [ %i.ag, %._crit_edge246 ], [ %2, %.preheader.preheader ] ; 3 uses
  %.096248 = phi i64 [ %i.af, %._crit_edge246 ], [ %i.n, %.preheader.preheader ]
  %i.ae = ptrtoint ptr %.095249 to i64
  br label %bb.j

._crit_edge246:                                   ; preds = %._crit_edge
  %i.af = add i64 %.096248, -1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.095249, i64 %i.l
  %.not98 = icmp eq i64 %i.af, 0
  br i1 %.not98, label %._crit_edge250.split, label %.preheader, !llvm.loop !442

bb.j:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.084243 = phi i64 [ 0, %.preheader ], [ %i.bg, %._crit_edge ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38 ; 4 uses
  %i.ak = lshr i32 %i.aj, 5
  %i.al = and i32 %i.ak, 127
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = shl i32 %i.aj, 2
  %i.ao = and i32 %i.an, 124
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 1275511473185297, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 15
  %i.at = mul nuw nsw i32 %i.as, %i.am            ; 3 uses
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = add nsw i64 %.084243, -1
  %i.ax = add nsw i64 %i.aw, %i.av
  %i.ay = sub nsw i32 0, %i.at
  %i.az = sext i32 %i.ay to i64
  %i.ba = and i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.095249, i64 %i.ba ; 2 uses
  %i.bc = icmp sgt i32 %i.au, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bd = icmp eq i32 %i.at, 8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2cv16FileNodeIteratorppEv.exit, %bb.j
  %.082.lcssa = phi ptr [ %i.bb, %bb.j ], [ %i.il, %_ZN2cv16FileNodeIteratorppEv.exit ]
  %i.be = ptrtoint ptr %.082.lcssa to i64
  %i.bf = sub i64 %i.be, %i.ae
  %sext = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond259.not, label %._crit_edge246, label %bb.j, !llvm.loop !443

bb.k:                                             ; preds = %.lr.ph, %_ZN2cv16FileNodeIteratorppEv.exit
  %.0242 = phi i32 [ 0, %.lr.ph ], [ %i.im, %_ZN2cv16FileNodeIteratorppEv.exit ]
  %.082241 = phi ptr [ %i.bb, %.lr.ph ], [ %i.il, %_ZN2cv16FileNodeIteratorppEv.exit ] ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !200, !noalias !447
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !201, !noalias !447
  %i.bj = icmp ult i64 %i.bh, %i.bi
  %i.bk = load ptr, ptr %0, align 8, !noalias !447
  %spec.select.i = select i1 %i.bj, ptr %i.bk, ptr null
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !202, !noalias !447
  %i.bm = load i64, ptr %i.y, align 8, !tbaa !203, !noalias !447
  call void @_ZN2cv8FileNodeC1EPNS_11FileStorage4ImplEmm(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %spec.select.i, i64 noundef %i.bl, i64 noundef %i.bm)
  %i.bn = load ptr, ptr %19, align 8, !tbaa !196  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNK2cv8FileNode6isRealEv.exit.thread, label %_ZNK2cv8FileNode3ptrEv.exit.i.i

_ZNK2cv8FileNode3ptrEv.exit.i.i:                  ; preds = %bb.k
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !197 ; 3 uses
  %i.bp = load i64, ptr %i.aa, align 8, !tbaa !198 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 520
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !135
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !134 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = icmp ult i64 %i.bo, %i.bx
  br i1 %i.by, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv11FileStorage4Impl10getNodePtrEmm, ptr noundef nonnull @.str.11, i32 noundef 1958) #39
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.p:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !31
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %common.resume

bb.q:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 536
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !136
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bo
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.ck = icmp ult i64 %i.bp, %i.cj
  br i1 %i.ck, label %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv11FileStorage4Impl10getNodePtrEmm, ptr noundef nonnull @.str.11, i32 noundef 1959) #39
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

bb.v:                                             ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %14, align 8, !tbaa !37   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i: ; preds = %bb.v
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !31
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i, %bb.u
  %.pn13.i = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.cm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i, %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i189
  %common.resume.op = phi { ptr, i32 } [ %.pn103.pn.pn, %bb.cu ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i181 ], [ %.pn13.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i196 ], [ %.pn13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i189 ]
  resume { ptr, i32 } %common.resume.op

_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit:    ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode6isRealEv.exit.thread, label %_ZNK2cv8FileNode5isIntEv.exit

_ZNK2cv8FileNode5isIntEv.exit:                    ; preds = %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bp ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !31  ; 2 uses
  %i.cw = and i8 %i.cv, 7
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %bb.w, label %_ZNK2cv8FileNode6isRealEv.exit

bb.w:                                             ; preds = %_ZNK2cv8FileNode5isIntEv.exit
  %i.cy = and i8 %i.cv, 32
  %.not12.i = icmp eq i8 %i.cy, 0
  %26 = select i1 %.not12.i, i64 1, i64 5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %26 ; 2 uses
  br i1 %i.bd, label %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit148, label %_ZNK2cv8FileNodecviEv.exit

_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit148: ; preds = %bb.w
  %.val.i = load i64, ptr %i.cz, align 1
  br label %_ZNK2cv8FileNodecvlEv.exit

_ZNK2cv8FileNodecviEv.exit:                       ; preds = %bb.w
  %.val.i114 = load i32, ptr %i.cz, align 1
  %i.da = sext i32 %.val.i114 to i64
  br label %_ZNK2cv8FileNodecvlEv.exit

_ZNK2cv8FileNodecvlEv.exit:                       ; preds = %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit148, %_ZNK2cv8FileNodecviEv.exit
  %i.db = phi i64 [ %i.da, %_ZNK2cv8FileNodecviEv.exit ], [ %.val.i, %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit148 ] ; 13 uses
  switch i32 %i.aj, label %bb.ao [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 9, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 12, label %bb.ac
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 10, label %bb.af
    i32 11, label %bb.ag
    i32 6, label %bb.ah
    i32 7, label %bb.ai
    i32 8, label %bb.an
  ]

bb.x:                                             ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.dc = call i64 @llvm.smax.i64(i64 %i.db, i64 0)
  %i.dd = call i64 @llvm.umin.i64(i64 %i.dc, i64 255)
  %i.de = trunc nuw i64 %i.dd to i8
  store i8 %i.de, ptr %.082241, align 1, !tbaa !31
  br label %bb.bs

bb.y:                                             ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.df = call i64 @llvm.smax.i64(i64 %i.db, i64 -128)
  %i.dg = call i64 @llvm.smin.i64(i64 %i.df, i64 127)
  %i.dh = trunc nsw i64 %i.dg to i8
  store i8 %i.dh, ptr %.082241, align 1, !tbaa !31
  br label %bb.bs

bb.z:                                             ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.di = icmp ne i64 %i.db, 0
  %i.dj = zext i1 %i.di to i8
  store i8 %i.dj, ptr %.082241, align 1, !tbaa !448
  br label %bb.bs

bb.aa:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.dk = call i64 @llvm.smax.i64(i64 %i.db, i64 0)
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dk, i64 65535)
  %i.dm = trunc nuw i64 %i.dl to i16
  store i16 %i.dm, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.ab:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.dn = call i64 @llvm.smax.i64(i64 %i.db, i64 -32768)
  %i.do = call i64 @llvm.smin.i64(i64 %i.dn, i64 32767)
  %i.dp = trunc nsw i64 %i.do to i16
  store i16 %i.dp, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.ac:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %.sroa.speculated212 = call i64 @llvm.smax.i64(i64 %i.db, i64 0)
  %i.dq = trunc i64 %.sroa.speculated212 to i32
  store i32 %i.dq, ptr %.082241, align 4, !tbaa !38
  br label %bb.bs

bb.ad:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.dr = trunc i64 %i.db to i32
  store i32 %i.dr, ptr %.082241, align 4, !tbaa !38
  br label %bb.bs

bb.ae:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.ds = sitofp i64 %i.db to float
  store float %i.ds, ptr %.082241, align 4, !tbaa !216
  br label %bb.bs

bb.af:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  store i64 %i.db, ptr %.082241, align 8, !tbaa !41
  br label %bb.bs

bb.ag:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  store i64 %i.db, ptr %.082241, align 8, !tbaa !41
  br label %bb.bs

bb.ah:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.dt = sitofp i64 %i.db to double
  store double %i.dt, ptr %.082241, align 8, !tbaa !218
  br label %bb.bs

bb.ai:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.du = sitofp i64 %i.db to float               ; 2 uses
  %i.dv = call float @llvm.fabs.f32(float %i.du)  ; 2 uses
  %i.dw = bitcast float %i.dv to i32              ; 5 uses
  %i.dx = icmp samesign ugt i32 %i.dw, 1199570943
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dy = icmp samesign ugt i32 %i.dw, 2139095040
  %i.dz = select i1 %i.dy, i16 32256, i16 31744
  br label %_ZN2cv6hfloatC2Ef.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ea = icmp samesign ult i32 %i.dw, 947912704
  br i1 %i.ea, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eb = fadd float %i.dv, 5.000000e-01
  %i.ec = bitcast float %i.eb to i32
  %i.ed = trunc i32 %i.ec to i16
  br label %_ZN2cv6hfloatC2Ef.exit

bb.am:                                            ; preds = %bb.ak
  %i.ee = add nuw nsw i32 %i.dw, 134221823
  %i.ef = lshr i32 %i.dw, 13
  %i.eg = and i32 %i.ef, 1
  %i.eh = add nuw nsw i32 %i.ee, %i.eg
  %i.ei = lshr i32 %i.eh, 13
  %i.ej = trunc i32 %i.ei to i16
  br label %_ZN2cv6hfloatC2Ef.exit

_ZN2cv6hfloatC2Ef.exit:                           ; preds = %bb.aj, %bb.al, %bb.am
  %i.ek = phi i16 [ %i.ed, %bb.al ], [ %i.ej, %bb.am ], [ %i.dz, %bb.aj ]
  %i.el = bitcast float %i.du to i32
  %i.em = lshr i32 %i.el, 16
  %i.en = trunc nuw i32 %i.em to i16
  %i.eo = and i16 %i.en, -32768
  %i.ep = or i16 %i.ek, %i.eo
  store i16 %i.ep, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.an:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  %i.eq = sitofp i64 %i.db to float               ; 2 uses
  %i.er = bitcast float %i.eq to i32
  %i.es = call float @llvm.fabs.f32(float %i.eq)
  %i.et = bitcast float %i.es to i32
  %i.eu = icmp samesign ult i32 %i.et, 2139062272
  %i.ev = select i1 %i.eu, i32 32768, i32 0
  %i.ew = add i32 %i.ev, %i.er
  %i.ex = lshr i32 %i.ew, 16
  %i.ey = trunc nuw i32 %i.ex to i16
  store i16 %i.ey, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.ao:                                            ; preds = %_ZNK2cv8FileNodecvlEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm, ptr noundef nonnull @.str.11, i32 noundef 2784) #39
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.as:                                            ; preds = %bb.ap
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %20, align 8, !tbaa !37   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.as
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !31
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.ar
  %.pn103 = phi { ptr, i32 } [ %i.ez, %bb.ar ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.fa, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.ct

_ZNK2cv8FileNode6isRealEv.exit:                   ; preds = %_ZNK2cv8FileNode5isIntEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bp ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !31  ; 2 uses
  %i.fi = and i8 %i.fh, 7
  %i.fj = icmp eq i8 %i.fi, 2
  br i1 %i.fj, label %_ZNK2cv8FileNodecvdEv.exit, label %_ZNK2cv8FileNode6isRealEv.exit.thread

_ZNK2cv8FileNodecvdEv.exit:                       ; preds = %_ZNK2cv8FileNode6isRealEv.exit
  %i.fk = and i8 %i.fh, 32
  %.not12.i125 = icmp eq i8 %i.fk, 0
  %27 = select i1 %.not12.i125, i64 1, i64 5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %27
  %.val13.i126 = load double, ptr %i.fl, align 1  ; 15 uses
  switch i32 %i.aj, label %bb.bj [
    i32 0, label %bb.at
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
    i32 12, label %bb.ax
    i32 4, label %bb.ay
    i32 5, label %bb.az
    i32 10, label %bb.ba
    i32 11, label %bb.bb
    i32 6, label %bb.bc
    i32 7, label %bb.bd
    i32 8, label %bb.bi
  ]

bb.at:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.fm = insertelement <2 x double> poison, double %.val13.i126, i64 0
  %i.fn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fm)
  %i.fo = call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fp = call i32 @llvm.umin.i32(i32 %i.fo, i32 255)
  %i.fq = trunc nuw i32 %i.fp to i8
  store i8 %i.fq, ptr %.082241, align 1, !tbaa !31
  br label %bb.bs

bb.au:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.fr = insertelement <2 x double> poison, double %.val13.i126, i64 0
  %i.fs = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fr)
  %i.ft = call i32 @llvm.smax.i32(i32 %i.fs, i32 -128)
  %i.fu = call i32 @llvm.smin.i32(i32 %i.ft, i32 127)
  %i.fv = trunc nsw i32 %i.fu to i8
  store i8 %i.fv, ptr %.082241, align 1, !tbaa !31
  br label %bb.bs

bb.av:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.fw = insertelement <2 x double> poison, double %.val13.i126, i64 0
  %i.fx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fw)
  %i.fy = call i32 @llvm.smax.i32(i32 %i.fx, i32 0)
  %i.fz = call i32 @llvm.umin.i32(i32 %i.fy, i32 65535)
  %i.ga = trunc nuw i32 %i.fz to i16
  store i16 %i.ga, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.aw:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gb = insertelement <2 x double> poison, double %.val13.i126, i64 0
  %i.gc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gb)
  %i.gd = call i32 @llvm.smax.i32(i32 %i.gc, i32 -32768)
  %i.ge = call i32 @llvm.smin.i32(i32 %i.gd, i32 32767)
  %i.gf = trunc nsw i32 %i.ge to i16
  store i16 %i.gf, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.ax:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gg = fcmp olt double %.val13.i126, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.gg, double 0.000000e+00, double %.val13.i126
  %i.gh = call double @llvm.round.f64(double %.sroa.speculated.i)
  %i.gi = fptoui double %i.gh to i32
  store i32 %i.gi, ptr %.082241, align 4, !tbaa !38
  br label %bb.bs

bb.ay:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gj = insertelement <2 x double> poison, double %.val13.i126, i64 0
  %i.gk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gj)
  store i32 %i.gk, ptr %.082241, align 4, !tbaa !38
  br label %bb.bs

bb.az:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gl = fptrunc double %.val13.i126 to float
  store float %i.gl, ptr %.082241, align 4, !tbaa !216
  br label %bb.bs

bb.ba:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gm = fcmp olt double %.val13.i126, 0.000000e+00
  %.sroa.speculated203 = select i1 %i.gm, double 0.000000e+00, double %.val13.i126
  %i.gn = call double @llvm.round.f64(double %.sroa.speculated203)
  %i.go = fptoui double %i.gn to i64
  store i64 %i.go, ptr %.082241, align 8, !tbaa !41
  br label %bb.bs

bb.bb:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gp = fcmp olt double %.val13.i126, 0.000000e+00
  %.sroa.speculated = select i1 %i.gp, double 0.000000e+00, double %.val13.i126
  %i.gq = call double @llvm.round.f64(double %.sroa.speculated)
  %i.gr = fptosi double %i.gq to i64
  store i64 %i.gr, ptr %.082241, align 8, !tbaa !41
  br label %bb.bs

bb.bc:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  store double %.val13.i126, ptr %.082241, align 8, !tbaa !218
  br label %bb.bs

bb.bd:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.gs = fptrunc double %.val13.i126 to float    ; 2 uses
  %i.gt = call float @llvm.fabs.f32(float %i.gs)  ; 2 uses
  %i.gu = bitcast float %i.gt to i32              ; 5 uses
  %i.gv = icmp samesign ugt i32 %i.gu, 1199570943
  br i1 %i.gv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gw = icmp samesign ugt i32 %i.gu, 2139095040
  %i.gx = select i1 %i.gw, i16 32256, i16 31744
  br label %_ZN2cv6hfloatC2Ef.exit131

bb.bf:                                            ; preds = %bb.bd
  %i.gy = icmp samesign ult i32 %i.gu, 947912704
  br i1 %i.gy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gz = fadd float %i.gt, 5.000000e-01
  %i.ha = bitcast float %i.gz to i32
  %i.hb = trunc i32 %i.ha to i16
  br label %_ZN2cv6hfloatC2Ef.exit131

bb.bh:                                            ; preds = %bb.bf
  %i.hc = add nuw nsw i32 %i.gu, 134221823
  %i.hd = lshr i32 %i.gu, 13
  %i.he = and i32 %i.hd, 1
  %i.hf = add nuw nsw i32 %i.hc, %i.he
  %i.hg = lshr i32 %i.hf, 13
  %i.hh = trunc i32 %i.hg to i16
  br label %_ZN2cv6hfloatC2Ef.exit131

_ZN2cv6hfloatC2Ef.exit131:                        ; preds = %bb.be, %bb.bg, %bb.bh
  %i.hi = phi i16 [ %i.hb, %bb.bg ], [ %i.hh, %bb.bh ], [ %i.gx, %bb.be ]
  %i.hj = bitcast float %i.gs to i32
  %i.hk = lshr i32 %i.hj, 16
  %i.hl = trunc nuw i32 %i.hk to i16
  %i.hm = and i16 %i.hl, -32768
  %i.hn = or i16 %i.hi, %i.hm
  store i16 %i.hn, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.bi:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  %i.ho = fptrunc double %.val13.i126 to float    ; 2 uses
  %i.hp = bitcast float %i.ho to i32
  %i.hq = call float @llvm.fabs.f32(float %i.ho)
  %i.hr = bitcast float %i.hq to i32
  %i.hs = icmp samesign ult i32 %i.hr, 2139062272
  %i.ht = select i1 %i.hs, i32 32768, i32 0
  %i.hu = add i32 %i.ht, %i.hp
  %i.hv = lshr i32 %i.hu, 16
  %i.hw = trunc nuw i32 %i.hv to i16
  store i16 %i.hw, ptr %.082241, align 2, !tbaa !215
  br label %bb.bs

bb.bj:                                            ; preds = %_ZNK2cv8FileNodecvdEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm, ptr noundef nonnull @.str.11, i32 noundef 2842) #39
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.bn:                                            ; preds = %bb.bk
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %22, align 8, !tbaa !37   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bn
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !31
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.bm
  %.pn101 = phi { ptr, i32 } [ %i.hx, %bb.bm ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.hy, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %bb.ct

_ZNK2cv8FileNode6isRealEv.exit.thread:            ; preds = %_ZNK2cv11FileStorage4Impl10getNodePtrEmm.exit, %bb.k, %_ZNK2cv8FileNode6isRealEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.119, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %_ZNK2cv8FileNode6isRealEv.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv16FileNodeIterator7readRawERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvm, ptr noundef nonnull @.str.11, i32 noundef 2846) #39
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %_ZNK2cv8FileNode6isRealEv.exit.thread
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
end_hunk_1
begin_hunk_2_@_ZN2cv16FileNodeIteratorC2ERKNS_8FileNodeEb:bb.a
bb.m:                                             ; preds = %bb.l, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv16FileNodeIteratorC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #27 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !205
  store ptr %i.a, ptr %0, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !41
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIteratoraSERKS0_(ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !205
  store ptr %i.a, ptr %0, align 8, !tbaa !205
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !41
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !41
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8, !tbaa !200
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16FileNodeIteratorppEi(ptr dead_on_unwind noalias writable sret(%"class.cv::FileNodeIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %3 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  tail call void @_ZN2cv16FileNodeIteratorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !201
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %i.e, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %_ZN2cv16FileNodeIteratorppEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !202
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !203
  call void @_ZN2cv8FileNodeC1EPNS_11FileStorage4ImplEmm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef %i.k)
  %i.l = call noundef i64 @_ZNK2cv8FileNode7rawSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.m = load i64, ptr %i.j, align 8, !tbaa !203
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  store i64 %i.n, ptr %i.j, align 8, !tbaa !203
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !204
  %.not2.i = icmp ult i64 %i.n, %i.p
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !205
  call void @_ZNK2cv11FileStorage4Impl16normalizeNodeOfsERmS2_(ptr noundef nonnull align 8 dereferenceable(700) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.r = load ptr, ptr %1, align 8, !tbaa !205
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 536
  %i.t = load i64, ptr %i.h, align 8, !tbaa !202
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !136
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41
  store i64 %i.w, ptr %i.o, align 8, !tbaa !204
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZN2cv16FileNodeIteratorppEv.exit

_ZN2cv16FileNodeIteratorppEv.exit:                ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK2cv16FileNodeIterator7equalToERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = load i128, ptr %0, align 8
  %i.b = load i128, ptr %1, align 8
  %i.c = xor i128 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.d, align 8
  %i.g = load i64, ptr %i.e, align 8
  %i.h = zext i64 %i.f to i128
  %i.i = zext i64 %i.g to i128
  %i.j = xor i128 %i.h, %i.i
  %i.k = or i128 %i.c, %i.j
  %i.l = icmp ne i128 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i128, ptr %i.o, align 1
  %i.r = load i128, ptr %i.p, align 1
  %i.s = icmp ne i128 %i.q, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi i1 [ %i.u, %bb.b ], [ false, %bb.a ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK2cv16FileNodeIterator9remainingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !200
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN2cveqERKNS_16FileNodeIteratorES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = load i128, ptr %0, align 8
  %i.b = load i128, ptr %1, align 8
  %i.c = xor i128 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.d, align 8
  %i.g = load i64, ptr %i.e, align 8
  %i.h = zext i64 %i.f to i128
  %i.i = zext i64 %i.g to i128
  %i.j = xor i128 %i.h, %i.i
  %i.k = or i128 %i.c, %i.j
  %i.l = icmp ne i128 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i128, ptr %i.o, align 1
  %i.r = load i128, ptr %i.p, align 1
  %i.s = icmp ne i128 %i.q, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br label %_ZNK2cv16FileNodeIterator7equalToERKS0_.exit

_ZNK2cv16FileNodeIterator7equalToERKS0_.exit:     ; preds = %bb.a, %bb.b
  %i.v = phi i1 [ %i.u, %bb.b ], [ false, %bb.a ]
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4readERKNS_8FileNodeERii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #21 {
bb.a:
  store i32 %2, ptr %1, align 4, !tbaa !38
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK2cv8FileNodecviEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.i, 32
  %.not12.i = icmp eq i32 %i.k, 0
  %3 = select i1 %.not12.i, i64 1, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %3 ; 2 uses
  switch i32 %i.j, label %_ZNK2cv8FileNodecviEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %i.l, align 1
  br label %_ZNK2cv8FileNodecviEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.l, align 1
  %i.m = insertelement <2 x double> poison, double %.val13.i, i64 0
  %i.n = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.m)
  br label %_ZNK2cv8FileNodecviEv.exit

_ZNK2cv8FileNodecviEv.exit:                       ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi i32 [ 0, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %.val.i, %bb.c ], [ %i.n, %bb.d ], [ 2147483647, %bb.b ]
  store i32 %.1.i, ptr %1, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8FileNodecviEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4readERKNS_8FileNodeERll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, i64 noundef %2) local_unnamed_addr #21 {
bb.a:
  store i64 %2, ptr %1, align 8, !tbaa !41
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK2cv8FileNodecvlEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.i, 32
  %.not12.i = icmp eq i32 %i.k, 0
  %3 = select i1 %.not12.i, i64 1, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %3 ; 2 uses
  switch i32 %i.j, label %_ZNK2cv8FileNodecvlEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.l, align 1
  br label %_ZNK2cv8FileNodecvlEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.l, align 1
  %i.m = insertelement <2 x double> poison, double %.val13.i, i64 0
  %i.n = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.m)
  %i.o = sext i32 %i.n to i64
  br label %_ZNK2cv8FileNodecvlEv.exit

_ZNK2cv8FileNodecvlEv.exit:                       ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi i64 [ 0, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %.val.i, %bb.c ], [ %i.o, %bb.d ], [ 2147483647, %bb.b ]
  store i64 %.1.i, ptr %1, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8FileNodecvlEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4readERKNS_8FileNodeERdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, double noundef %2) local_unnamed_addr #9 {
bb.a:
  store double %2, ptr %1, align 8, !tbaa !218
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK2cv8FileNodecvdEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.i, 32
  %.not12.i = icmp eq i32 %i.k, 0
  %3 = select i1 %.not12.i, i64 1, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %3 ; 2 uses
  switch i32 %i.j, label %_ZNK2cv8FileNodecvdEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.l, align 1
  %i.m = sitofp i64 %.val.i to double
  br label %_ZNK2cv8FileNodecvdEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.l, align 1
  br label %_ZNK2cv8FileNodecvdEv.exit

_ZNK2cv8FileNodecvdEv.exit:                       ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi double [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %i.m, %bb.c ], [ %.val13.i, %bb.d ], [ f0x7FEFFFFFFFFFFFFF, %bb.b ]
  store double %.1.i, ptr %1, align 8, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8FileNodecvdEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4readERKNS_8FileNodeERff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, float noundef %2) local_unnamed_addr #9 {
bb.a:
  store float %2, ptr %1, align 4, !tbaa !216
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %_ZNK2cv8FileNode3ptrEv.exit.i

_ZNK2cv8FileNode3ptrEv.exit.i:                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.a, i64 noundef %i.d, i64 noundef %i.f) ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNK2cv8FileNodecvfEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !31
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = and i32 %i.i, 7
  %i.k = and i32 %i.i, 32
  %.not12.i = icmp eq i32 %i.k, 0
  %3 = select i1 %.not12.i, i64 1, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %3 ; 2 uses
  switch i32 %i.j, label %_ZNK2cv8FileNodecvfEv.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.l, align 1
  %i.m = sitofp i64 %.val.i to float
  br label %_ZNK2cv8FileNodecvfEv.exit

bb.d:                                             ; preds = %bb.b
  %.val13.i = load double, ptr %i.l, align 1
  %i.n = fptrunc double %.val13.i to float
  br label %_ZNK2cv8FileNodecvfEv.exit

_ZNK2cv8FileNodecvfEv.exit:                       ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi float [ 0.000000e+00, %_ZNK2cv8FileNode3ptrEv.exit.i ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ f0x7F7FFFFF, %bb.b ]
  store float %.1.i, ptr %1, align 4, !tbaa !216
  br label %bb.e

bb.e:                                             ; preds = %_ZNK2cv8FileNodecvfEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4readERKNS_8FileNodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %_ZNK2cv8FileNode3ptrEv.exit.i.i

_ZNK2cv8FileNode3ptrEv.exit.i.i:                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !197, !noalias !455
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !198, !noalias !455
  %i.h = tail call noundef ptr @_ZNK2cv11FileStorage4Impl10getNodePtrEmm(ptr noundef nonnull align 8 dereferenceable(700) %i.b, i64 noundef %i.e, i64 noundef %i.g), !noalias !455 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31, !noalias !455
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 7
  %.not9.i.i = icmp eq i32 %i.k, 3
  br i1 %.not9.i.i, label %bb.c, label %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i

_ZNK2cv8FileNode3ptrEv.exit.thread.i.i:           ; preds = %bb.b, %_ZNK2cv8FileNode3ptrEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !40, !alias.scope !455
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !42, !alias.scope !455
  store i8 0, ptr %i.l, align 8, !tbaa !31, !alias.scope !455
  br label %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 32
  %.not10.i.i = icmp eq i32 %i.n, 0
  %4 = select i1 %.not10.i.i, i64 1, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %4 ; 2 uses
  %.val.i.i = load i32, ptr %i.o, align 1, !noalias !455
  %i.p = zext i32 %.val.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = add nsw i64 %i.p, -1                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !40, !alias.scope !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !455
  store i64 %i.r, ptr %i.a, align 8, !tbaa !41, !noalias !455
  %i.t = icmp ugt i64 %i.r, 15
  br i1 %i.t, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !37, !alias.scope !455
  %i.v = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !455
  store i64 %i.v, ptr %i.s, align 8, !tbaa !31, !alias.scope !455
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !31
  store i8 %i.x, ptr %i.w, align 1, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !455 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !42, !alias.scope !455
  %i.aa = load ptr, ptr %3, align 8, !tbaa !37, !alias.scope !455
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !455
  br label %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %_ZNK2cv8FileNode3ptrEv.exit.thread.i.i, %bb.f
  %i.ac = load ptr, ptr %1, align 8, !tbaa !37    ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  %i.af = load ptr, ptr %3, align 8, !tbaa !37    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ah = icmp eq ptr %i.af, %i.ag                ; 2 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.ah, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK2cv8FileNodecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  switch i64 %i.aj, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.af, align 1, !tbaa !31
  store i8 %i.al, ptr %i.ac, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.af, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !42
  %i.ao = load ptr, ptr %1, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.af, ptr %1, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !tbaa !31
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !31
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.af, ptr %1, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !31
  store <2 x i64> %i.aw, ptr %i.av, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !37
  store i64 %i.at, ptr %i.ag, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ag, ptr %3, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ax = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ac, %bb.j ], [ %i.ag, %bb.k ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !42
  store i8 0, ptr %i.ax, align 1, !tbaa !31
  %i.az = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN2cv15FileStorage_APID0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #29 align 2 {
bb.a:
  tail call void @llvm.trap() #41
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #30

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8internal18WriteStructContextC2ERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSB_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr %1, ptr %0, align 8, !tbaa !235
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = load ptr, ptr %2, align 8
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %.not6.i = icmp eq i64 %i.g, 0
  %i.h = load ptr, ptr %4, align 8
  %i.i = select i1 %.not6.i, ptr null, ptr %i.h
  tail call void @_ZN2cv11FileStorage4Impl16startWriteStructEPKciS3_(ptr noundef nonnull align 8 dereferenceable(700) %i.b, ptr noundef %spec.select.i, i32 noundef %3, ptr noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.n, align 8, !tbaa !42
  store i8 0, ptr %i.m, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !37
  store i64 0, ptr %i.k, align 8, !tbaa !42
  store i8 0, ptr %.pre.i.i, align 1, !tbaa !31
  %i.o = load ptr, ptr %5, align 8, !tbaa !37     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN2cv11FileStorage16startWriteStructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.q = load i64, ptr %i.j, align 8, !tbaa !31
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #40
  br label %_ZN2cv11FileStorage16startWriteStructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_.exit

_ZN2cv11FileStorage16startWriteStructERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.s = and i32 %3, 7
  %i.t = icmp eq i32 %i.s, 4
  %spec.select8.i = select i1 %i.t, i32 1, i32 6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %spec.select8.i, ptr %i.u, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv8internal18WriteStructContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
