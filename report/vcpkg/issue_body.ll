Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/issue_body?download=true
inline.NumInlined: 301
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_2v:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @.str.8, ptr %i.ap, align 8, !tbaa !30, !alias.scope !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %10)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ax

bb.h:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #19
  %.08 = extractvalue { ptr, i32 } %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.at = call ptr @__cxa_begin_catch(ptr %.08) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.i unwind label %bb.au

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.av

bb.j:                                             ; preds = %bb.i, %bb.e
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.k unwind label %bb.av

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 58
  %i.av = load i8, ptr %i.au, align 2, !tbaa !38, !range !39, !noundef !40
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.be = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !17
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bi, ptr %11, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !16
  store i8 0, ptr %i.bi, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZN5vcpkg4PathC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull @.str.20)
          to label %.noexc46 unwind label %.body

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !13
  %i.bm = load ptr, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, align 8, !tbaa !18 ; 2 uses
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, i64 8), align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.bn, ptr %i.d, align 8, !tbaa !31
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc46
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.p   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !18
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.bq, ptr %i.bl, align 8, !tbaa !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %.noexc46
  %i.br = phi ptr [ %i.bp, %.noexc.i ], [ %i.bl, %.noexc46 ] ; 2 uses
  switch i64 %i.bn, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.q
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !17
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !17
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bm, i64 %i.bn, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %.noexc.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !17
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #20
  br label %.body.thread

bb.q:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !16
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 6 uses
  invoke void @_ZN5vcpkg4PathC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, ptr noundef nonnull @.str.9)
          to label %.noexc53 unwind label %.body.thread329

.noexc53:                                         ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 3 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !13
  %i.cg = load ptr, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, align 8, !tbaa !18 ; 2 uses
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, i64 8), align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.ch, ptr %i.c, align 8, !tbaa !31
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i.i48, label %._crit_edge.i.i.i47

.noexc.i.i48:                                     ; preds = %.noexc53
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i52 unwind label %bb.t ; 2 uses

.noexc.i52:                                       ; preds = %.noexc.i.i48
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !18
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.ck, ptr %i.cf, align 8, !tbaa !17
  br label %._crit_edge.i.i.i47

._crit_edge.i.i.i47:                              ; preds = %.noexc.i52, %.noexc53
  %i.cl = phi ptr [ %i.cj, %.noexc.i52 ], [ %i.cf, %.noexc53 ] ; 2 uses
  switch i64 %i.ch, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.u
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i47
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !17
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !17
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %.noexc.i.i48
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !18 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %.preheader.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49: ; preds = %bb.t
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !17
  %31 = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %31) #20
  br label %.preheader.preheader

bb.u:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i47
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 104
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !16
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 6 uses
  invoke void @_ZN5vcpkg4PathC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull @.str.12)
          to label %.noexc63 unwind label %.body.thread329

.noexc63:                                         ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 160 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 3 uses
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !13
  %i.cz = load ptr, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, align 8, !tbaa !18 ; 2 uses
  %i.da = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, i64 8), align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.da, ptr %i.b, align 8, !tbaa !31
  %i.db = icmp ugt i64 %i.da, 15
  br i1 %i.db, label %.noexc.i.i58, label %._crit_edge.i.i.i57

.noexc.i.i58:                                     ; preds = %.noexc63
  %i.dc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i62 unwind label %bb.x ; 2 uses

.noexc.i62:                                       ; preds = %.noexc.i.i58
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !18
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !17
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc.i62, %.noexc63
  %i.de = phi ptr [ %i.dc, %.noexc.i62 ], [ %i.cy, %.noexc63 ] ; 2 uses
  switch i64 %i.da, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.y
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i57
  %i.df = load i8, ptr %i.cz, align 1, !tbaa !17
  store i8 %i.df, ptr %i.de, align 1, !tbaa !17
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr align 1 %i.cz, i64 %i.da, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %.noexc.i.i58
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !18 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.preheader.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59: ; preds = %bb.x
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !17
  %32 = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %32) #20
  br label %.preheader.preheader

bb.y:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i57
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 168
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !16
  %i.dn = load ptr, ptr %i.cx, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.dp = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #23
          to label %.noexc187 unwind label %bb.ae ; 8 uses

.noexc187:                                        ; preds = %bb.y
  store ptr %i.dp, ptr %12, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !50
  invoke void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.z

_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc187
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  invoke void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.z

_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 128 ; 2 uses
  invoke void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, ptr noundef nonnull align 8 dereferenceable(64) %i.cw)
          to label %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.z

_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !48
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !18 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.z:                                             ; preds = %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc187
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.dp, %.noexc187 ], [ %i.ds, %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.dt, %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ]
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.ec) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_SB_(ptr noundef nonnull %i.dp, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_rethrow() #22
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body188 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #21
  unreachable

bb.ad:                                            ; preds = %bb.aa
  unreachable

bb.ae:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body188

.body188:                                         ; preds = %bb.ab, %bb.ae
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.eh, %bb.ae ], [ %i.ee, %bb.ab ]
  %i.ei = load ptr, ptr %12, align 8, !tbaa !47   ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i67, label %.body68, label %bb.af

bb.af:                                            ; preds = %.body188
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !50
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.en) #20
  br label %.body68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.eo = load i64, ptr %i.dz, align 8, !tbaa !17
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ep) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZSt10_ConstructISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eq = load ptr, ptr %i.dw, align 8, !tbaa !18 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.et = load i64, ptr %i.er, align 8, !tbaa !17
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #20
  br label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !18 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !17
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #20
  br label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1

_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.1
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !18 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2: ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.fn = load ptr, ptr %13, align 8, !tbaa !18   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #20
  br label %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2

_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70.2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  invoke void @_ZN5vcpkg11append_logsEOSt6vectorISt4pairINS_4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 500, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ag unwind label %bb.az

bb.ag:                                            ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr @.str.10, ptr %15, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 5, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr @.str.2, ptr %16, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 65, ptr %i.ft, align 8, !tbaa !21
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.21) #19
  %i.fu = load ptr, ptr %17, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fw = load i64, ptr %i.fv, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %i.fu, i64 %i.fw, i32 noundef 2)
          to label %bb.ah unwind label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.fx = load ptr, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, align 8, !tbaa !18, !noalias !87
  %i.fy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_112file_contentB5cxx11E, i64 8), align 8, !tbaa !16, !noalias !87 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.fz, ptr %21, align 8, !tbaa !13, !alias.scope !88
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 0, ptr %i.ga, align 8, !tbaa !16, !alias.scope !88
  store i8 0, ptr %i.fz, align 8, !tbaa !17, !alias.scope !88
  %i.gb = add i64 %i.fy, 38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.gb)
          to label %bb.ai unwind label %bb.aj
end_hunk_0
begin_hunk_1_@_ZL19C_A_T_C_H_T_E_S_T_2v:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.gy, i1 false)
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.noexc79
  store ptr %i.gs, ptr %20, align 8, !tbaa !18, !alias.scope !89
  %i.gz = load i64, ptr %i.gt, align 8, !tbaa !17
  store i64 %i.gz, ptr %i.gr, align 8, !tbaa !17, !alias.scope !89
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.al
  %i.ha = phi i64 [ %i.gw, %bb.al ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 %i.ha, ptr %i.hc, align 8, !tbaa !16, !alias.scope !89
  store ptr %i.gt, ptr %i.gq, align 8, !tbaa !18
  store i64 0, ptr %i.hb, align 8, !tbaa !16
  store i8 0, ptr %i.gt, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !16, !noalias !90
  %i.he = add i64 %i.hd, -4611686018427387728
  %i.hf = icmp ult i64 %i.he, 176
  br i1 %i.hf, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc84 unwind label %bb.bc, !noalias !90

.noexc84:                                         ; preds = %bb.an
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80: ; preds = %bb.am
  %i.hg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.18, i64 noundef 176)
          to label %.noexc85 unwind label %bb.bc, !noalias !90 ; 6 uses

.noexc85:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.hh, ptr %19, align 8, !tbaa !13, !alias.scope !90
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !18 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 5 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

bb.ao:                                            ; preds = %.noexc85
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !16 ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.hn)
  %i.ho = add nuw nsw i64 %i.hm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hh, ptr noundef nonnull align 8 dereferenceable(1) %i.hj, i64 %i.ho, i1 false)
  br label %bb.ap

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.noexc85
  store ptr %i.hi, ptr %19, align 8, !tbaa !18, !alias.scope !90
  %i.hp = load i64, ptr %i.hj, align 8, !tbaa !17
  store i64 %i.hp, ptr %i.hh, align 8, !tbaa !17, !alias.scope !90
  %.phi.trans.insert.i82 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.pre.i83 = load i64, ptr %.phi.trans.insert.i82, align 8, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81, %bb.ao
  %i.hq = phi i64 [ %i.hm, %bb.ao ], [ %.pre.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.hq, ptr %i.hs, align 8, !tbaa !16, !alias.scope !90
  store ptr %i.hj, ptr %i.hg, align 8, !tbaa !18
  store i64 0, ptr %i.hr, align 8, !tbaa !16
  store i8 0, ptr %i.hj, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ht = load i64, ptr %i.bj, align 8, !tbaa !16, !noalias !91 ; 3 uses
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !16, !noalias !91
  %i.hv = icmp eq i64 %i.ht, %i.hu
  br i1 %i.hv, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hw = icmp eq i64 %i.ht, 0
  br i1 %i.hw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hx = load ptr, ptr %19, align 8, !tbaa !18, !noalias !91
  %i.hy = load ptr, ptr %11, align 8, !tbaa !18, !noalias !91
  %bcmp.i.i.i88 = call i32 @bcmp(ptr %i.hy, ptr %i.hx, i64 %i.ht), !noalias !91
  %i.hz = icmp eq i32 %bcmp.i.i.i88, 0
  %i.ia = zext i1 %i.hz to i8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ib = phi i8 [ 0, %bb.ap ], [ %i.ia, %bb.ar ], [ 1, %bb.aq ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.17) #19, !noalias !91
  %i.ic = load ptr, ptr %1, align 8, !noalias !91
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !91
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 1, ptr %i.if, align 8, !tbaa !24, !alias.scope !91
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 9
  store i8 %i.ib, ptr %i.ig, align 1, !tbaa !25, !alias.scope !91
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE, i64 16), ptr %18, align 8, !tbaa !27, !alias.scope !91
  %i.ih = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %11, ptr %i.ih, align 8, !tbaa !29, !alias.scope !91
  %i.ii = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.ic, ptr %i.ii, align 8, !tbaa !30, !alias.scope !91
  %.sroa.2.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.ie, ptr %.sroa.2.0..sroa_idx.i.i87, align 8, !tbaa !31, !alias.scope !91
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr %19, ptr %i.ij, align 8, !tbaa !29, !alias.scope !91
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(10) %18)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %bb.as
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #19
  %i.ik = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.hh
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.at
  %i.im = load i64, ptr %i.hh, align 8, !tbaa !17
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.io = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.gr
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.iq = load i64, ptr %i.gr, align 8, !tbaa !17
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.is = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.fz
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.iu = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bf

bb.au:                                            ; preds = %bb.h
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.db

bb.av:                                            ; preds = %bb.j, %bb.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.pn24 = phi { ptr, i32 } [ %i.ix, %bb.av ], [ %i.iw, %bb.au ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.g
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.aw ], [ %i.ar, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.f
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.ax ], [ %i.aq, %bb.f ]
  %i.iy = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.e
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ay
  %i.ja = load i64, ptr %i.e, align 8, !tbaa !17
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.da

.body.thread329:                                  ; preds = %bb.u, %bb.q
  %.023.ph = phi ptr [ %i.cd, %bb.q ], [ %i.cw, %bb.u ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.preheader.preheader:                             ; preds = %bb.x, %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59, %.body.thread329
  %eh.lpad-body327 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread329 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49 ], [ %i.cn, %bb.t ], [ %i.dg, %bb.x ]
  %.023.lpad-body326 = phi ptr [ %.023.ph, %.body.thread329 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59 ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i49 ], [ %i.cd, %bb.t ], [ %i.cw, %bb.x ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.jc = phi ptr [ %i.jd, %.preheader ], [ %.023.lpad-body326, %.preheader.preheader ]
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -64 ; 3 uses
  call void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jd) #19
  %i.je = icmp eq ptr %i.jd, %13
  br i1 %i.je, label %.body.thread, label %.preheader

.body68:                                          ; preds = %.body188, %bb.af
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 128
  call void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jf) #19
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jg) #19
  call void @_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #19
  br label %.body.thread

.body.thread:                                     ; preds = %.preheader, %bb.p, %.body, %.body68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn28 = phi { ptr, i32 } [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body189, %.body68 ], [ %i.bt, %bb.p ], [ %eh.lpad-body327, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ci

bb.az:                                            ; preds = %_ZNSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ba:                                            ; preds = %bb.ag
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.cg

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ak
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i80, %bb.an
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.bd:                                            ; preds = %bb.as
  %i.jl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #19
  %i.jm = load ptr, ptr %19, align 8, !tbaa !18   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.hh
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.bd
  %i.jo = load i64, ptr %i.hh, align 8, !tbaa !17
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.bc
  %.pn30.pn = phi { ptr, i32 } [ %i.jk, %bb.bc ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.jl, %bb.bd ] ; 2 uses
  %i.jq = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.gr
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.js = load i64, ptr %i.gr, align 8, !tbaa !17
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.bb
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.bb ], [ %.pn30.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 2 uses
  %i.ju = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.fz
  br i1 %i.jv, label %.body75, label %.body75.sink.split

.body75.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.aj
  %.sink.a = phi ptr [ %i.gl, %bb.aj ], [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  %.pn30.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gk, %bb.aj ], [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  %i.jw = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %.sink.a, i64 noundef %i.jx) #20
  br label %.body75

.body75:                                          ; preds = %.body75.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.aj
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.aj ], [ %.pn30.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn30.pn.pn.pn.ph, %.body75.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %.9 = extractvalue { ptr, i32 } %.pn30.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.jy = call ptr @__cxa_begin_catch(ptr %.9) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %bb.be unwind label %bb.cd

bb.be:                                            ; preds = %.body75
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.ce

bb.bf:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %bb.bg unwind label %bb.ce

bb.bg:                                            ; preds = %bb.bf
  %i.jz = getelementptr inbounds nuw i8, ptr %14, i64 58
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !38, !range !39, !noundef !40
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %_ZN5Catch16AssertionHandlerD2Ev.exit110, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kc = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !27
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 112
  %i.kg = load ptr, ptr %i.kf, align 8
  invoke void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit110 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit110:          ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.kj = load ptr, ptr %12, align 8, !tbaa !47   ; 3 uses
  %i.kk = load ptr, ptr %i.dv, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i111 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not4.i.i.i111, label %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i121, label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit110, %_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117
  %.05.i.i.i113 = phi ptr [ %i.kw, %_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117 ], [ %i.kj, %_ZN5Catch16AssertionHandlerD2Ev.exit110 ] ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 32
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !18 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 48 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i114: ; preds = %.lr.ph.i.i.i112
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !17
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i115: ; preds = %.lr.ph.i.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i114
  %i.kr = load ptr, ptr %.05.i.i.i113, align 8, !tbaa !18 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i115
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !17
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #20
  br label %_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117

_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116
  %i.kw = getelementptr inbounds nuw i8, ptr %.05.i.i.i113, i64 64 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.kw, %i.kk
  br i1 %.not.i.i.i118, label %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i119, label %.lr.ph.i.i.i112, !llvm.loop !0

_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i119: ; preds = %_ZSt8_DestroyISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i117
  %.pr.i120 = load ptr, ptr %12, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i121

_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i121: ; preds = %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i119, %_ZN5Catch16AssertionHandlerD2Ev.exit110
  %i.kx = phi ptr [ %.pr.i120, %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i119 ], [ %i.kj, %_ZN5Catch16AssertionHandlerD2Ev.exit110 ] ; 3 uses
  %.not.i.i1.i122 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i1.i122, label %_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit126, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i121
  %i.ky = load ptr, ptr %i.dr, align 8, !tbaa !50
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #20
  br label %_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit126

_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit126: ; preds = %_ZSt8_DestroyIPSt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_EvT_SB_RSaIT0_E.exit.i121, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.lc = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.bi
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit126
  %i.le = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt6vectorISt4pairIN5vcpkg4PathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_EED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.lg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.lg, ptr %22, align 8, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 0, ptr %i.lh, align 8, !tbaa !16
  store i8 0, ptr %i.lg, align 8, !tbaa !17
end_hunk_1
